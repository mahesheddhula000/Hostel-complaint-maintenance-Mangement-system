CREATE DATABASE IF NOT EXISTS hostel_complaints CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE hostel_complaints;

CREATE TABLE IF NOT EXISTS users (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(150) NOT NULL UNIQUE,
 password_hash VARCHAR(255) NOT NULL,
 role ENUM('student','admin','staff') NOT NULL DEFAULT 'student',
 phone VARCHAR(20),
 room_number VARCHAR(30),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS complaints (
 id INT AUTO_INCREMENT PRIMARY KEY,
 ticket_no VARCHAR(20) NOT NULL UNIQUE,
 student_id INT NOT NULL,
 title VARCHAR(150) NOT NULL,
 category ENUM('Electrical','Plumbing','Cleaning','Furniture','Wi-Fi','Other') NOT NULL,
 priority ENUM('Low','Medium','High') NOT NULL DEFAULT 'Medium',
 description TEXT NOT NULL,
 room_number VARCHAR(30) NOT NULL,
 status ENUM('Pending','In Progress','Resolved','Closed') NOT NULL DEFAULT 'Pending',
 assigned_staff_id INT NULL,
 resolution_note TEXT,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 resolved_at DATETIME NULL,
 FOREIGN KEY (student_id) REFERENCES users(id) ON DELETE CASCADE,
 FOREIGN KEY (assigned_staff_id) REFERENCES users(id) ON DELETE SET NULL
);
CREATE TABLE IF NOT EXISTS feedback (
 id INT AUTO_INCREMENT PRIMARY KEY,
 complaint_id INT NOT NULL UNIQUE,
 student_id INT NOT NULL,
 rating TINYINT NOT NULL,
 comments VARCHAR(500),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (complaint_id) REFERENCES complaints(id) ON DELETE CASCADE,
 FOREIGN KEY (student_id) REFERENCES users(id) ON DELETE CASCADE,
 CHECK (rating BETWEEN 1 AND 5)
);
CREATE TABLE IF NOT EXISTS complaint_history (
 id INT AUTO_INCREMENT PRIMARY KEY,
 complaint_id INT NOT NULL,
 changed_by INT NOT NULL,
 old_status VARCHAR(30),
 new_status VARCHAR(30) NOT NULL,
 note VARCHAR(500),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (complaint_id) REFERENCES complaints(id) ON DELETE CASCADE,
 FOREIGN KEY (changed_by) REFERENCES users(id)
);
