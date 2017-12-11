--------------------------------------------------------
--  DDL for Table REMINDER
--------------------------------------------------------

  CREATE TABLE "REMINDER"
   (	"ID" VARCHAR2(36 BYTE),
	"USR_ID" VARCHAR2(36 BYTE),
	"SUMMARY" VARCHAR2(4000 BYTE),
	"NOTIFY_DATE" DATE,
	"RENTAL_ID" VARCHAR2(36 BYTE),
	"ITEM_ID" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table REMINDER
   --------------------------------------------------------

     ALTER TABLE "REMINDER" ADD CONSTRAINT "RMDR_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "REMINDER" MODIFY ("ID" CONSTRAINT "RMDR_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "REMINDER" MODIFY ("SUMMARY" CONSTRAINT "RMDR_SUMMARY_NN" NOT NULL ENABLE);

     ALTER TABLE "REMINDER" MODIFY ("NOTIFY_DATE" CONSTRAINT "RMDR_NTFY_DATE_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table REMINDER
     --------------------------------------------------------

     CREATE INDEX "RMDR_USR_ID_IDX" ON "REMINDER" ("USR_ID");

     CREATE INDEX "RMDR_USR_ID_IDX" ON "REMINDER" ("USR_ID");

     CREATE INDEX "RMDR_RENTAL_ID_IDX" ON "REMINDER" ("RENTAL_ID");
