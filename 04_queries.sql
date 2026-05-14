-- Customer + Account Details
SELECT
c.customer_name,
a.account_number,
a.balance

FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id;


-- Highest Balance
SELECT *
FROM accounts
WHERE balance =
(
SELECT MAX(balance)
FROM accounts
);


-- Branch-wise Account Count
SELECT
b.branch_name,
COUNT(a.account_id)

FROM branches b
JOIN accounts a
ON b.branch_id = a.branch_id

GROUP BY b.branch_name;