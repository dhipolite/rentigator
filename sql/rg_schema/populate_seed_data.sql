-------------------------------------------------------------------------------
-- File Name: populate_seed_data
-- Purpose:
--   Master script that will call all the individiual table insert sql files
-- placing seed data into necessary tables.
-------------------------------------------------------------------------------

set heading off;
set echo off;
set verify off;
set feedback off;
set linesize 160;
set define on;

define seedDataRoot = "C:\Users\dhipo\eclipse-workspace\rentigator\sql\rg_schema";
define seedDataPath = "&seedDataRoot\seed-data";

-- Create files to disable and enable foreign key (FK) constraints
-- that are currently ENABLED
spool "&seedDataRoot\temp_DisableForeignKeys.sql"
select 'ALTER TABLE ' || lower(table_name) || ' DISABLE CONSTRAINT ' || lower(constraint_name) || ';'
  from user_constraints
  where constraint_type = 'R'
  and status = 'ENABLED'
  order by table_name;
spool off;

spool "&seedDataRoot\temp_EnableForeignKeys.sql"
select 'ALTER TABLE ' || lower(table_name) || ' ENABLE CONSTRAINT ' || lower(constraint_name) || ';'
  from user_constraints
  where constraint_type = 'R'
  and status = 'ENABLED'
  order by table_name;
spool off;

---- Disable FK constraints
PROMPT Disabling foreign key constraints...
@"&seedDataRoot\temp_DisableForeignKeys.sql";

 Call table insert files
@"&seedDataPath\1-frequency.sql";
@"&seedDataPath\2-payment-type.sql";
@"&seedDataPath\3-login.sql";
@"&seedDataPath\4-user.sql";
@"&seedDataPath\5-rental.sql";
@"&seedDataPath\6-lease.sql";
@"&seedDataPath\7-item.sql";
@"&seedDataPath\8-expense.sql";
@"&seedDataPath\9-reminder.sql";

-- Re-enable FK constraints
PROMPT Re-enabling foregin key constraints...
@"&seedDataRoot\temp_EnableForeignKeys.sql";

-- Undefine variables
undefine seedDataPath;
undefine seedDataRoot;

PROMPT Done.