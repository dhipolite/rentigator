--------------------------------------------------------
--  DDL for Trigger LGN_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LGN_BRI_TRG"
 BEFORE INSERT
 ON "LOGIN"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END LGN_BRI_TRG;
/
ALTER TRIGGER "LGN_BRI_TRG" ENABLE;