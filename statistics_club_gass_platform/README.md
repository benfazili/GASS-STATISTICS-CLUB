# Statistics Club GASS Digital Platform

## Run it
1. Extract the ZIP.
2. Serve the folder with a local static HTTP server and open its URL in a modern browser. Opening `index.html` directly with `file://` may prevent video playback.
3. Register a normal user account using Sign Up.
4. Demo administrator:
   - Email: `admin@gass.local`
   - Password: `GASSdemo2026!`

## Included
- Dark, animated homepage with an organized archive of 24 club photos and 2 videos.
- Local sign-up, sign-in, session persistence and local password update.
- User dashboard, profile and settings.
- Folder creation, editing, search, visibility, school and optional owner details.
- Student records with optional personal details, photograph and attachments.
- Student and folder detail views and CSV export.
- Admin member controls, folder statistics and folder opening/export.
- Content Studio for local photo/video uploads.

## Important limitations
This is a local browser prototype. Accounts, records and media are stored in the browser's local storage; they do not sync across devices and the demo admin account is not secure. Do not use the bundled admin credentials or store real student personal information until a production backend is configured.

For production, connect Supabase (or another backend) for:
- Real authentication and server-managed admin roles.
- Database persistence shared across devices.
- Private file storage and access policies.
- Row Level Security, audit logs, backups and secure exports.
- File size/type limits and malware scanning.

Replace local authentication and storage before public deployment. The included Supabase schema is only a starting outline and still requires reviewed Row Level Security policies, storage policies and server-managed administrator roles.
