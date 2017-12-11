--------------------------------------------------------
--  Foreign Keys for Table LEASE
--------------------------------------------------------

ALTER TABLE "LEASE" ADD CONSTRAINT "LSE_USR_ID_FK" FOREIGN KEY ("USR_ID") REFERENCES "USER" ("ID") ENABLE;

ALTER TABLE "LEASE" ADD CONSTRAINT "LSE_RTL_ID_FK" FOREIGN KEY ("RENTAL_ID") REFERENCES "RENTAL" ("ID") ENABLE;
