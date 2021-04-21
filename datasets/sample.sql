BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','','','','','','','');
INSERT INTO "Account" VALUES(2,'Sample Account for Entitlements','','','','','','','');
INSERT INTO "Account" VALUES(3,'A Local Farm','localcsaourtown.com','505-555-1212','5980 Agua Fria St.','Santa Fe','NM','87501','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Description__c" VARCHAR(255), 
	"Storage_Requirements__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'Pumpkins','','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'Frozen Peas','Frozen','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Notes__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-04-30','Scheduled','This food needs to be processed right away - it''s very fresh!','3');
COMMIT;
