// Intended Special Queries 
************************************************************************
//List the transferrable Player whose previous team is 'BJK' and Cost = 0
-- Or our TA names this query like that->
//List the information of players whose agreement with BJK has expired 
//and whose transfer will take place free of charge

SELECT * FROM "transferrable_Players" tp 
WHERE(tp."Cost"=0 AND tp."Previous Team"='BJK')

// List the players who are in the 'Current Squad' and also an 'A Team' Player

SELECT p2.player_id ,p2.p_name, p2.p_position, p2.uniform_num, p2.player_status
FROM "Current Squad" cs, "Players" p2
WHERE( p2.player_status= 'A Team' AND cs.p_id = p2.player_id)

***********************************************************************
//OUR QUERIES:

// List of players suggested by the Sports Director to coach number "2"     // 3 table inner join
SELECT p.player_id,p.p_name,p.uniform_num,p.p_position FROM suggest s INNER JOIN coach c ON s.c_id = c.coach_id 
INNER JOIN Players p ON s.talented_id = p.player_id  
WHERE c.coach_id = 2

//List the countries which has more than 3 players in our team  
SELECT COUNT(player_id) , p_nation 
FROM "Players" p 
GROUP BY p_nation
HAVING COUNT(player_id)>3

//Average age of players
SELECT AVG(p_age)
FROM "Players" p2 

///Ascending order salary of players
SELECT p_name,p_age
FROM "Players" p 
ORDER BY p_age ASC;

//List all players who had selected as a 'Talented' by Sportive Director with id=2
//(It also lists the name and id of the sportive director who choose the player.)      // 3 table inner join

SELECT sd.sd_name, sd.sd_id,  p.player_id ,p.p_name,p.uniform_num ,p.p_position  FROM  "select_talented" st INNER JOIN "Sportive Director" sd ON  st.sd_id1 = sd.sd_id
INNER JOIN "Players" p ON st.p_id = p.player_id  WHERE sd.sd_id = 2


///List the players whose age between 30-35
SELECT p_name
FROM "Players" p 
WHERE p_age BETWEEN 30 AND 35;


//List all players who had suggested as a 'Talented' to Coach with id=1 
//(It also lists the name and id of the coach FROM which the player is suggested.)// 3 table inner join

SELECT c.c_name, c.coach_id,  p.player_id ,p.p_name,p.uniform_num ,p.p_position  FROM "suggest" s INNER JOIN "coach" c ON  s.c_id = c.coach_id 
INNER JOIN "Players" p ON s.talented_id = p.player_id  WHERE c.coach_id = 1


///List Turkish player in team
SELECT p_name
FROM "Players" p2 
WHERE p_nation = 'Turkey' ;

///List international players in team
SELECT p_name
FROM "Players" p2 
WHERE p_nation != 'Turkey' ;

///List players who is in current squad but not in first11
SELECT p_name
FROM "Current Squad" cs 
WHERE top11 != 'Y' ;

//List the forward players which are not in the first11 with using NOT IN
SELECT * FROM  Players p WHERE player_id NOT IN (SELECT p_id FROM Current Squad cs WHERE first11 != 'N')  
AND p.p_position = 'Forward'

//List the contract id's of players whose salary is greater than at least one player
SELECT player_contract_id
FROM "Player Contract" pc
WHERE salary > SOME (SELECT salary FROM "Player Contract" pc2 )

//List the coaches who have a contract with club.
SELECT c_name, coachid as contractid ,startdate,enddate,salary FROM "Coach Contract" cc INNER JOIN
"coach" c ON coachid = coach_id 

//List the U-19 players who has greater salary than all A Team Players
SELECT player_contract_id
FROM "Player Contract" pc
WHERE pc.contract_status ='U-19' AND salary >= ALL(SELECT salary FROM "Player Contract" pc2 
WHERE contract_status ='A Team')

// List the players whose positions are forward or midfielder 
// And ages are greater than average of other players ages  
SELECT p2.p_name
FROM "Players" p2 
WHERE p2.p_age > SELECT AVG(p3.p_age) FROM "Players" p3 
WHERE p2.p_position = 'Forward' OR p2.p_position = 'Midfielder')

//List the players' uniform numbers in DESC order.
SELECT p_name, uniform_num FROM "Players" p ORDER BY uniform_num DESC

//List the Defence Players who haven't got a trainer
SELECT player_id, p_name
FROM "Players" p 
WHERE trainer_id IS NULL AND p_position = 'Defence';

// List all the player who names start with letter 'G'
SELECT p_name FROM "Players" p 
WHERE p_name like 'G%'

// List the Distinct and not null Addresses of Players 
SELECT DISTINCT Address 
FROM "Players"
WHERE p_info IS NOT NULL;

// List the Players names and IDs whose not get a feedback from Coach
SELECT p2.p_name, p2.player_id 
FROM suggest s INNER JOIN "Players" p2 ON s.talented_id = p2.player_id 
WHERE s.decision LIKE 'NULL'

//List the Trainers whose Address is starting with letter 'A' and ending with letter 'a'.
SELECT * FROM "Trainers" t 
WHERE t.t_address LIKE 'A%a'

//List Players id and name whose age greater than 30
SELECT player_id, p_name
FROM "Players" p 
WHERE NOT EXISTS (SELECT p2.p_age FROM "Players" p2 WHERE p.p_age<30)

//Find the Player with minimum age
SELECT MIN(p_age)
FROM "Players" p2

//List the 'Defence' Players which do not have contract.
SELECT  c.p_name, c.player_id ,c.p_nation, c.uniform_num FROM "Players" c 
WHERE c.p_position = 'Defence' AND  c.player_id NOT IN (SELECT pc.p_id FROM "Player Contract" pc )

//List the maximum U-19 Player salary
SELECT MAX(salary)
FROM "Player Contract" pc 
WHERE pc.contract_status = 'U-19'

//List the  A team  players and their trainers  with left outer join
SELECT t2.t_name, p.p_name 
FROM "Trainers" t2 
LEFT OUTER JOIN "Players" p 
ON t2.trainer_id = p.trainer_id 
WHERE(p.player_status='A Team')
   
// List the number of players trained by each trainer  --with using scalar subquery
SELECT DISTINCT t.t_name, (SELECT COUNT(p.trainer_id) FROM "Players" p WHERE t.trainer_id = p.trainer_id)  as Numtrainer
FROM "Trainers" t

//List the player who has salary under 30000
SELECT p_id
FROM "Player Contract" pc 
WHERE EXISTS (SELECT pc.salary FROM "Player Contract" pc WHERE pc.salary<30000)

//List the average ages of players whose nationality is Turkey and Brasil //From subquery
SELECT AVG(avgage) 
FROM
(SELECT AVG(p2.p_age) as avgage FROM "Players" p2 
WHERE p2.p_nation IN ('Turkey', 'Brasil')) as average 
 
//Find the sum of salary players who are in first 11
SELECT SUM(salary)
FROM "Player Contract" as pc 
WHERE
EXISTS (SELECT * FROM "Current Squad" as cs
WHERE cs.first11 ='Y' AND pc.p_id = cs.p_id)

// Alter table Statement
ALTER TABLE "FootballClub"."Facilities" ADD f_season varchar NULL;
//Find the all facilities given in both for 'Winter' season and 'Training' purpose.
SELECT f_id
FROM "Facilities" as F 
WHERE F.f_type = 'Training' AND
EXISTS (SELECT * FROM "Facilities" as S
WHERE f_season='Winter' AND F.f_season = S.f_season)