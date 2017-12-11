--------------------------------------------------------
--  DDL for Trigger LEASE_BRI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LEASE_BRI_TRG"
 BEFORE INSERT
 ON "LEASE"
 FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        :NEW.id := get_uuid();
    END IF;

END LEASE_BRI_TRG;
/
ALTER TRIGGER "LEASE_BRI_TRG" ENABLE;