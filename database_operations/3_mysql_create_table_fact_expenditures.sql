-- Create database fact table that contains budget data 
CREATE TABLE IF NOT EXISTS dev.fact_expenditures (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    amount DECIMAL(10, 2),
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES dim_category(category_id)
);
