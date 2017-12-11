--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--   Purpose: Delete entire schema
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- run this in SQL Developer/SQl Plus:
-- @C:\Users\dhipolite\Desktop\Projects\SQL\BuildEditedTablesScript.sql

-- define the path to the directory containing build/delete scripts
define folderPath = "";

-- delete the current tables:
set heading off;
set echo off;
set verify off;
set feedback off;

--delete all tables but the MDRT ones, they will be dynamically removed
spool "&folderPath\temp_DropAllTables.sql";
select 'DROP TABLE ' || lower(tname) || ' CASCADE CONSTRAINTS PURGE;'
  from tab
  where (tname not like 'BIN%' and tname not like '%MDR%')
  and tabtype like 'TABLE';
spool off;

spool "&folderPath\temp_DropViews.sql"
select 'DROP ' || object_type || ' ' || lower(object_name) || ';'
  from user_objects
  where object_type like 'VIEW';
spool off;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--PROMPT Dropping current tables, functions, packages, sequences, views, types, spatial metadata...
@"&folderPath\temp_DropAllTables.sql";
@"&folderPath\temp_DropViews.sql";
commit;

-- release variables
undefine folderPath;
-- */
PROMPT Done