--------------------------------------------------------
--  Foreign Keys for Table USER
--------------------------------------------------------
ALTER TABLE "USER" ADD CONSTRAINT "USR_LGN_ID_FK" FOREIGN KEY ("LOGIN_ID") REFERENCES "LOGIN" ("ID") ENABLE;
