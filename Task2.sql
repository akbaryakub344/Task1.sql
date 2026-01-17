USE intern_training_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    created_at DATE
);

INSERT INTO users (username, email, age, created_at) VALUES
('akbar', 'akbar@gmail.com', 22, '2025-01-10'),
('rahul', 'rahul@gmail.com', 23, '2025-01-11');

ALTER TABLE users ADD phone VARCHAR(15);
ALTER TABLE users MODIFY age INT NOT NULL;
ALTER TABLE users DROP COLUMN phone;

DESCRIBE users;
