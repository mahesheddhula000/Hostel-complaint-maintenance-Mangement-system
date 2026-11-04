# Hostel Complaint & Maintenance Management System

A web-based minor project built with **HTML, CSS, JavaScript, Node.js, Express.js, MySQL, AJAX/JSON and session authentication**. This project follows the requirements in the supplied project-details document and retains the original HTML design as a reference in `docs/original_design_reference.html`.

## Features
- Student registration/login and profile/room information
- Admin and maintenance staff login (accounts created through MySQL or admin-created staff accounts)
- Complaint creation, ticket number, category, priority, room and description
- Complaint status lifecycle: Pending → In Progress → Resolved → Closed
- Admin/staff complaint assignment, status updates and resolution notes
- Complaint history/audit trail
- Student feedback (1–5 rating) after resolution
- Dashboard summary, search and category/status filters
- Admin student listing and maintenance staff management
- Responsive layout, server-side validation, role-based access and password hashing

## Requirements
Install **Node.js 18+** and **MySQL 8+**. VS Code is recommended.

## Setup (Windows / VS Code)
1. Extract this ZIP and open the `hostel_complaint_system` folder in VS Code.
2. Start MySQL (MySQL Workbench or your MySQL service).
3. In MySQL Workbench, open `sql/schema.sql` and execute it. This creates the database and tables.
4. Copy `.env.example` to `.env` in the project root. Edit `DB_USER`, `DB_PASSWORD`, and `SESSION_SECRET` with your own local values.
5. Open VS Code Terminal (**Terminal → New Terminal**) and run:
   ```bash
   npm install
   npm start
   ```
6. Open `http://localhost:3000` in your browser.

## Create the first admin account
For safety, the app does not provide a public admin-registration page. Register a normal student account in the app first, then promote it to admin in MySQL Workbench:

```sql
USE hostel_complaints;
UPDATE users SET role='admin' WHERE email='your_registered_email@example.com';
```

Log out and log in again for the role change to appear. Admin can create staff accounts from the Maintenance Staff page.

## Demo workflow
1. Register a student account with room number.
2. Log in and submit a complaint.
3. Promote a separate account to admin using the SQL above.
4. Log in as admin, open Complaints, view complaint details, assign maintenance staff, and update status.
5. Log in as the student and submit feedback once complaint is Resolved or Closed.

## Project structure
```text
hostel_complaint_system/
├── public/                 # Frontend HTML, CSS and JavaScript
├── src/server.js           # Express API, session auth and routes
├── src/db.js               # MySQL connection pool
├── sql/schema.sql          # Database schema
├── docs/                   # Original HTML design reference
├── .env.example            # Configuration template
└── package.json
```

## Notes
- Do not publish `.env` or real passwords to GitHub.
- For production deployment, use HTTPS, a persistent session store, environment secrets, backups, and a managed MySQL database.
- Test using dummy student data before submitting screenshots.
