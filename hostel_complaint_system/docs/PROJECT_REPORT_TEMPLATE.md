# Hostel Complaint & Maintenance Management System

## 1. Introduction
The Hostel Complaint & Maintenance Management System is a web application designed to organize hostel maintenance complaints. Students can submit and track complaints while administrators and maintenance staff manage assignments and resolution.

## 2. Problem Statement
Manual complaint reporting can cause delays, lost requests and difficulty tracking the resolution process. The proposed system centralizes complaint submission, assignment, status updates and feedback.

## 3. Objectives
- Provide online complaint submission and tracking.
- Allow administrators to manage and assign complaints.
- Store student, room, complaint and maintenance data in MySQL.
- Reduce manual paperwork and improve visibility.
- Provide a responsive and user-friendly interface.

## 4. Technologies
HTML5, CSS3, JavaScript, Node.js, Express.js, MySQL, AJAX/JSON, session cookies, bcrypt, Git/GitHub.

## 5. Modules
1. Student registration and login
2. Admin authentication and dashboard
3. Complaint submission and tracking
4. Maintenance staff management and assignment
5. Complaint history and status updates
6. Student feedback
7. Search and filtering

## 6. Database Design
- `users`: students, administrators and maintenance staff
- `complaints`: ticket, description, category, priority, room, status and assignment
- `complaint_history`: status-change audit trail
- `feedback`: student rating and comments

## 7. Implementation
The frontend communicates with Express API endpoints using JSON. Express validates requests, checks session authentication and role permissions, and uses parameterized MySQL queries. Passwords are stored as bcrypt hashes.

## 8. Testing
Record actual results and screenshots using `TESTING_CHECKLIST.md`. Do not claim a test passed until you have run it locally.

## 9. Expected Outcome
A functional portal that allows students to submit and track maintenance requests and enables authorized hostel staff to assign and resolve complaints.

## 10. Future Enhancements
Email/SMS notifications, image attachments, downloadable reports, room/hostel inventory, escalation reminders and deployment to a secure hosting platform.
