SELECT * FROM crime_scene_report
WHERE date = 20180115 AND type = 'murder' AND city like 'sql city'


/* date			
20180115	

type	
murder

description
Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".

city
SQL City */


SELECT * FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC LIMIT 1;

/* id				
14887

name
Morty Schapiro

license_id
118009

address_number
4919

address_street_name
Northwestern Dr

ssn
111564949 */


SELECT * FROM person
WHERE address_street_name = "Franklin Ave" AND name LIKE 'Annabel%' 
ORDER BY address_number DESC;


/* id					
16371	

name
Annabel Miller

license_id
490173

address_number
103

address_street_name
Franklin Ave

ssn
318771143 */


SELECT  *
FROM interview i
INNER JOIN person p ON p.id = i.person_id
WHERE p.name = 'Annabel Miller' ;

/* person_id							
16371

transcript
I saw the murder happen, and I recognized the
killer from my gym when I was working out last
week on January the 9th.

id
16371

name
Annabel Miller

license_id
490173

address_number
103

address_street_name
Franklin Ave

ssn
318771143 */

SELECT  *
FROM interview i
INNER JOIN person p ON p.id = i.person_id
WHERE p.name = 'Morty Schapiro' ;


/* person_id							
14887

transcript
I heard a gunshot and then saw a man run out.
He had a "Get Fit Now Gym" bag. The membership
number on the bag started with "48Z". Only gold
members have those bags. The man got into a car
with a plate that included "H42W".

id
14887

name
Morty Schapiro

license_id
118009

address_number
4919

address_street_name
Northwestern Dr

ssn
111564949 */

SELECT * FROM person p
inner join drivers_license dl ON p.license_id = dl.id
inner join get_fit_now_member gm ON gm.person_id = p.id
WHERE dl.plate_number like "%H42W%" and gm.id like "48Z%" AND membership_status = "gold"

/* id										
67318
name
Jeremy Bowers
license_id	
423327
address_number
530
address_street_name
Washington Pl, Apt 3A
ssn
871539279
id
423327	
age
30
height
70	
eye_color
brown
hair_color
brown
gender
male	
plate_number
0H42W2	
car_make
Chevrolet
car_model
Spark LS
id
48Z55
person_id	
67318	
name
Jeremy Bowers
membership_start_date	
20160101	
membership_status
gold
*/

SELECT  *
FROM interview i
INNER JOIN person p ON p.id = i.person_id
WHERE p.name = 'Jeremy Bowers' ;

/* person_id							
67318
transcript
I was hired by a woman with a lot of money.
I don't know her name but I know she's around
5'5" (65") or 5'7" (67"). She has red hair and
she drives a Tesla Model S. I know that she
attended the SQL Symphony Concert 3 times
in December 2017. 
id
67318
name
Jeremy Bowers
license_id
423327	
address_number
530
address_street_name
Washington Pl, Apt 3A
ssn
871539279 */