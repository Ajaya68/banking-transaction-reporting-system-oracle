CREATE OR REPLACE VIEW transaction_report AS

SELECT
c.customer_name,
a.account_number,
t.transaction_type,
t.transaction_amount,
t.transaction_date

FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id

JOIN transactions t
ON a.account_id = t.account_id;