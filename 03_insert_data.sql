-- Branches
INSERT INTO branches VALUES(101,'Main Branch','Bhubaneswar');
INSERT INTO branches VALUES(102,'City Branch','Cuttack');


-- Customers
INSERT INTO customers
VALUES(1001,'Ajaya Mahanty','9876543210','ajaya@gmail.com');

INSERT INTO customers
VALUES(1002,'Rahul Sharma','9876543211','rahul@gmail.com');


-- Account Types
INSERT INTO account_types VALUES(1,'Savings');
INSERT INTO account_types VALUES(2,'Current');


-- Accounts
INSERT INTO accounts
VALUES(5001,1001,101,1,'SB10001',50000);

INSERT INTO accounts
VALUES(5002,1002,102,2,'CA10002',80000);


-- Loans
INSERT INTO loans
VALUES(1,1001,'Home Loan',1500000);

COMMIT;