
  CREATE OR REPLACE FORCE VIEW "RENTIGATOR"."user_vw" ("user_id", "first_name", "last_name", "username", "password") AS 
  select u.id user_id,
u.first_name first_name,
u.last_name last_name,
lgn.username username,
lgn.password password
from usr u
left join login lgn
on u.login_id = lgn.id;
