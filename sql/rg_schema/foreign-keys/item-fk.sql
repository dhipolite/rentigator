--------------------------------------------------------
--  Foreign Keys for Table ITEM
--------------------------------------------------------

ALTER TABLE "ITEM" ADD CONSTRAINT "ITM_USR_ID_FK" FOREIGN KEY ("USR_ID") REFERENCES "USER" ("ID") ENABLE;

ALTER TABLE "ITEM" ADD CONSTRAINT "ITM_RTL_ID_FK" FOREIGN KEY ("RENTAL_ID") REFERENCES "RENTAL" ("ID") ENABLE;
