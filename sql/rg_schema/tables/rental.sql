--------------------------------------------------------
--  DDL for Table RENTAL
--------------------------------------------------------

  CREATE TABLE "RENTAL"
   (	"ID" VARCHAR2(36 BYTE),
	"USR_ID" VARCHAR2(36 BYTE),
	"NAME" VARCHAR2(4000 BYTE),
	"ADDRESS" VARCHAR2(4000 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table RENTAL
   --------------------------------------------------------

     ALTER TABLE "RENTAL" ADD CONSTRAINT "RTL_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "RENTAL" MODIFY ("ID" CONSTRAINT "RTL_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "RENTAL" MODIFY ("NAME" CONSTRAINT "RTL_NAME_NN" NOT NULL ENABLE);

     ALTER TABLE "RENTAL" MODIFY ("USER_ID" CONSTRAINT "RTL_USR_ID_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table RENTAL
     --------------------------------------------------------

     CREATE INDEX "RTL_ID_IDX" ON "RENTAL" ("ID");

     CREATE INDEX "RTL_USR_ID_IDX" ON "RENTAL" ("USR_ID");
