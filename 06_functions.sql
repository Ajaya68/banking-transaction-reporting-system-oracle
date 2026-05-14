CREATE OR REPLACE FUNCTION get_account_balance(
    p_account_id NUMBER
)
RETURN NUMBER
IS
    v_balance NUMBER;
BEGIN

    SELECT balance
    INTO v_balance
    FROM accounts
    WHERE account_id = p_account_id;

    RETURN v_balance;

END;
/