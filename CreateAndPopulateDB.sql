DROP DATABASE IF EXISTS back_row ;
CREATE DATABASE back_row;

USE back_row;

DROP TABLE IF EXISTS MESSAGES;

CREATE TABLE MESSAGES
(
MessageID			INT 								PRIMARY KEY			AUTO_INCREMENT,
PostName			VARCHAR(30),
PostDate				INT,							
Email					VARCHAR(30),			
Message				VARCHAR(400)

);

INSERT INTO MESSAGES 
(PostName, PostDate, Email, Message)
VALUES
("John Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 1), "johndoe@fakemail.com", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Praesent iaculis ligula eleifend orci condimentum fermentum. 
Duis urna elit, semper ac purus ac, egestas consequat risus. 
Vestibulum pretium, libero ac posuere tincidunt, nibh mauris sollicitudin massa, 
a malesuada lorem nisi rhoncus augue."),

("Jane Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 2), "janedoe@fakemail.com", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Praesent iaculis ligula eleifend orci condimentum fermentum. 
Duis urna elit, semper ac purus ac, egestas consequat risus. 
Vestibulum pretium, libero ac posuere tincidunt, nibh mauris sollicitudin massa, 
a malesuada lorem nisi rhoncus augue."),

("Bobby Mcgee", unix_timestamp('2018-12-14 01:00:00') + (86400 * 4), "bobmcgee@fakemail.com","Proin volutpat dignissim molestie. 
Curabitur neque felis, dapibus eget mattis a, feugiat molestie elit. Sed facilisis lectus nunc, vel venenatis diam ullamcorper nec."),

("Randall Stephens", unix_timestamp('2018-12-14 01:00:00') + (86400 * 7), "rstephens@fakemail.com", "Donec tortor massa, aliquet quis vestibulum ac, accumsan at lorem."),

("Rolo Tomasi", unix_timestamp('2018-12-14 01:00:00') + (86400 * 9), "roto@fakemail.com", "In turpis erat, viverra at fermentum et, pulvinar dignissim purus. Proin quis nulla et elit eleifend tristique."),

("John Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 10), "johndoe@fakemail.com", "This is."),

("Jane Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 12), "janedoe@fakemail.com", "A test."),

("Bobby Mcgee", unix_timestamp('2018-12-14 01:00:00') + (86400 * 14), "bobmcgee@fakemail.com","It is."),

("Randall Stephens", unix_timestamp('2018-12-14 01:00:00') + (86400 * 17), "rstephens@fakemail.com", "Only a test."),

("Rolo Tomasi", unix_timestamp('2018-12-14 01:00:00') + (86400 * 19), "roto@fakemail.com", "Rutabega"),

("John Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 20), "johndoe@fakemail.com", "Shark"),

("Jane Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 22), "janedoe@fakemail.com", "Purple"),

("Bobby Mcgee", unix_timestamp('2018-12-14 01:00:00') + (86400 * 24), "bobmcgee@fakemail.com","Burrito"),

("Randall Stephens", unix_timestamp('2018-12-14 01:00:00') + (86400 * 27), "rstephens@fakemail.com", "Donkey"),

("Rolo Tomasi", unix_timestamp('2018-12-14 01:00:00') + (86400 * 29), "roto@fakemail.com", "France"),

("John Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 30), "johndoe@fakemail.com", "Breezy"),

("Jane Doe", unix_timestamp('2018-12-14 01:00:00') + (86400 * 32), "janedoe@fakemail.com", "This is a dumb comment."),

("Bobby Mcgee", unix_timestamp('2018-12-14 01:00:00') + (86400 * 34), "bobmcgee@fakemail.com","Snarky."),

("Randall Stephens", unix_timestamp('2018-12-14 01:00:00') + (86400 * 37), "rstephens@fakemail.com", "jfksld;fhgiuoas;jfgi"),

("Rolo Tomasi", unix_timestamp('2018-12-14 01:00:00') + (86400 * 39), "roto@fakemail.com", "I love leaving comments!");


DROP TABLE IF EXISTS ADMINS;

CREATE TABLE ADMINS
(
AdminID			INT 								PRIMARY KEY			AUTO_INCREMENT,
Username			VARCHAR(30)		UNIQUE,
AdminPassword		VARCHAR(30)	UNIQUE

);

INSERT INTO ADMINS
(Username, AdminPassword)
VALUES
( "Fake Admin", "BadPassword"),
( "admin2", "a2a2a2"),
( "admin3", "a3a3a3"),
( "admin4", "a4a4a4");

DROP TABLE IF EXISTS PREFERENCES;

CREATE TABLE PREFERENCES
(
PreferenceID			INT 								PRIMARY KEY			AUTO_INCREMENT,
PostName		Boolean,
PostEmail		Boolean,
PostMessage   Boolean,
DisplayDate     Boolean,
DisplayName     Boolean,
DisplayEmail     Boolean,
PageResults     INT            					NOT NULL,
TotalResults     INT            					NOT NULL
);

INSERT INTO PREFERENCES

VALUES
( 1, true,  true, true, true, true, true, 5, 20);
