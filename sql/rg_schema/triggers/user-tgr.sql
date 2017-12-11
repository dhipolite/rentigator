--------------------------------------------------------
--  DDL for Trigger USR_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "USR_BRI_TRG"
 BEFORE INSERT
 ON "USER"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END USR_BRI_TRG;
/
ALTER TRIGGER "USR_BRI_TRG" ENABLE;