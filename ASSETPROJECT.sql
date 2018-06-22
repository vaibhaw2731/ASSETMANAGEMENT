CREATE TABLE LOCATION(ID VARCHAR(25) NOT NULL,
						OFFICETYPE CHAR(50) NOT NULL,
                        CITY CHAR(50) NOT NULL,
                        STATE CHAR(50) NOT NULL,
                        OFFICELOC VARCHAR(100),
                        OFFICEADD VARCHAR(800),
                        PRIMARY KEY(ID))



DESC LOCATION



CREATE TABLE CATEGORY(ID VARCHAR(25) NOT NULL,
					  CATEGORY CHAR(50) NOT NULL,
					  SUBCAT CHAR(50),
                      PRIMARY KEY(ID))
                      
                      
DESC CATEGORY


CREATE TABLE LOCALDETAILS(ID VARCHAR(30) NOT NULL,
						  NAME CHAR(50) NOT NULL,
						  CONTACT VARCHAR(20),
                          EMAIL VARCHAR(40),
                          LOCATIONID VARCHAR(25) NOT NULL,
                          PRIMARY KEY(ID),
                          FOREIGN KEY (LOCATIONID) REFERENCES LOCATION(ID))


DESC LOCALDETAILS 


CREATE TABLE VENDOR(ID VARCHAR(25) NOT NULL,
					NAME CHAR(40) NOT NULL,
                    CONTACT VARCHAR(20),
                    PRIMARY KEY(ID))


DESC VENDOR


CREATE TABLE ASSET(SERIAL_NO VARCHAR(40) NOT NULL,
				   ASSETID VARCHAR(25) NOT NULL,
				   DETAIL CHAR(30) NOT NULL,
                   MAKE CHAR(30) NOT NULL,
                   MODEL VARCHAR(40) NOT NULL,
                   MACADD VARCHAR(40),
                   IPADD VARCHAR(20),
                   HOSTNAME VARCHAR(30),
                   STATUS CHAR(20),
                   STO VARCHAR(30),
                   STN VARCHAR(30),
                   STNDATE VARCHAR(30),
                   GRN VARCHAR(30),
                   GATEPASS VARCHAR(30),
                   VENDORID VARCHAR(30),
                   LOCALID VARCHAR(30),
                   LOCATIONID VARCHAR(30) NOT NULL,
                   PRIMARY KEY(SERIAL_NO),
                   FOREIGN KEY(ASSETID) REFERENCES CATEGORY(ID),
                   FOREIGN KEY(VENDORID) REFERENCES VENDOR(ID),
                   FOREIGN KEY(LOCALID) REFERENCES LOCALDETAILS(ID),
                   FOREIGN KEY(LOCATIONID) REFERENCES LOCATION(ID))
                   
DESC ASSET


DROP TABLE ASSET

