--------------------------------------------------------
--  DDL for Table LEASE
--------------------------------------------------------

  CREATE TABLE "LEASE"
   (	"ID" VARCHAR2(36 BYTE),
	"USR_ID" VARCHAR2(36 BYTE),
	"RENTAL_ID" VARCHAR2(36 BYTE),
	"NAME" VARCHAR2(4000 BYTE),
	"START_DATE" DATE,
	"END_DATE" DATE
   ) ;


   --------------------------------------------------------
   --  Constraints for Table LEASE
   --------------------------------------------------------

     ALTER TABLE "LEASE" ADD CONSTRAINT "LSE_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "LEASE" MODIFY ("ID" CONSTRAINT "LSE_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "LEASE" MODIFY ("NAME" CONSTRAINT "LSE_NAME_NN" NOT NULL ENABLE);

     ALTER TABLE "LEASE" MODIFY ("RENTAL_ID" CONSTRAINT "LSE_RID_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table LEASE
     --------------------------------------------------------

     CREATE INDEX "LSE_ID_IDX" ON "LEASE" ("ID");

     CREATE INDEX "LSE_USR_ID_IDX" ON "LEASE" ("USR_ID");

     CREATE INDEX "LSE_RENTAL_ID_IDX" ON "LEASE" ("RENTAL_ID");
