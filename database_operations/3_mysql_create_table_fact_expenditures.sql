-- Create database fact table that contains budget data 
CREATE TABLE IF NOT EXISTS dev.fact_expenditures (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_id INT,
    category_id INT,
    amount DECIMAL(10, 2),
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (type_id) REFERENCES dim_type(type_id),
    FOREIGN KEY (category_id) REFERENCES dim_category(category_id)
);
