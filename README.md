# Issue Report Supabase V2

Replace the existing GitHub Pages app files with these files:

- index.html
- manifest.json
- sw.js
- icon.svg

Then commit to `main`. GitHub Pages will redeploy automatically.

This version includes:
- Supabase email/password login
- private shared projects through the RLS policies already created
- predefined locations
- up to 4 photos per issue
- automatic issue numbering
- PDF export

The Supabase publishable key is intentionally safe for frontend use.
Never add a service-role or secret key to the repository.
