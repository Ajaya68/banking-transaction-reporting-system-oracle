CREATE OR REPLACE TRIGGER trg_transaction_audit
AFTER INSERT
ON transactions
FOR EACH ROW

BEGIN

    INSERT INTO transaction_audit
    VALUES(
        audit_seq.NEXTVAL,
        :NEW.transaction_id,
        'INSERT',
        SYSDATE
    );

END;
/