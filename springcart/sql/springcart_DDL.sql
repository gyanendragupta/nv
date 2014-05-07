Drop table AD_DATA;

Drop table CATEGORY;
CREATE TABLE CATEGORY (
	Cat_Id int(20) NOT NULL AUTO_INCREMENT,
	Cat_Desc varchar(25) NOT NULL,
  	PRIMARY KEY  (Cat_Id)  
);

Drop table GROUP_DETAILS;
CREATE TABLE GROUP_DETAILS (
	Grp_Id int(20) NOT NULL AUTO_INCREMENT,
	Grp_Name varchar(100) NOT NULL,
	Grp_Desc varchar(100) NOT NULL,
  	PRIMARY KEY  (Grp_Id)  
);

Drop table USER;
CREATE TABLE USER (
	User_Id int(20) NOT NULL AUTO_INCREMENT,
	User_Name varchar(100) NOT NULL,
	User_Email varchar(100) NOT NULL,
	User_Password varchar(50) NOT NULL,
	User_Mobile int(15) NOT NULL,
	User_Address varchar(100),
	User_City varchar(50),
	User_Pincode int(6), 
  	PRIMARY KEY  (User_Id)  
);


CREATE TABLE AD_DATA (
  Ad_Id int (50) NOT NULL AUTO_INCREMENT,
  Cat_Id int(20) NOT NULL,
  Grp_Id int(20) NOT NULL,
  User_id int(20) NOT NULL,
  Ad_Title varchar(50) NOT NULL,
  Ad_Details varchar(400) NOT NULL,
  PRIMARY KEY  (Ad_Id,Grp_Id),
  CONSTRAINT ADDATA_fk_1 FOREIGN KEY (Cat_Id) REFERENCES CATEGORY (Cat_Id),
  CONSTRAINT ADDATA_fk_2 FOREIGN KEY (Grp_Id) REFERENCES GROUP_DETAILS (Grp_Id),
  CONSTRAINT ADDATA_fk_3 FOREIGN KEY (User_id) REFERENCES USER (User_Id)
);