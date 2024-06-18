-- Create dimension table for payment statuses and bill tracking use(i.e. paid, unpaid, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_payment_status (
    payment_status_id INT PRIMARY KEY AUTO_INCREMENT,
    is_paid VARCHAR(50) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
