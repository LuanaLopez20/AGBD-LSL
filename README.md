# AGBD

select * from inhabitant

select * from inhabitant where state = 'friendly' 

select * from inhabitant where state = 'friendly' and job = 'weaponsmith'

select * from inhabitant where state = 'friendly' and job LIKE '%smith'

select personid from inhabitant where name = 'Stranger'

select gold from inhabitant where name = 'Stranger' 

select * from item where owner is null

UPDATE item SET owner = 20 where OWNER IS NULL

select * from item where owner = 20

select * from inhabitant where state = 'friendly' and job = 'dealer' or job = 'merchant'

UPDATE item SET owner = 15 WHERE item ='ring' OR item = 'teapot'

UPDATE inhabitant SET name = 'luana' WHERE name = 'Stranger'

select * from inhabitant where job = 'baker' order BY gold DESC

select * from inhabitant where job = 'pilot'

SELECT i.name FROM inhabitant i INNER JOIN village v on v.chief = i.personid 
where v.name = 'Onionville'

SELECT COUNT(*) FROM inhabitant, village WHERE gender ='f'and village.villageid = inhabitant.villageid AND village.name = 'Onionville'

SELECT inhabitant.name FROM inhabitant, village WHERE gender ='f'and village.villageid = inhabitant.villageid AND village.name = 'Onionville'

SELECT SUM(i.gold) FROM inhabitant i INNER JOIN village v ON v.villageid = i.villageid WHERE i.job = 'baker' OR i.job = 'dealer' OR i.job = 'merchant'
