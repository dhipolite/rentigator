--------------------------------------------------------
--  DDL for Table FREQUENCY
--------------------------------------------------------

  CREATE TABLE "FREQUENCY"
   (	"ID" VARCHAR2(36 BYTE),
	"NAME" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table FREQUENCY
   --------------------------------------------------------

     ALTER TABLE "FREQUENCY" ADD CONSTRAINT "FQY_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "FREQUENCY" MODIFY ("ID" CONSTRAINT "FQY_ID_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table FREQUENCY
     --------------------------------------------------------

     CREATE INDEX "FQY_ID_IDX" ON "FREQUENCY" ("ID");

     CREATE INDEX "FQY_NME_IDX" ON "FREQUENCY" ("NAME");
