--------------------------------------------------------
--  DDL for Table USER
--------------------------------------------------------

  CREATE TABLE "USER"
   (
	"FIRST_NAME" VARCHAR2(30 BYTE),
	"LAST_NAME" VARCHAR2(50 BYTE),
	"ID" VARCHAR2(36 BYTE),
	"LOGIN_ID" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table USER
   --------------------------------------------------------
     ALTER TABLE "USER" ADD CONSTRAINT "USR_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "USER" MODIFY ("ID" CONSTRAINT "USR_ID_NN" NOT NULL ENABLE);


 --------------------------------------------------------
 --  Indexes for Table USER
 --------------------------------------------------------

   CREATE INDEX "USR_USR_ID_IDX" ON "USER" ("USR_ID");
