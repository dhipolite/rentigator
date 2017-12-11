--------------------------------------------------------
--  DDL for Trigger FQY_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FQY_BRI_TRG"
 BEFORE INSERT
 ON "FREQUENCY"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END FQY_BRI_TRG;
/
ALTER TRIGGER "FQY_BRI_TRG" ENABLE;