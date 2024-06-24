-- Create dimension table for type of expense (i.e. rent, utilities, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
