# Issue Report Supabase V4

Fixes:
- Removed the misleading Open pill from the issue list.
- Entire issue card opens a detail page.
- Four independent photo capture rows remain.
- iPhone images are converted client-side to JPEG before upload (important for HEIC camera photos).
- Issue thumbnails and detail photos use signed private Supabase URLs.
- PDF export now loads private photos and places up to four images in a 2x2 grid.
- Delete remains available on the overview and detail page.
- Locations remain unlimited.

Deploy:
1. Extract ZIP.
2. Replace index.html, manifest.json, sw.js, icon.svg and README.md in GitHub.
3. Commit to main.
4. Open the site once with ?v=4 if Safari still shows the old cached version.
