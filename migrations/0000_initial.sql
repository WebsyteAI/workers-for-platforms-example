-- Create customers table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  plan_type TEXT NOT NULL
);

-- Create customer_tokens table
DROP TABLE IF EXISTS customer_tokens;
CREATE TABLE customer_tokens (
  token TEXT PRIMARY KEY,
  customer_id TEXT NOT NULL
);

-- Create dispatch_limits table
DROP TABLE IF EXISTS dispatch_limits;
CREATE TABLE dispatch_limits (
  script_id TEXT PRIMARY KEY,
  cpuMs INTEGER,
  memory INTEGER
);

-- Create outbound_workers table
DROP TABLE IF EXISTS outbound_workers;
CREATE TABLE outbound_workers (
  script_id TEXT PRIMARY KEY,
  outbound_script_id TEXT NOT NULL
);

-- Insert initial customers
INSERT INTO customers (id, name, plan_type)
VALUES 
  ('559968cd-b048-4bbc-ba21-d12625fcee45', 'Customer 1', 'basic'),
  ('2612b586-4799-42ff-8c44-d4841e1e70ed', 'Customer 2', 'advanced');

-- Insert initial customer tokens
INSERT INTO customer_tokens (token, customer_id)
VALUES 
  ('a1b2c3', '559968cd-b048-4bbc-ba21-d12625fcee45'),
  ('d4e5f6', '2612b586-4799-42ff-8c44-d4841e1e70ed');
