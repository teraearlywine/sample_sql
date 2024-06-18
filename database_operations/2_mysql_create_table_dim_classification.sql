-- Create dimension table for budgeted classifications (i.e. food, clothing, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_classification (
    classification_id INT PRIMARY KEY AUTO_INCREMENT,
    classification VARCHAR(255) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);