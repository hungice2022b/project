CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    role ENUM('admin','guest')
);
-- Tạo user mẫu
INSERT INTO users (email, password, role) VALUES
('admin@vnu.edu.vn', MD5('123456'), 'admin'),
('guest@vnu.edu.vn', MD5('123456'), 'guest');