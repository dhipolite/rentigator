--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "ITEM"
   (	"ID" VARCHAR2(36 BYTE),
	"USR_ID" VARCHAR2(36 BYTE),
	"NAME" VARCHAR2(4000 BYTE),
	"LAST_CHANGE_DATE" DATE,
	"UPDATE_INTERVAL" INT,
	"RENTAL_ID" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table ITEM
   --------------------------------------------------------

     ALTER TABLE "ITEM" ADD CONSTRAINT "ITM_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "ITEM" MODIFY ("ID" CONSTRAINT "ITM_ID_NN" NOT NULL ENABLE);

     ALTER TABLE "ITEM" MODIFY ("NAME" CONSTRAINT "ITM_NAME_NN" NOT NULL ENABLE);

     ALTER TABLE "ITEM" MODIFY ("RENTAL_ID" CONSTRAINT "ITM_RID_NN" NOT NULL ENABLE);


     --------------------------------------------------------
     --  Indexes for Table ITEM
     --------------------------------------------------------

     CREATE INDEX "ITM_ID_IDX" ON "ITEM" ("ID");

     CREATE INDEX "ITM_USR_ID_IDX" ON "ITEM" ("USR_ID");

     CREATE INDEX "ITM_RENTAL_ID_IDX" ON "ITEM" ("RENTAL_ID");
