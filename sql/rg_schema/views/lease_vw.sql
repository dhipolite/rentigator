
  CREATE OR REPLACE FORCE VIEW "RENTIGATOR"."lease_vw" ("user_id", "user_name", "lease_name", "start_date", "end_date", "rental_name", "rental_id") AS 
  select u.id user_id,
lgn.username user_name,
lse.name lease_name,
lse.start_date start_date,
lse.end_date end_date,
r.name rental_name,
r.id rental_id
from USR u
left join lease lse
on u.id = lse.usr_id
left join rental r
on lse.rental_id = r.id
left join login lgn
on u.login_id = lgn.id;