--------------------------------------------------------
--  Foreign Keys for Table EXPENSE
--------------------------------------------------------

ALTER TABLE "EXPENSE" ADD CONSTRAINT "EXP_USR_ID_FK" FOREIGN KEY ("USR_ID") REFERENCES "USER" ("ID") ENABLE;

ALTER TABLE "EXPENSE" ADD CONSTRAINT "EXP_RTL_ID_FK" FOREIGN KEY ("RENTAL_ID") REFERENCES "RENTAL" ("ID") ENABLE;
