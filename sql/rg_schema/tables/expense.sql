--------------------------------------------------------
--  DDL for Table EXPENSE
--------------------------------------------------------

  CREATE TABLE "EXPENSE"
   (	"ID" VARCHAR2(36 BYTE),
	"USR_ID" VARCHAR2(36 BYTE),
	"NAME" VARCHAR2(4000 BYTE),
	"FREQUENCY_ID" VARCHAR2(36 BYTE),
	"PAYMENT_TYPE_ID" VARCHAR2(36 BYTE),
	"COST" DECIMAL(6,2),
	"RENTAL_ID" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table EXPENSE
   --------------------------------------------------------

     ALTER TABLE "EXPENSE" ADD CONSTRAINT "EXP_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "EXPENSE" MODIFY ("ID" CONSTRAINT "EXP_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "EXPENSE" MODIFY ("NAME" CONSTRAINT "EXP_NAME_NN" NOT NULL ENABLE);

     ALTER TABLE "EXPENSE" MODIFY ("FREQUENCY_ID" CONSTRAINT "EXP_FQY_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "EXPENSE" MODIFY ("COST" CONSTRAINT "EXP_COST_NN" NOT NULL ENABLE);

     ALTER TABLE "EXPENSE" MODIFY ("RENTAL_ID" CONSTRAINT "EXP_RID_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table EXPENSE
     --------------------------------------------------------

     CREATE INDEX "EXP_ID_IDX" ON "EXPENSE" ("ID");

     CREATE INDEX "EXP_USR_ID_IDX" ON "EXPENSE" ("USR_ID");

     CREATE INDEX "EXP_RENTAL_ID_IDX" ON "EXPENSE" ("RENTAL_ID");
