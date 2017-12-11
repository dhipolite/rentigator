
  CREATE OR REPLACE FORCE VIEW "RENTIGATOR"."reminder_vw" ("user_id", "user_name", "rmndr_summary", "notify_date", "rental_name", "rental_id", "item_name", "item_id") AS 
  select u.id user_id,
lgn.username user_name,
rmndr.summary rmndr_summary,
rmndr.notify_date notify_date,
r.name rental_name,
r.id rental_id,
i.name item_name,
i.id item_id
from USR u
left join reminder rmndr
on u.id = rmndr.usr_id
left join rental r
on rmndr.rental_id = r.id
left join login lgn
on u.login_id = lgn.id
left join item i
on rmndr.item_id = i.id;
