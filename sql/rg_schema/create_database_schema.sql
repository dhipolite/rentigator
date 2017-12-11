--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--   Purpose: Build minimal working Schema from
--            directory, folderPath.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- run this in SQL Developer/SQl Plus:
-- C:\Users\dhipo\eclipse-workspace\rentigator\sql\rg_schema\create_database-schema.sql

-- define the path to the directory containing build/delete scripts
define folderPath = "C:\Users\dhipo\eclipse-workspace\rentigator\sql\rg_schema\";

-- delete the current tables:
set heading off;
set echo off;
set verify off;
set feedback off;


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- /*
PROMPT Creating tables...
-- build current schema; alphabetically ordered
define tablePath = "&folderPath\tables";
@"&tablePath\login.sql";
@"&tablePath\user.sql";
@"&tablePath\reminder.sql";
@"&tablePath\expense.sql";
@"&tablePath\item.sql";
@"&tablePath\payment_type.sql";
@"&tablePath\lease.sql";
@"&tablePath\rental.sql";
@"&tablePath\frequency.sql";

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
PROMPT Creating Foreign Keys...
define foreignKeyPath = "&folderPath\foreign-keys";
-- alphabetically ordered
@"&foreignKeyPath\expense.sql";
@"&foreignKeyPath\frequency.sql";
@"&foreignKeyPath\item.sql";
@"&foreignKeyPath\lease.sql";
@"&foreignKeyPath\login.sql";
@"&foreignKeyPath\payment_type.sql";
@"&foreignKeyPath\rental.sql";
@"&foreignKeyPath\reminder.sql";
@"&foreignKeyPath\user.sql";

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
PROMPT Creating Triggers....
define triggerPath = "&folderPath\triggers";
-- functions used by views, triggers:
@"&triggerPath\expense.sql";
@"&triggerPath\frequency.sql";
@"&triggerPath\item.sql";
@"&triggerPath\lease.sql";
@"&triggerPath\login.sql";
@"&triggerPath\payment_type.sql";
@"&triggerPath\rental.sql";
@"&triggerPath\reminder.sql";
@"&triggerPath\user.sql";

-- release variables
undefine triggerPath;
undefine foreignKeyPath;
undefine tablePath;
undefine folderPath;
-- */
PROMPT Done
