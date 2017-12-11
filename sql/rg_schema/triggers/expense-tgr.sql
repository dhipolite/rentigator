--------------------------------------------------------
--  DDL for Trigger EXP_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "EXP_BRI_TRG"
 BEFORE INSERT
 ON "EXPENSE"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END EXP_BRI_TRG;
/
ALTER TRIGGER "EXP_BRI_TRG" ENABLE;