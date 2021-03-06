--------------------------------------------------------
--  Foreign Keys for Table REMINDER
--------------------------------------------------------

ALTER TABLE "REMINDER" ADD CONSTRAINT "RMDR_USR_ID_FK" FOREIGN KEY ("USR_ID") REFERENCES "USER" ("ID") ENABLE;

ALTER TABLE "REMINDER" ADD CONSTRAINT "RMDR_RTL_ID_FK" FOREIGN KEY ("RENTAL_ID") REFERENCES "RENTAL" ("ID") ENABLE;

ALTER TABLE "REMINDER" ADD CONSTRAINT "RMDR_ITM_ID_FK" FOREIGN KEY ("ITEM_ID") REFERENCES "ITEM" ("ID") ENABLE;
