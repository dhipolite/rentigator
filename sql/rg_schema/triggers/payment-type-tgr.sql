--------------------------------------------------------
--  DDL for Trigger PYMT_TYPE_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PYMT_TYPE_BRI_TRG"
 BEFORE INSERT
 ON "PAYMENT_TYPE"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END PYMT_TYPE_BRI_TRG;
/
ALTER TRIGGER "PYMT_TYPE_BRI_TRG" ENABLE;