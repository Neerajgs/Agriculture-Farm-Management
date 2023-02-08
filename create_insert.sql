CREATE DATABASE  FARMMANAGEMENT;
USE FARMMANAGEMENT;


CREATE TABLE Farmers
(
farmerID int  NOT NULL PRIMARY KEY,
farmerName varchar(8000) NOT NULL,
farmerShift varchar(8000),
farmerPhoneNumber bigint UNIQUE NOT NULL 
);



CREATE TABLE harvester
(
harvesterID int PRIMARY KEY,
harvesterName varchar(8000) NOT NULL,
harvesterPhoneNumber bigint NOT NULL ,
farmerID Int,
FOREIGN KEY (farmerID) REFERENCES farmers (farmerID)
);



CREATE TABLE farmproduce
(
harvesterID int,
FOREIGN KEY (harvesterID) REFERENCES harvester (harvesterID),
farmproducename varchar(100) NOT NULL PRIMARY KEY ,
farmproducebasketquantity int  NOT NULL 
);



CREATE TABLE farmtools
(
farmertoolsID int PRIMARY KEY,
farmerID Int,
FOREIGN KEY (farmerID) REFERENCES farmers (farmerID),
toolname varchar(8000) NOT NULL ,
toolquantity int  NOT NULL 
);







ALTER TABLE Farmers ADD FarmerNationality varchar(8000);




INSERT INTO Farmers VALUES('1','Neeraj','Morning','8146640449','India'),
('2','Pratham','Afternoon','08144640489','Pakistan'),
('3','Nithish','Evening','07043610459','Africa'),
('4','Satish','Evening','+9135940312','Sri Lanka'),
('5','Sharath','Morning','+6151690314','Australia');



INSERT INTO Harvester VALUES('1','Nilkant','080753452890',1),
('2','Manik','081417319834',2),
('3','Pradyumna','07057215444',2),
(4,'Pratham','123456789',4),
(5,'Shreepathi','9856649873',3),
(6,'Pranav','98888347698',5);


INSERT INTO farmproduce VALUES('1','Apple','2'),
('2','Mango','5'),
(3,'Carrot',6),
(5,'Beetroot',4),
(6,'Banana',1);





INSERT INTO farmtools VALUES('1','1','cutlass','4');
INSERT INTO farmtools VALUES('2','2','Spades','6');
INSERT INTO farmtools VALUES('3','3','Waterringcan','7');
INSERT INTO farmtools VALUES(4,4,'Srinkler',2);
INSERT INTO farmtools VALUES(5,2,'Axe',3);
INSERT INTO farmtools VALUES(6,3,'Shovel',2);





