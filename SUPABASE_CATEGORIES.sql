-- ============================================================
-- ISSUE REPORT APP - CATEGORIES V1
-- Run once in Supabase SQL Editor
-- ============================================================

create table if not exists public.categories (
  id uuid primary key default gen_random_uuid(),
  project_id uuid not null references public.projects(id) on delete cascade,
  name text not null,
  sort_order integer not null default 0,
  active boolean not null default true,
  created_at timestamptz not null default now(),
  unique(project_id, name)
);

alter table public.categories enable row level security;

drop policy if exists "members can view categories" on public.categories;
create policy "members can view categories"
on public.categories
for select
to authenticated
using (public.is_project_member(project_id));

drop policy if exists "admins can create categories" on public.categories;
create policy "admins can create categories"
on public.categories
for insert
to authenticated
with check (public.is_project_admin(project_id));

drop policy if exists "admins can update categories" on public.categories;
create policy "admins can update categories"
on public.categories
for update
to authenticated
using (public.is_project_admin(project_id))
with check (public.is_project_admin(project_id));

drop policy if exists "admins can delete categories" on public.categories;
create policy "admins can delete categories"
on public.categories
for delete
to authenticated
using (public.is_project_admin(project_id));

alter table public.issues
add column if not exists category_id uuid
references public.categories(id) on delete set null;

create index if not exists idx_issues_category_id on public.issues(category_id);
create index if not exists idx_categories_project_id on public.categories(project_id);
