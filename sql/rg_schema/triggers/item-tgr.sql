--------------------------------------------------------
--  DDL for Trigger ITM_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ITM_BRI_TRG"
 BEFORE INSERT
 ON "ITEM"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END ITM_BRI_TRG;
/
ALTER TRIGGER "ITM_BRI_TRG" ENABLE;