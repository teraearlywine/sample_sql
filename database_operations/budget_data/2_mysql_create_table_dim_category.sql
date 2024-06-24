-- Create dimension table for budgeted categories (i.e. fixed_expenses, variable_expenses, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    type_id INT,
    budget_category VARCHAR(255) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (type_id) REFERENCES dim_type(type_id)
);

