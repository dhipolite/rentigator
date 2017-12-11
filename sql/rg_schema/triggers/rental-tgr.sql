--------------------------------------------------------
--  DDL for Trigger RTL_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RTL_BRI_TRG"
 BEFORE INSERT
 ON "RENTAL"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END RTL_BRI_TRG;
/
ALTER TRIGGER "RTL_BRI_TRG" ENABLE;