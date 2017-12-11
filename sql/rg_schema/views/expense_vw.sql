
  CREATE OR REPLACE FORCE VIEW "RENTIGATOR"."expense_vw" ("user_id", "user_name", "exp_name", "fqy", "pymnt_type", "cost", "rental_name", "rental_id") AS 
  select u.id user_id,
l.username user_name,
e.name exp_name,
f.name fqy,
p.name pymnt_type,
e.cost cost,
r.name rental_name,
r.id rental_id
from USR u
left join expense e
on u.id = e.usr_id
left join frequency f
on e.FREQUENCY_ID = f.id
left join payment_type p
on e.PAYMENT_TYPE_ID = p.id
left join rental r
on e.rental_id = r.id
left join login l
on u.login_id = l.id;
