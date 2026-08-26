# Issue Report V9 PWA Fix

This build fixes the iPhone Home Screen launch target.

Important changes:
- PWA start_url is explicitly `./?v=9pwa`
- PWA id is also versioned
- Service worker uses network-first navigation
- Old app-shell caches are deleted during activation
- Existing V9 authentication/session logic is unchanged

Deploy ALL files from this package to GitHub and commit.

Then on iPhone:
1. Delete the old Issue Report Home Screen icon.
2. Open `https://philipmedler057.github.io/issue-report/?v=9pwa` in Safari.
3. Confirm V9 works there.
4. Share → Add to Home Screen.
5. Open the NEW icon.

Note: iOS may treat the installed PWA as its own app context. If it does not inherit the Safari Supabase session, you may need to sign in once from the installed app. After that Supabase should persist the session there.
