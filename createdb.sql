-- "FootballClub"."Coach Contract" definition


CREATE TABLE "FootballClub"."Coach Contract" (
	coachid int4 NOT NULL DEFAULT nextval('"FootballClub"."Coach Contract1_coachid_seq"'::regclass),
	startdate varchar NULL,
	enddate varchar NULL,
	salary int8 NULL,
	contract_status varchar NULL,
	c_id int2 NULL,
	CONSTRAINT coach_contract_pk PRIMARY KEY (coachid)
);


-- "FootballClub"."Coach Contract" foreign keys

ALTER TABLE "FootballClub"."Coach Contract" ADD CONSTRAINT coach_contract_fk FOREIGN KEY (c_id) REFERENCES "FootballClub".coach(coach_id);


--*************************************************


-- "FootballClub"."Current Squad" definition


CREATE TABLE "FootballClub"."Current Squad" (
	first11 varchar NULL,
	reserves varchar NULL,
	p_id int2 NOT NULL,
	CONSTRAINT current_squad_pk PRIMARY KEY (p_id)
);


-- "FootballClub"."Current Squad" foreign keys

ALTER TABLE "FootballClub"."Current Squad" ADD CONSTRAINT current_squad_fk FOREIGN KEY (p_id) REFERENCES "FootballClub"."Players"(player_id);

--*************************************************

-- "FootballClub"."Facilities" definition


CREATE TABLE "FootballClub"."Facilities" (
	f_id int2 NOT NULL,
	f_type varchar NULL,
	Place varchar NULL,
	club_name varchar NOT NULL,
	CONSTRAINT facilities_pk PRIMARY KEY (f_id)
);


-- "FootballClub"."Facilities" foreign keys

ALTER TABLE "FootballClub"."Facilities" ADD CONSTRAINT facilities_fk FOREIGN KEY (club_name) REFERENCES "FootballClub"."Footbal Club"(club_name);


--*************************************************

-- "FootballClub"."Footbal Club" definition


CREATE TABLE "FootballClub"."Footbal Club" (
	club_name varchar(25) NOT NULL,
	establishyear varchar NULL,
	color varchar NULL,
	CONSTRAINT footbal_club_pk PRIMARY KEY (club_name));


--*************************************************


-- "FootballClub"."Managers" definition


CREATE TABLE "FootballClub"."Managers" (
	"Managers_id" int2 NOT NULL,
	"M-name" varchar NOT NULL,
	"M-position" varchar(25) NULL,
	club_name varchar NOT NULL,
	m_address varchar NULL,
	m_phonenumber varchar NULL,
	CONSTRAINT managers_pk PRIMARY KEY ("Managers_id"));

-- "FootballClub"."Managers" foreign keys

ALTER TABLE "FootballClub"."Managers" ADD CONSTRAINT managers_fk FOREIGN KEY (club_name) REFERENCES "FootballClub"."Footbal Club"(club_name);


--*************************************************


-- "FootballClub"."Player Contract" definition


CREATE TABLE "FootballClub"."Player Contract" (
	player_contract_id int4 NOT NULL DEFAULT nextval('"FootballClub"."Player Contrac1_player_contract_id_seq"'::regclass),
	startdate varchar NULL,
	enddate varchar NULL,
	salary int8 NULL,
	contract_status varchar NULL,
	p_id int2 NULL,
	CONSTRAINT player_contract_pk PRIMARY KEY (player_contract_id)
);


-- "FootballClub"."Player Contract" foreign keys

ALTER TABLE "FootballClub"."Player Contract" ADD CONSTRAINT player_contract_fk FOREIGN KEY (p_id) REFERENCES "FootballClub"."Players"(player_id);


--*************************************************


-- "FootballClub"."Players" definition


CREATE TABLE "FootballClub"."Players" (
	player_id int2 NOT NULL,
	p_name varchar NOT NULL,
	p_position varchar NOT NULL,
	p_age int2 NULL,
	uniform_num int2 NULL,
	club_name varchar NOT NULL,
	trainer_id int2 NULL,
	player_status varchar NULL,
	p_nation varchar NOT NULL,
	CONSTRAINT players_pk PRIMARY KEY (player_id)
);


-- "FootballClub"."Players" foreign keys

ALTER TABLE "FootballClub"."Players" ADD CONSTRAINT players_fk2 FOREIGN KEY (club_name) REFERENCES "FootballClub"."Footbal Club"(club_name);
ALTER TABLE "FootballClub"."Players" ADD CONSTRAINT players_fk3 FOREIGN KEY (trainer_id) REFERENCES "FootballClub"."Trainers"(trainer_id);


--*************************************************


-- "FootballClub"."Sportive Director" definition


CREATE TABLE "FootballClub"."Sportive Director" (
	sd_id int2 NOT NULL,
	sd_name varchar NULL,
	sd_age int2 NULL,
	club_name varchar NULL,
	sd_address varchar NULL,
	sd_phonenumber varchar NULL,
	CONSTRAINT sportive_director_pk PRIMARY KEY (sd_id)
);


-- "FootballClub"."Sportive Director" foreign keys

ALTER TABLE "FootballClub"."Sportive Director" ADD CONSTRAINT sportive_director_fk FOREIGN KEY (club_name) REFERENCES "FootballClub"."Footbal Club"(club_name);


--*************************************************


-- "FootballClub"."Sportive Director Contract" definition


CREATE TABLE "FootballClub"."Sportive Director Contract" (
	sportivedirectorid int4 NOT NULL DEFAULT nextval('"FootballClub"."Sportive Director Contract1_sportivedirectorid_seq"'::regclass),
	startdate varchar NULL,
	enddate varchar NULL,
	salary int8 NULL,
	contract_status text NULL,
	sportivedirector_id int2 NULL,
	CONSTRAINT sportive_director_contract1_pk PRIMARY KEY (sportivedirectorid)
);


-- "FootballClub"."Sportive Director Contract" foreign keys

ALTER TABLE "FootballClub"."Sportive Director Contract" ADD CONSTRAINT sportive_director_contract_fk FOREIGN KEY (sportivedirector_id) REFERENCES "FootballClub"."Sportive Director"(sd_id);


--*************************************************


-- "FootballClub"."Trainer Contract" definition


CREATE TABLE "FootballClub"."Trainer Contract" (
	trainerid int4 NOT NULL DEFAULT nextval('"FootballClub"."Trainer Contract1_trainerid_seq1"'::regclass),
	startdate varchar NULL,
	enddate varchar NULL,
	salary int8 NULL,
	contract_status varchar NULL,
	t_id int2 NULL,
	CONSTRAINT trainer_contract1_pk PRIMARY KEY (trainerid)
);


-- "FootballClub"."Trainer Contract" foreign keys

ALTER TABLE "FootballClub"."Trainer Contract" ADD CONSTRAINT trainer_contract1_fk FOREIGN KEY (t_id) REFERENCES "FootballClub"."Trainers"(trainer_id);


--*************************************************


-- "FootballClub"."Trainers" definition


CREATE TABLE "FootballClub"."Trainers" (
	trainer_id int2 NOT NULL,
	t_name varchar NULL,
	t_position varchar NULL,
	t_age int2 NULL,
	"Club name" varchar NULL,
	t_address varchar NULL,
	t_phonenumber varchar NULL,
	CONSTRAINT trainers_pk PRIMARY KEY (trainer_id)
);


-- "FootballClub"."Trainers" foreign keys

ALTER TABLE "FootballClub"."Trainers" ADD CONSTRAINT trainers_fk2 FOREIGN KEY ("Club name") REFERENCES "FootballClub"."Footbal Club"(club_name);


--*************************************************


-- "FootballClub".coach definition

-- Drop table

-- DROP TABLE "FootballClub".coach;

CREATE TABLE "FootballClub".coach (
	coach_id int2 NOT NULL,
	c_name varchar NOT NULL,
	c_age int2 NULL,
	c_nation varchar NULL,
	club_name varchar NULL,
	c_address varchar NULL,
	c_phonenumber varchar NULL,
	CONSTRAINT coach_pk PRIMARY KEY (coach_id)
);


-- "FootballClub".coach foreign keys

ALTER TABLE "FootballClub".coach ADD CONSTRAINT coach_fk FOREIGN KEY (club_name) REFERENCES "FootballClub"."Footbal Club"(club_name);


--*************************************************


-- "FootballClub".select_talented definition

-- Drop table

-- DROP TABLE "FootballClub".select_talented;

CREATE TABLE "FootballClub".select_talented (
	sd_id1 int2 NOT NULL,
	p_id int2 NOT NULL,
	CONSTRAINT select_talented_pk PRIMARY KEY (sd_id1, p_id)
);


-- "FootballClub".select_talented foreign keys

ALTER TABLE "FootballClub".select_talented ADD CONSTRAINT select_talented_fk FOREIGN KEY (p_id) REFERENCES "FootballClub"."Players"(player_id);
ALTER TABLE "FootballClub".select_talented ADD CONSTRAINT select_talented_fk_1 FOREIGN KEY (sd_id1) REFERENCES "FootballClub"."Sportive Director"(sd_id);


--*************************************************


-- "FootballClub".suggest definition

-- Drop table

-- DROP TABLE "FootballClub".suggest;

CREATE TABLE "FootballClub".suggest (
	c_id int2 NOT NULL,
	decision varchar NULL,
	sd_id int2 NULL,
	talented_id int2 NULL
);


-- "FootballClub".suggest foreign keys

ALTER TABLE "FootballClub".suggest ADD CONSTRAINT suggest_fk FOREIGN KEY (sd_id,talented_id) REFERENCES "FootballClub".select_talented(sd_id1,p_id);
ALTER TABLE "FootballClub".suggest ADD CONSTRAINT suggest_fk_1 FOREIGN KEY (c_id) REFERENCES "FootballClub".coach(coach_id);


--*************************************************


-- "FootballClub"."transferrable_Players" definition

-- Drop table

-- DROP TABLE "FootballClub"."transferrable_Players";

CREATE TABLE "FootballClub"."transferrable_Players" (
	transfermarkt_id varchar NOT NULL,
	player_name varchar NULL,
	player_nation varchar NULL,
	player_age int2 NULL,
	player_position varchar NULL,
	"Cost" int8 NULL,
	"Previous Team" varchar NULL,
	CONSTRAINT transferrable_players_pk PRIMARY KEY (transfermarkt_id));


--*************************************************


--Create View Statement
CREATE OR REPLACE VIEW "FootballClub".showcurrent_first11
AS SELECT p.p_name,
    p.uniform_num,
    p.p_position,
    cs.first11
   FROM "FootballClub"."Players" p
     JOIN "FootballClub"."Current Squad" cs ON p.player_id = cs.p_id
  WHERE cs.first11 = 'Y';

--*************************************************

--Insertion İnto View
INSERT INTO "FootballClub".showcurrent_first11
(p_name, uniform_num, p_position, first11)
VALUES('Bilgin Avenoğlu', 10, 'Midfielder', 'Y');

--*************************************************

--Delete From View
DELETE FROM "FootballClub".showcurrent_first11
WHERE p_name='Bilgin Avenoğlu' AND uniform_num=10 AND p_position='Midfielder' AND first11='Y';

--*************************************************


//INSERT STATEMENTS

//We have only one Club in our Database So we have  only one Insert statement.

INSERT INTO "FootballClub"."Footbal Club" (club_name,establishyear,color) VALUES
('FENERBAHÇE S.K','1907','Yellow/DarkBlue')

--*************************************************
INSERT INTO "FootballClub"."Facilities" (f_id,f_type,"Place",club_name,f_season) VALUES
 (1,'Sport','Ankara/Çankaya','FENERBAHÇE S.K','Summer')
INSERT INTO "FootballClub"."Facilities" VALUES	(3,'Training','Ankara/Kazan','FENERBAHÇE S.K','Winter')
INSERT INTO "FootballClub"."Facilities" VALUES	(2,'Rest','Bolu/Topuk','FENERBAHÇE S.K','Winter')
INSERT INTO "FootballClub"."Facilities" VALUES	(4,'Training','Ankara/Nallıhan','FENERBAHÇE S.K','Spring')
INSERT INTO "FootballClub"."Facilities" VALUES	(5,'Rest','Ankara/Çankaya','FENERBAHÇE S.K','Spring')

--*************************************************
INSERT INTO "FootballClub"."Current Squad" (first11,reserves,p_id) VALUES('Y','N',1)
INSERT INTO "FootballClub"."Current Squad" VALUES('Y','N',4)
INSERT INTO "FootballClub"."Current Squad" VALUES('Y','N',2)
INSERT INTO "FootballClub"."Current Squad" VALUES('Y','N',13)
INSERT INTO "FootballClub"."Current Squad" VALUES('Y','N',14)
INSERT INTO "FootballClub"."Current Squad" VALUES('N','Y',12)
INSERT INTO "FootballClub"."Current Squad" VALUES('Y','N',3)
INSERT INTO "FootballClub"."Current Squad" VALUES('Y','N',9)

--*************************************************
//We have only one Manager in our team So we have  only one Insert statement.
INSERT INTO "FootballClub"."Managers" ("Managers_id","M-name","M-position",club_name,m_address,m_phonenumber) VALUES
(1,'Tolga Kurtuluş Çapın','Mütevelli Heyeti','FENERBAHÇE S.K','Ankara/Cankaya','5543456798');

--*************************************************
INSERT INTO "FootballClub"."Players" (player_id,p_name,p_position,p_age,uniform_num,club_name,trainer_id,player_status,p_nation) VALUES
(21,'Attila Szalai','Defence',23,41,'FENERBAHÇE S.K',3,'A Team','Hungary'),
INSERT INTO "FootballClub"."Players" VALUES (2,'Ozan Tufan','Midfielder',25,7,'FENERBAHÇE S.K',4,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (4,'İrfan Can Kahveci','Midfielder',25,19,'FENERBAHÇE S.K',4,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (5,'Caner Erkin','Defence',32,88,'FENERBAHÇE S.K',3,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (6,'Gökhan Gönül','Defence',36,77,'FENERBAHÇE S.K',3,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (7,'Serdar Aziz','Defence',30,4,'FENERBAHÇE S.K',3,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (10,'Altay Bayındır','Goalkeeper',23,1,'FENERBAHÇE S.K',1,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (15,'Mbwana Samatta','Forward',28,15,'FENERBAHÇE S.K',5,'A Team','Tanzania'),
INSERT INTO "FootballClub"."Players" VALUES (9,'Enner Valencia Lastra','Forward',31,13,'FENERBAHÇE S.K',2,'A Team','Ecuador'),
INSERT INTO "FootballClub"."Players" VALUES (1,'Mesut Özil','Midfielder',32,67,'FENERBAHÇE S.K',4,'A Team','Germany');
INSERT INTO "FootballClub"."Players" VALUES (8,'Luis Gustavo Dias','Midfielder',33,20,'FENERBAHÇE S.K',4,'A Team','Brazil'),
INSERT INTO "FootballClub"."Players" VALUES (16,'Flip Novak','Defence',30,37,'FENERBAHÇE S.K',3,'A Team','Czech Republic'),
INSERT INTO "FootballClub"."Players" VALUES (17,'Harun Tekin','Goalkeeper',31,15,'FENERBAHÇE S.K',1,'A Team','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (18,'Ertugrul Cetin','Goalkeeper',18,92,'FENERBAHÇE S.K',1,'U-19','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (3,'Bahadır Ünal','Forward',19,10,'FENERBAHÇE S.K',5,'U-19','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (12,'Abdüsselam Koç','Defence',19,17,'FENERBAHÇE S.K',3,'U-19','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (13,'Fatih Mehmet Yiğitel','Forward',17,21,'FENERBAHÇE S.K',2,'U-19','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (14,'Gokhan Yavas','Goalkeeper',18,33,'FENERBAHÇE S.K',1,'U-19','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (11,'Gökay Çağlayan','Midfielder',19,10,'FENERBAHÇE S.K',4,'U-19','Turkey'),
INSERT INTO "FootballClub"."Players" VALUES (19,'Nazim Sangare','Defence',26,35,'FENERBAHÇE S.K',3,'A Team','Germany');
INSERT INTO "FootballClub"."Players" VALUES (20,'Diego Perotti','Forward',32,11,'FENERBAHÇE S.K',5,'A Team','Argentina');

--*************************************************

INSERT INTO "FootballClub"."Sportive Director" (sd_id,sd_name,sd_age,club_name,sd_address,sd_phonenumber) VALUES
(2,'Tayfun Küçükyılmaz',38,'FENERBAHÇE S.K','Ankara','5441896741')
INSERT INTO "FootballClub"."Sportive Director" VALUES(3,'Emir Demir',34,'FENERBAHÇE S.K','Ankara','5546712535')
INSERT INTO "FootballClub"."Sportive Director" VALUES(1,'Emin Kuğu',31,'FENERBAHÇE S.K','Ankara','5124668974')

--*************************************************

INSERT INTO "FootballClub"."Trainers" (trainer_id,t_name,t_position,t_age,"Club name",t_address,t_phonenumber) VALUES
(3,'Diego Lugano','Defence',36,'FENERBAHÇE S.K','Ankara','5326589414')
INSERT INTO "FootballClub"."Trainers" VALUES(2,'Tolga Boduccuoğlu','Forward',31,'FENERBAHÇE S.K','Ankara','5057546969')
INSERT INTO "FootballClub"."Trainers" VALUES(1,'Volkan Demirel','Goalkeeper',36,'FENERBAHÇE S.K','Ankara','5426578921')
INSERT INTO "FootballClub"."Trainers" VALUES(4,'Alex De Souza','Midfielder',38,'FENERBAHÇE S.K','Brezilya','5146953241')
INSERT INTO "FootballClub"."Trainers" VALUES(5,'Bilgin Avenoğlu','Forward',42,'FENERBAHÇE S.K','İstanbul','5472589863')

--*************************************************

INSERT INTO "FootballClub"."transferrable_Players" (transfermarkt_id,player_name,player_nation,player_age,player_position,"Cost","Previous Team") 
VALUES('1','Atiba Hutcinson','Kanada',25,'Midfiedler',0,'BJK'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES ('4','Gheorghe Hagi','Romania',38,'Midfiedler',56000000,'Galatasaray'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('5','Kylian Mbappe','France',22,'Forward',68000000,'Paris Saint Germain'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('2','Lionel Messi','Argentina',33,'Forward',25000000,'Barcelona'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('3','Cristiano Ronaldo','Portugal',36,'Forward',96000000,'Juventus'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('6','Thiago Silva','Brazil',31,'Defence',45000000,'Paris Saint Germain'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('7','Samuel Umtiti','France',27,'Defence',37000000,'Barcelona'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('8','Fernando Muslera','Uruguay',34,'Goalkeeper',59000000,'Galatasaray'),
INSERT INTO "FootballClub"."transferrable_Players" VALUES('9','Jeo Hart','England',33,'Goalkeeper',33000000,'Tottenham Hotspur');


--*************************************************

INSERT INTO "FootballClub".coach (coach_id,c_name,c_age,c_nation,club_name,c_address,c_phonenumber) VALUES
(3,'Şenol Güneş',52,'Turkey','FENERBAHÇE S.K','Ankara','5441239674')
INSERT INTO "FootballClub".coach VALUES	(1,'Fatih Terim',45,'Turkey','FENERBAHÇE S.K','Ankara','5516253205')
INSERT INTO "FootballClub".coach VALUES	(2,'Erol Bulut',38,'Turkey','FENERBAHÇE S.K','Ankara/Baglica','5054253214')
INSERT INTO "FootballClub".coach VALUES	(4,'Erol Bulut',38,'Turkey','FENERBAHÇE S.K','Ankara','5326856896')

--*************************************************

INSERT INTO "FootballClub".select_talented (sd_id1,p_id) VALUES (2,11)
INSERT INTO "FootballClub".select_talented VALUES(1,13)
INSERT INTO "FootballClub".select_talented VALUES(1,12)
INSERT INTO "FootballClub".select_talented VALUES(2,8)
INSERT INTO "FootballClub".select_talented VALUES(3,9)
INSERT INTO "FootballClub".select_talented VALUES(3,12)

--*************************************************

INSERT INTO "FootballClub".squad_decision (p_id,c_id) VALUES (4,1)
INSERT INTO "FootballClub".squad_decision VALUES(5,2)
INSERT INTO "FootballClub".squad_decision VALUES(7,2)
INSERT INTO "FootballClub".squad_decision VALUES(10,2)
INSERT INTO "FootballClub".squad_decision VALUES(1,2)
INSERT INTO "FootballClub".squad_decision VALUES(6,1)
INSERT INTO "FootballClub".squad_decision VALUES(12,3)
INSERT INTO "FootballClub".squad_decision VALUES(9,1)
INSERT INTO "FootballClub".squad_decision VALUES(13,3)
INSERT INTO "FootballClub".squad_decision VALUES(2,3)
INSERT INTO "FootballClub".squad_decision VALUES(3,3)

--*************************************************

INSERT INTO "FootballClub".suggest (c_id,decision,sd_id,talented_id) VALUES (2,'NULL',3,12)
INSERT INTO "FootballClub".suggest VALUES(1,'NULL',1,12)
INSERT INTO "FootballClub".suggest VALUES(2,'Accept',3,9)
INSERT INTO "FootballClub".suggest VALUES(3,'Accept',2,8)

--*************************************************
INSERT INTO "FootballClub"."Trainer Contract" (startdate,enddate,salary,contract_status,t_id) VALUES
('19/09/2014','20/04/2020',1800000,'A Team',1)
INSERT INTO "FootballClub"."Trainer Contract" VALUES ('08/01/2021','24/08/2024',985000,'A Team',4)

--*************************************************
INSERT INTO "FootballClub"."Sportive Director Contract" (startdate,enddate,salary,contract_status,sportivedirector_id) VALUES
('17/04/2017','19/06/2020',160000,'A Team',3)
INSERT INTO "FootballClub"."Sportive Director Contract" VALUES('28/11/2019','18/10/2024',98000,'A Team',2)
INSERT INTO "FootballClub"."Sportive Director Contract"	VALUES('0','28/09/2023',365000,'U-19',1)


--*************************************************

INSERT INTO "FootballClub"."Player Contract" (startdate,enddate,salary,contract_status,p_id) VALUES
('2018-04-24','2023-06-16',17650000,'A Team',6)
INSERT INTO "FootballClub"."Player Contract" VALUES('2019-04-21','2024-11-07',21000000,'A Team',5)
INSERT INTO "FootballClub"."Player Contract" VALUES('2017-08-15','2022-06-17',4250000,'U-19',7)
INSERT INTO "FootballClub"."Player Contract" VALUES('2016-03-17','2021-02-15',18000000,'A Team',8)
INSERT INTO "FootballClub"."Player Contract" VALUES('24/12/2020','18/08/2024',785000,'U-19',12)

--*************************************************

INSERT INTO "FootballClub"."Coach Contract" (startdate,enddate,salary,contract_status,c_id) VALUES
('2018-09-19','2024-08-21',14500000,'A Team',2)
INSERT INTO "FootballClub"."Coach Contract" VALUES('27/07/2019','28/12/2023',785600,'A',2)

--*************************************************

// Alter Table Statement
ALTER TABLE "FootballClub"."Facilities" ADD f_season varchar NULL;


--*************************************************
//UPDATE and DELETE STATEMENTS

UPDATE "FootballClub"."Players" SET p_name='Attila Sezai' ,trainer_id=3, player_status='U-19' 
WHERE player_id=21;

DELETE FROM "FootballClub"."Players" WHERE player_id= 6; 

--*************************************************

UPDATE "FootballClub"."Trainers" SET  t_address='Istanbul/Bebek', t_phonenumber='5473288596'
WHERE trainer_id=2;

DELETE FROM "FootballClub"."Trainers" WHERE t_name='Volkan Demirel'

--*************************************************
UPDATE "FootballClub"."Sportive Director"
SET sd_name='Igor Koskov', 
WHERE sd_id=2;

DELETE FROM "FootballClub"."Sportive Director" WHERE t_name='Igor Koskov'

--*************************************************

UPDATE "FootballClub"."coach" SET  c_nation='Germany' 
WHERE c_name='Erol Bulut'

DELETE FROM "FootballClub"."coach"  WHERE coach_id=4

--*************************************************
UPDATE "FootballClub"."Coach Contract"
SET contract_status='A Team'
WHERE salary>800000

DELETE FROM "FootballClub"."Coach Contract"  WHERE coachid=1

--*************************************************
UPDATE "FootballClub"."Current Squad"
SET first11='N', reserves='Y'
WHERE p_id= 4;

DELETE FROM "FootballClub"."Current Squad"  WHERE p_id=14

--*************************************************
UPDATE "FootballClub"."Facilities"
SET f_type='Winter' 
WHERE f_id=5

DELETE FROM "FootballClub"."Facilities" WHERE f_id=4

--*************************************************
UPDATE "FootballClub"."Footbal Club"
SET   color='Red/Yellow'
WHERE club_name='FENERBAHÇE S.K'

DELETE FROM "FootballClub"."Footbal Club" WHERE color='Yellow/DarkBlue'

--*************************************************
UPDATE "FootballClub"."Managers"
SET   "M-position"='Club Administrator' 
WHERE Managers_id=1

DELETE FROM "FootballClub"."Managers" WHERE M-name = 'Tolga Kurtuluş Çapın'

--*************************************************

UPDATE "FootballClub"."Player Contract"
SET startdate='10/05/2021', enddate='28/11/2025'
WHERE p_id=6

DELETE FROM "FootballClub"."Player Contract" WHERE p_id= 7

--*************************************************
UPDATE "FootballClub"."Sportive Director Contract"
SET  contract_status='U-19' 
WHERE salary < 100000

DELETE FROM "FootballClub"."Sportive Director Contract" WHERE sportivedirector_id=2

--*************************************************
UPDATE "FootballClub"."Trainer Contract"
SET   enddate=' 21/09/2025'
WHERE t_id=4 

DELETE FROM "FootballClub"."Trainer Contract" WHERE t_id=3

--*************************************************
UPDATE "FootballClub"."select_talented"
SET p_id=11
WHERE sd_id1=2

DELETE FROM "FootballClub"."select_talented" WHERE p_id=8
 
--*************************************************

UPDATE "FootballClub"."squad_decision"
SET c_id=3;
WHERE p_id=10

DELETE FROM "FootballClub"."squad_decision" WHERE p_id=7

--*************************************************
UPDATE "FootballClub"."suggest"
SET   decision='Decline' 
WHERE talented_id =9

DELETE FROM "FootballClub"."suggest" WHERE talented_id=12

--*************************************************

UPDATE "FootballClub"."transferrable_Players"
SET "Cost"=0, 
WHERE transfermarkt_id='6

DELETE FROM "FootballClub"."transferrable_Players" WHERE talented_id=12

--*************************************************
 












