-- Create database fact table that contains budget data 
CREATE TABLE IF NOT EXISTS dev.fact_budget (
    budget_id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    classification_id INT,
    type_id INT,
    payment_status_id INT,
    amount DECIMAL(10, 2),
    budget_type VARCHAR(255),
    budget_classifications VARCHAR(255),
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES dim_category(category_id),
    FOREIGN KEY (classification_id) REFERENCES dim_classification(classification_id),
    FOREIGN KEY (type_id) REFERENCES dim_type(type_id),
    FOREIGN KEY (payment_status_id) REFERENCES dim_payment_status(payment_status_id)
);
