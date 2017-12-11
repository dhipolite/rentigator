
  CREATE OR REPLACE FORCE VIEW "RENTIGATOR"."item_vw" ("user_id", "user_name", "item_name", "last_change_date", "update_interval", "item_id", "rental_name", "rental_id") AS 
  select u.id user_id,
l.username user_name,
i.name item_name,
i.last_change_date last_change_date,
i.update_interval update_interval,
i.id item_id,
r.name rental_name,
r.id rental_id
from USR u
left join item i
on u.id = i.usr_id
left join rental r
on i.rental_id = r.id
left join login l
on u.login_id = l.id;
