--------------------------------------------------------
--  DDL for Table PAYMENT_TYPE
--------------------------------------------------------

  CREATE TABLE "PAYMENT_TYPE"
   (	"ID" VARCHAR2(36 BYTE),
	"NAME" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table PAYMENT_TYPE
   --------------------------------------------------------

     ALTER TABLE "PAYMENT_TYPE" ADD CONSTRAINT "PYMT_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "PAYMENT_TYPE" MODIFY ("ID" CONSTRAINT "PYMT_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "PAYMENT_TYPE" MODIFY ("NAME" CONSTRAINT "PYMT_SUMMARY_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table PAYMENT_TYPE
     --------------------------------------------------------

     CREATE INDEX "PYMT_ID_IDX" ON "PAYMENT_TYPE" ("ID");

     CREATE INDEX "PYMT_NME_IDX" ON "PAYMENT_TYPE" ("NAME");
