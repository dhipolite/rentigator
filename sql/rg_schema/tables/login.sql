--------------------------------------------------------
--  DDL for Table LOGIN
--------------------------------------------------------

  CREATE TABLE "LOGIN"
   (
	"USERNAME" VARCHAR2(30 BYTE),
	"PASSWORD" VARCHAR2(50 BYTE),
	"ID" VARCHAR2(36 BYTE)
   ) ;


   --------------------------------------------------------
   --  Constraints for Table LOGIN
   --------------------------------------------------------
     ALTER TABLE "LOGIN" ADD CONSTRAINT "LGN_ID_PK" PRIMARY KEY ("ID") ENABLE;

     ALTER TABLE "LOGIN" MODIFY ("ID" CONSTRAINT "LGN_ID_NN" NOT NULL ENABLE);
	 
	 ALTER TABLE "LOGIN" MODIFY ("USERNME" CONSTRAINT "LGN_USR_NME_NN" NOT NULL ENABLE);
	 
	 ALTER TABLE "LOGIN" MODIFY ("USERNME" CONSTRAINT "LGN_USR_NME_UNQ" UNIQUE ENABLE);
	 
	 ALTER TABLE "LOGIN" MODIFY ("PASSWORD" CONSTRAINT "LGN_PSWD_NN" NOT NULL ENABLE);


 --------------------------------------------------------
 --  Indexes for Table LOGIN
 --------------------------------------------------------

   CREATE INDEX "LGN_ID_IDX" ON "LOGIN" ("ID");
