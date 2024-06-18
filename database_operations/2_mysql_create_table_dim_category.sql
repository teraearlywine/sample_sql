-- Create dimension table for budgeted categories (i.e. fixed_expenses, variable_expenses, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    budget_category VARCHAR(255) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

