CREATE INDEX idx_account_number
ON accounts(account_number);

CREATE INDEX idx_transaction_account
ON transactions(account_id);