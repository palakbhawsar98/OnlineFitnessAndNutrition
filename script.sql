CREATE TABLE fitness.user (
  ID int(11) NOT NULL AUTO_INCREMENT,
  FirstName varchar(255) DEFAULT NULL,
  LastName varchar(255) DEFAULT NULL,
  Age int(2) DEFAULT NULL,
  UserName varchar(255) DEFAULT NULL,
  Password varchar(255) DEFAULT NULL,
  Cpassword varchar(255) DEFAULT NULL,
  PRIMARY KEY (ID)
);

