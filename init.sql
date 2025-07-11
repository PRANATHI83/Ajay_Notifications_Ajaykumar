-- Drop the table if it exists (for a clean start, useful in development)
DROP TABLE IF EXISTS notifications;

-- Create the notifications table
CREATE TABLE IF NOT EXISTS notifications (
    id SERIAL PRIMARY KEY,
    employee_id VARCHAR(7),
    department VARCHAR(50),
    title VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT single_target CHECK ((employee_id IS NULL) != (department IS NULL))
);
