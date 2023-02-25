BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "dataset" (
	"job_title"	INTEGER,
	"job_location"	INTEGER,
	"city"	INTEGER,
	"state"	INTEGER,
	"country"	INTEGER,
	"zip_code"	INTEGER,
	"company_name"	INTEGER,
	"employer_location"	INTEGER,
	"job_post_id"	TEXT,
	"special_need"	INTEGER,
	"job_type"	TEXT,
	"apply_by"	TEXT,
	"field13"	TEXT
);
CREATE TABLE IF NOT EXISTS "special_needs_category" (
	"special_need"	INTEGER,
	"job_post_id"	TEXT
);
CREATE TABLE IF NOT EXISTS "job_type_info" (
	"job_post_id"	TEXT,
	"job_type"	TEXT,
	"job_type_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "job_post_skillset" (
	"company_name"	TEXT,
	"job_type"	TEXT,
	"job_description"	TEXT,
	"job_type_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "job_location_info" (
	"job_location"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"country"	TEXT,
	"zip_code"	INTEGER,
	"job_post_id"	TEXT,
	"location_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "job_posting" (
	"job_post_id"	INTEGER DEFAULT 'NOT NULL',
	"job_title"	TEXT DEFAULT 'NOT NULL',
	"job_description"	TEXT,
	"company_name"	TEXT DEFAULT 'NOT NULL',
	"job_type_id"	INTEGER DEFAULT 'NOT NULL',
	"location_id"	INTEGER,
	"apply_by"	TEXT,
	PRIMARY KEY("job_post_id")
);
INSERT INTO "dataset" ("job_title","job_location","city","state","country","zip_code","company_name","employer_location","job_post_id","special_need","job_type","apply_by","field13") VALUES ('Shift Manager','Mission Hills, CA 91345','Mission Hills','CA','United States',91345,'Del Taco LLC','Mission Hills, CA 91345','511f9a53920f4641d701d51d3589349f',1,'sales','10/29/22','abc'),
 ('Operations Support Manager','Atlanta, GA 30342','Atlanta','GA','United States',30342,'FOCUS Brands','Cedar Rapids, IA 52404','4955daf0a3facbe2acb6c429ba394e6d',4,'operations','08/05/22','asbdja'),
 ('Senior Product Manager - Data','Chicago, IL','Chicago','IL','United States',1229,'Vibes','Somerville','a0e0d12df1571962b785f17f43ceae12',3,'data','10/29/22','d.ndjknfkjne'),
 ('Part-Time Office Concierge','Festus, MO','Festus','MO','United States',2119,'Coldwell Banker Real Estate LLC','Somerville','56e411fd731f76ac916bf4fb169250e9',3,'sales','06/03/23','dbhkebkw'),
 ('Print & Marketing Associate','Cedar Rapids, IA 52404','Cedar Rapids','IA','United States',52404,'Staples Stores','Cedar Rapids, IA 52404','3fff5c0ad6981bf4bff6260bd5feab63',2,'sales','10/19/23','bhkeulq'),
 ('Cyber IT Risk & Strategy Senior Consultant','Washington, DC 20003','Washington','DC','United States',20003,'Deloitte','Somerville','3fcf91a3e406f0727fe30ee09e7910bf',3,'IT','10/29/22','qjhveqjvd'),
 ('Sales Associate, Retail Part Time','Eastanollee, GA 30538','Eastanollee','GA','United States',30538,'GNC - General Nutrition Centers','4 Wakullah St','9e23f19b5e9502a49ba97fd2e5b78906',1,'sales','04/05/23','qv,wrq'),
 ('Home Lending Branch Manager-Spokane','Spokane, WA 99201','Spokane','WA','United States',99201,'Umpqua Bank','4 Wakullah St','f570dac5fa316794e7460d6307c0be86',4,'Real Estate','01/04/23','uqiglbdk'),
 ('Property Manager in Training (MIT)','Durham, NC','Durham','NC','United States',12156,'PRG Real+E10 Estate PA','Mission Hills, CA 91345','219550967b49d887ac6574d63b001d1b',3,'IT','10/29/22','uokbwjdm');
INSERT INTO "special_needs_category" ("special_need","job_post_id") VALUES (1,'511f9a53920f4641d701d51d3589349f'),
 (4,'4955daf0a3facbe2acb6c429ba394e6d'),
 (3,'a0e0d12df1571962b785f17f43ceae12'),
 (3,'56e411fd731f76ac916bf4fb169250e9'),
 (2,'3fff5c0ad6981bf4bff6260bd5feab63'),
 (3,'3fcf91a3e406f0727fe30ee09e7910bf'),
 (1,'9e23f19b5e9502a49ba97fd2e5b78906'),
 (4,'f570dac5fa316794e7460d6307c0be86'),
 (3,'219550967b49d887ac6574d63b001d1b');
INSERT INTO "job_type_info" ("job_post_id","job_type","job_type_id") VALUES ('511f9a53920f4641d701d51d3589349f','sales',23),
 ('4955daf0a3facbe2acb6c429ba394e6d','operations',24),
 ('a0e0d12df1571962b785f17f43ceae12','data',25),
 ('56e411fd731f76ac916bf4fb169250e9','sales',26),
 ('3fff5c0ad6981bf4bff6260bd5feab63','sales',27),
 ('3fcf91a3e406f0727fe30ee09e7910bf','IT',28),
 ('9e23f19b5e9502a49ba97fd2e5b78906','sales',29),
 ('f570dac5fa316794e7460d6307c0be86','Real Estate',30),
 ('219550967b49d887ac6574d63b001d1b','IT',31);
INSERT INTO "job_post_skillset" ("company_name","job_type","job_description","job_type_id") VALUES ('Del Taco LLC','sales','sample',23),
 ('FOCUS Brands','operations','sample',24),
 ('Vibes','data','sample',25),
 ('Coldwell Banker Real Estate LLC','sales','sample',26),
 ('Staples Stores','sales','sample',27),
 ('Deloitte','IT','sample',28),
 ('GNC - General Nutrition Centers','sales','sample',29),
 ('Umpqua Bank','Real Estate','sample',30),
 ('PRG Real+E10 Estate PA','IT','sample',31);
INSERT INTO "job_location_info" ("job_location","city","state","country","zip_code","job_post_id","location_id") VALUES ('Mission Hills, CA 91345','Mission Hills','CA','United States',91345,'511f9a53920f4641d701d51d3589349f',40),
 ('Atlanta, GA 30342','Atlanta','GA','United States',30342,'4955daf0a3facbe2acb6c429ba394e6d',41),
 ('Chicago, IL','Chicago','IL','United States',1229,'a0e0d12df1571962b785f17f43ceae12',42),
 ('Festus, MO','Festus','MO','United States',2119,'56e411fd731f76ac916bf4fb169250e9',43),
 ('Cedar Rapids, IA 52404','Cedar Rapids','IA','United States',52404,'3fff5c0ad6981bf4bff6260bd5feab63',44),
 ('Washington, DC 20003','Washington','DC','United States',20003,'3fcf91a3e406f0727fe30ee09e7910bf',45),
 ('Eastanollee, GA 30538','Eastanollee','GA','United States',30538,'9e23f19b5e9502a49ba97fd2e5b78906',46),
 ('Spokane, WA 99201','Spokane','WA','United States',99201,'f570dac5fa316794e7460d6307c0be86',47),
 ('Durham, NC','Durham','NC','United States',12156,'219550967b49d887ac6574d63b001d1b',48);
INSERT INTO "job_posting" ("job_post_id","job_title","job_description","company_name","job_type_id","location_id","apply_by") VALUES (1,'Shift Manager','sample','Del Taco LLC',23,40,'10/29/22'),
 (2,'Operations Support Manager','sample','FOCUS Brands',24,41,'08/05/22'),
 (3,'Senior Product Manager - Data','sample','Vibes',25,42,'10/29/22'),
 (4,'Part-Time Office Concierge','sample','Coldwell Banker Real Estate LLC',26,43,'06/03/23'),
 (5,'Print & Marketing Associate','sample','Staples Stores',27,44,'10/19/23'),
 (6,'Cyber IT Risk & Strategy Senior Consultant','sample','Deloitte',28,45,'10/29/22'),
 (7,'Sales Associate, Retail Part Time','sample','GNC - General Nutrition Centers',29,46,'04/05/23'),
 (9,'Property Manager in Training (MIT)','sample','PRG Real+E10 Estate PA',31,48,'10/29/22'),
 (13,'Home Lending Branch Manager-Spokane','sample','Umpqua Bank',30,47,'01/04/23');
COMMIT;
