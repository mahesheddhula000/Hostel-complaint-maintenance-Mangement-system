# Testing checklist

| Test | Expected result |
|---|---|
| Student registration with valid details | Student account created and logged in |
| Register using duplicate email | Validation message; no duplicate account |
| Login with incorrect password | Access denied with error message |
| Student submits complaint | Ticket created with Pending status |
| Student views own complaints | Only their complaints are displayed |
| Student attempts to view another student's complaint | Access denied |
| Admin views complaints | All complaint records are visible |
| Admin assigns valid maintenance staff | Assignment saved |
| Admin/staff updates status | Status and complaint history updated |
| Invalid status or staff ID submitted | Request rejected |
| Student submits feedback before resolution | Request rejected |
| Student submits rating outside 1–5 | Request rejected |
| Search/filter complaints | Matching results displayed |
| Logout | Session ends and protected routes require login |
| Mobile/responsive layout | Navigation and forms fit narrow screens |
