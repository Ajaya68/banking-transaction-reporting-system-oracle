-- BRANCHES
CREATE TABLE branches(
    branch_id NUMBER PRIMARY KEY,
    branch_name VARCHAR2(100),
    city VARCHAR2(50)
);


-- CUSTOMERS
CREATE TABLE customers(
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    phone VARCHAR2(15) UNIQUE,
    email VARCHAR2(100) UNIQUE
);


-- ACCOUNT TYPES
CREATE TABLE account_types(
    account_type_id NUMBER PRIMARY KEY,
    account_type_name VARCHAR2(30)
);


-- ACCOUNTS
CREATE TABLE accounts(
    account_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    branch_id NUMBER,
    account_type_id NUMBER,

    account_number VARCHAR2(20) UNIQUE,
    balance NUMBER(12,2),

    FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY(branch_id)
    REFERENCES branches(branch_id),

    FOREIGN KEY(account_type_id)
    REFERENCES account_types(account_type_id)
);


-- TRANSACTIONS
CREATE TABLE transactions(
    transaction_id NUMBER PRIMARY KEY,
    account_id NUMBER,

    transaction_type VARCHAR2(20),
    transaction_amount NUMBER(12,2),
    transaction_date DATE,

    FOREIGN KEY(account_id)
    REFERENCES accounts(account_id)
);


-- LOANS
CREATE TABLE loans(
    loan_id NUMBER PRIMARY KEY,
    customer_id NUMBER,

    loan_type VARCHAR2(30),
    loan_amount NUMBER(12,2),

    FOREIGN KEY(customer_id)
    REFERENCES customers(customer_id)
);


-- TRANSACTION AUDIT
CREATE TABLE transaction_audit(
    audit_id NUMBER PRIMARY KEY,
    transaction_id NUMBER,
    action_type VARCHAR2(20),
    action_date DATE
);