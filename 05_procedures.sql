CREATE OR REPLACE PROCEDURE deposit_money(
    p_account_id NUMBER,
    p_amount NUMBER
)
IS
BEGIN

    UPDATE accounts
    SET balance = balance + p_amount
    WHERE account_id = p_account_id;


    INSERT INTO transactions
    VALUES(
        transaction_seq.NEXTVAL,
        p_account_id,
        'DEPOSIT',
        p_amount,
        SYSDATE
    );

END;
/