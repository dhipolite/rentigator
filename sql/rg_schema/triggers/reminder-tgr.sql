--------------------------------------------------------
--  DDL for Trigger RMDR_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RMDR_BRI_TRG"
 BEFORE INSERT
 ON "REMINDER"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END RMDR_BRI_TRG;
/
ALTER TRIGGER "RMDR_BRI_TRG" ENABLE;