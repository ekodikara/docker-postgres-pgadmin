-- Create a table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50)
);

-- Insert initial data
INSERT INTO users (username, password) VALUES
('admin', 'password123'),
('guest', 'guestpass');