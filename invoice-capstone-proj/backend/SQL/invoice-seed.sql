-- Insert users
INSERT INTO users (username, email, password, name, role, created_at) VALUES
('adminuser', 'admin@example.com', 'hashedpassword1', 'Admin User', 'admin', NOW()),
('johndoe', 'johndoe@example.com', 'hashedpassword2', 'John Doe', 'user', NOW());

-- Insert customers
INSERT INTO customers (user_id, name, email, phone, address, created_at) VALUES
(2, 'Customer One John', 'customer1.john@example.com', '223-456-7890', '223 John St, City, Country', NOW()),
(2, 'Customer Two John', 'customer2.john@example.com', '223-456-7891', '224 John St, City, Country', NOW());

-- Insert invoices
INSERT INTO invoices (user_id, customer_id, invoice_number, issue_date, due_date, status, total_amount, created_at) VALUES
(2, 1, 'INV-1001', '2025-01-01', '2025-01-15', 'paid', 250.00, NOW()),
(2, 1, 'INV-1002', '2025-01-10', '2025-01-25', 'unpaid', 450.00, NOW()),
(2, 2, 'INV-1003', '2025-01-05', '2025-01-20', 'paid', 300.00, NOW()),
(2, 2, 'INV-1004', '2025-01-15', '2025-01-30', 'unpaid', 500.00, NOW());

-- Insert invoice items
INSERT INTO invoice_items (invoice_id, description, quantity, unit_price) VALUES
(1, 'Product A', 2, 50.00),
(1, 'Product B', 1, 150.00),
(2, 'Service A', 3, 100.00),
(2, 'Service B', 2, 175.00),
(3, 'Product C', 1, 75.00),
(3, 'Product D', 3, 200.00),
(4, 'Service C', 2, 120.00),
(4, 'Service D', 1, 300.00);
