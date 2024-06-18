-- Create dimension table for budgeted categories (i.e. fixed_expenses, variable_expenses, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    budget_category VARCHAR(255) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create dimension table for budgeted classifications (i.e. food, clothing, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_classification (
    classification_id INT PRIMARY KEY AUTO_INCREMENT,
    classification VARCHAR(255) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create dimension table for payment statuses and bill tracking use(i.e. paid, unpaid, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_payment_status (
    payment_status_id INT PRIMARY KEY AUTO_INCREMENT,
    is_paid VARCHAR(50) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create dimension table for type of expense (i.e. rent, utilities, etc.)
CREATE TABLE IF NOT EXISTS dev.dim_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
