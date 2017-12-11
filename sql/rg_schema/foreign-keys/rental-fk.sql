--------------------------------------------------------
--  Foreign Keys for Table RENTAL
--------------------------------------------------------

ALTER TABLE "RENTAL" ADD CONSTRAINT "RTL_USR_ID_FK" FOREIGN KEY ("USR_ID") REFERENCES "USER" ("ID") ENABLE;
