DROP DATABASE IF EXISTS back_row ;
CREATE DATABASE back_row;

USE back_row;

DROP TABLE IF EXISTS MESSAGES, ADMINS;

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
("Diana Mullins", unix_timestamp('2018-1-04 01:04:00') + (86400 * 1), "johndoe@fakemail.com", 
" adipiscing elit. eleifend orci condimentum fermentum.  ac purus ac, egestas consequat risus. 
Vestibulum pretium, libero ac posuere tincidunt, nibh mauris sollicitudin massa,  malesuada "),

("Sheila Chapman", unix_timestamp('2018-12-13 08:00:00') + (86400 * 2), "janedoe@fakemail.com", 
" consectetur adipiscing elit. Praesent iaculis ligula eleifend orci condimentum fermentum. 
Duis urna elit, semper ac purus ac, egestas consequat risus. Vestibulum pretium, libero 
ac posuere tincidunt, nibh mauris sollicitudin massa"),

("Joanna Cobb", unix_timestamp('2018-02-14 01:00:00') + (86400 * 4), "Joanna@fakemail.com",
"Proin volutpat dignissim molestie. Curabitur neque felis, dapibus eget mattis a, feugiat 
molestie elit. Sed facilisis lectus nunc, vel venenatis diam ullamcorper nec."),


("Derex Red", unix_timestamp('2017-03-14 01:04:33') + (86400 * 7), "Derex@fakemail.com", 
"Donec tortor massa, aliquet quis vestibulum ac, ullam quis feugiat libero. Donec accumsan
 urna ex, et pulvinar nisl ullamcorperaccumsan at lorem.congue. In aliquet at mi ac"),


("Zachary Norris ", unix_timestamp('2016-12-11 01:00:00') + (86400 * 9), "Zachary@fakemail.com", 
"In turpis erat, viverra at fermentum et, pulvinar dignissim purus. Proin quis nulla et elit 
eleifend tristique."),


("Jayden December", unix_timestamp('2018-10-14 01:03:00') + (86400 * 10), "Jaydenyhh@fakemail.com",
 "metus facilisis tincidunt commodo. Aliquam facilisis interdum enim sit amet feugiat. Donec auctor 
 tellus sed massa gravida vulputate. Nullam turpis sem, viverra nec interdum in, luctus eu ligula."),


("Lorene Underwood ", unix_timestamp('2018-02-24 01:00:00') + (86400 * 12), "Lorenegt@fakemail.com",
 "ongue. In aliquet at mi ac varius. Aliquam bibendum purus quam, eget scelerisque leo cursus eget. 
 lam quis feugiat libero. Donec accumsan urna ex, et pulvinar nisl ullamcorper eget. "),

("Bobby Mcgee", unix_timestamp('2018-01-24 01:10:00') + (86400 * 14), "bobmcgee@fakemail.com",
"bibendum purus, ut ullamcorper augue porttitor eu. Donec accumsan leo id dui finibus pulvinar.
 Sed a aliquam enim. Nullam felis sapien, aliquet ut aliquet id, faucibus quis diam. Ut pellentesque
 ipsum sed pharetra cursus. Nam facilisis, nulla euismod fringilla dignissim,"),

("Randall Stephens", unix_timestamp('2018-02-14 02:10:00') + (86400 * 17), "Randallephens@fakemail.com", 
"Morbi non elit eget purus porttitor aliquet. Nullam quis feugiat libero. Donec accumsan urna ex, et
 pulvinar nisl ullamcorper eget. Morbi orci nibh, volutpat eget augue et, sodales commodo enim. Sed 
 viverra facilisis felis,"),

("Guadalupe Roberson", unix_timestamp('2018-01-14 01:00:00') + (86400 * 19), "Guadaluroto@fakemail.com",
 "aliquet sed dolor vitae, aliquet consequat massa. Integer ipsum lorem, hendrerit in massa ac, blandit 
 sagittis quam. Vivamus"),

("Alexandra Cohen", unix_timestamp('2018-11-14 01:00:00') + (86400 * 20), "joAlexandr@fakemail.com", 
"tristique ornare nulla sit amet dapibus. Suspendisse sodales dignissim diam, placerat viverra nunc
 fringilla vel. Nullam tincidunt metusfacilisis tincidunt commodo. Aliquam facilisis interdum enim
 sit amet feugiat."),

("Dorothy Black", unix_timestamp('2018-11-15 01:10:00') + (86400 * 22), "jaDoroth@fakemail.com", 
"rcu nisl, a porta elit feugiat quis. Quisque maximus elit ac ligula accumsan auctor. Donec suscipit,
 dui ut luctus scelerisque, augue augue bibendum massa,"),

("Wallace James ", unix_timestamp('2018-01-19 01:00:00') + (86400 * 24), "Wallagee@fakemail.com",
"Pellentesque vitae leo quis urna varius convallis vitae at turpis. Pellentesque porta quis ligula 
in semper. "),

("Philip Walton ", unix_timestamp('2018-12-14 01:00:00') + (86400 * 27), "rstePhilip@fakemail.com", 
" Sed nulla erat, lacinia vitae velit quis, accumsan semper lacus. Vestibulum ante ipsum primis in
 faucibus orci luctus et ultrices posuere cubilia Curae; Nunc sed mauris sed felis ultrices fermentum. 
 Pellentesque eget lectus imperdiet, "),

("Whitney Bailey", unix_timestamp('2018-12-15 01:00:00') + (86400 * 29), "Whitney@fakemail.com", 
"Curabitur metus risus, suscipit vitae cursus nec, lacinia vel sapien. Fusce dignissim enim nec 
eros condimentum feugiat."),

("Leonard Marshall ", unix_timestamp('2018-11-08 01:00:00') + (86400 * 30), "Leonarde@fakemail.com", 
"erit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
Aenean at dictum sem, a finibus velit. Quisque interdum tincidunt libero a dignissim. Nullam pharetra 
tincidunt nisl vitae rutrum."),

("Thelma Kennedy", unix_timestamp('2018-11-19 01:00:00') + (86400 * 32), "jaThelma@fakemail.com", 
"Nunc pretium id lacus sed rutrum. Duis eu metus quis enim faucibus faucibus. Curabitur imperdiet
 sagittis faucibus. Donec fringilla mattis justo. Sed ullamcorper ut ante non elementum.Duis molestie
 nibh tellus, vel sollicitudin mauris ullamcorper malesuada."),

("Bradford Powers", unix_timestamp('2018-04-19 01:00:00') + (86400 * 34), "Bradford@fakemail.com",
"Phasellus et augue sed tortor pharetra bibendum vitae ut ex. Nam ultrices tincidunt odio, efficitur
 egestas nisl aliquet at. "),

("Luz Bryan", unix_timestamp('2018-11-04 01:00:00') + (86400 * 37), "LuzBryanns@fakemail.com", 
"mper. Donec et semper justo, ultricies cursus lectus. Lorem ipsum dolor sit amet, consectetur
 adipiscing elit."),

("Terri Valdez ", unix_timestamp('2018-03-04 01:00:00') + (86400 * 39), "roTerrito@fakemail.com", 
"n tellus turpis, bibendum a nibh a, rutrum dignissim lorem. Maecenas eget laoreet neque. 
Proin quis maximus quam."),

("Toni Nichols", unix_timestamp('2017-1-24 01:04:00') + (86400 * 71), "Tonindoe@fakemail.com", 
" ui dignissim molestie nec efficitur tortor. Mauris non dignissim lectus. Maecenas quis con "),

("Marvin Sanders ", unix_timestamp('2018-08-13 08:00:00') + (86400 * 72), "Marvioe@fakemail.com", 
" ornare nec. Duis eu eros eu lectus ullamcorper consectetur. Donec vitae nisi vel odio vestibulum
 hendrerit vitae vitae velit. Praesent sit amet mauris sagittis orci"),

("Theresa Russell", unix_timestamp('2018-02-11 01:06:00') + (86400 * 74), "JoTheresa@fakemail.com",
"ullamcorper, metus diam rutrum turpis, non ullamcorper lorem tortor nec nisi. Curabitur facilisis
 orci vel sapien tincidunt dapibus. Ut quis dolor ipsum."),


("Gerard Holland", unix_timestamp('2017-05-12 01:04:33') + (86400 * 77), "Gerardx@fakemail.com", 
"Etiam ut nisi at nisi porta tincidunt nec a ipsum. Nam mollis erat nisi, sit amet viverra nibh
 blandit sed. Donec diam tellus, pellentesque in cursus vel, semper id dui. Vivamus eget leo
 rhoncus lectus"),


("Sally Cobb ", unix_timestamp('2016-12-10 01:00:00') + (86400 * 79), "ZaSally@fakemail.com", 
"turpis ornare mattis. Vivamus eget mauris sapien. Quisque accumsan ante orci, vitae sollicitudin
 felis accumsan a. Nulla non magna accumsan, suscipit orci quis"),


("Roman Murray", unix_timestamp('2018-10-12 01:03:00') + (86400 * 80), "Romanyhh@fakemail.com",
 "Nullam ultrices rutrum quam, vel molestie lectus congue in. Nunc pulvinar non magna non scelerisque.
 Integer auctor at erat sed tincidunt."),


("Jasmine Davidson", unix_timestamp('2018-04-24 01:50:00') + (86400 * 62), "LorJasmine@fakemail.com",
 "varius lacus. Vestibulum quis lobortis ligula. Proin lacinia justo a odio venenatis tristique.
 Vivamus luctus massa tempus ante dapibus gravida. Phasellus quis mi non libero semper varius at 
 et orci. Fusce quam neque, gravida ut nisl posuere, pellentesque"),

("Phyllis Jacobs", unix_timestamp('2018-01-20 01:10:05') + (86400 * 64), "Phyllis@fakemail.com",
"ullamcorper quam. Maecenas pretium dolor iaculis sapien lobortis consectetur pellentesque ut sapien.
 Aenean nisl nisl, egestas id magna"),

("Peter Jenkins", unix_timestamp('2018-05-14 02:10:04') + (86400 * 67), "RanPeter@fakemail.com", 
"sit amet, imperdiet gravida nunc. Nulla facilisi. Mauris dictum diam augue. Sed faucibus magna 
a elit suscipit, ut tincidunt libero euismod. Donec rhoncus egestas nunc ut porta. "),

("Gretchen Stanley ", unix_timestamp('2018-01-29 01:04:00') + (86400 * 69), "GuaGretcheno@fakemail.com",
 "uisque ipsum turpis, iaculis et gravida in, suscipit at lacus. In sagittis eu turpis quis tempor. 
 Nullam ultrices rutrum quam, vel molestie lectus congue in. Nunc pulvinar non magna non scelerisque.
 Integer auctor at erat sed tincidunt. "),

("Dewey Warner ", unix_timestamp('2018-07-14 01:07:00') + (86400 * 50), "jDeweyr@fakemail.com", 
"nte consequat, id venenatis odio scelerisque. Mauris a mauris nec turpis ornare mattis. Vivamus
 eget mauris sapien. Quisque accumsan ante orci, vitae sollicitudin felis accumsan a. Nulla non 
 magna accumsan, suscipit orci quis"),

("Amos Guzman", unix_timestamp('2018-11-25 01:10:00') + (86400 * 51), "Amosoth@fakemail.com", 
"feugiat neque id ullamcorper. Quisque ipsum turpis, iaculis et gravida in, suscipit at lacus. 
In sagittis eu turpis quis tempor. Nullam ultrices rutrum quam, vel molestie lectus congue in. 
Nunc pulvinar non magna non scelerisque. Integer"),

("Mandy Jefferson ", unix_timestamp('2018-11-09 01:50:00') + (86400 * 52), "WMandyJee@fakemail.com",
"mauris sapien. Quisque accumsan ante orci, vitae sollicitudin felis accumsan a. Nulla non magna 
accumsan, suscipit orci quis, ullamcorper quam. Maecenas pretium dolor iaculis sapien lobortis 
consectetur pellentesque ut sapien."),

("Bill Barton", unix_timestamp('2018-07-14 01:00:40') + (86400 * 53), "rstBilllip@fakemail.com", 
"nisi at nisi porta tincidunt nec a ipsum. Nam mollis erat nisi, sit amet viverra nibh blandit sed.
 Donec diam tellus, pellentesque in cursus vel, semper id dui. Vivamus eget leo rhoncus lectus rhoncus 
 bibendum a vitae risus. Aliquam non risus "),

("Toby Shelton", unix_timestamp('2018-01-15 01:03:00') + (86400 * 56), "Whitney@fakemail.com", 
" Donec dapibus, tellus at scelerisque aliquet, nisl arcu ornare erat, in efficitur odio turpis
 at augue. Nam vulputate et libero id efficitur."),

("Shawna Armstrong", unix_timestamp('2018-10-08 01:00:13') + (86400 * 35), "ShawnaAde@fakemail.com", 
"Ut laoreet risus sed egestas placerat. Vestibulum ut mi lectus"),

("Patsy Colon", unix_timestamp('2018-11-11 01:00:00') + (86400 * 52), "jaTPatsy@fakemail.com", 
"Praesent sit amet mauris sagittis orci viverra dictum at at urna. Quisque elementum, ante eu 
scelerisque ullamcorper"),

("Pamela Harrison", unix_timestamp('2018-04-11 01:23:00') + (86400 * 84), "PamelaBrrd@fakemail.com",
"ittis orci viverra dictum at at urna. Quisque elementum, ante eu scelerisque ullamcorper, metus diam 
rutrum turpis, non ullamcorper lorem tortor nec nisi. Curabitur facilisis orci vel sapien tincidunt dapibus.
 Ut quis dolor ipsum.."),

("Allison Sanchez ", unix_timestamp('2018-03-05 01:30:00') + (86400 * 57), "LuAllisonns@fakemail.com", 
"si at nisi porta tincidunt nec a ipsum. Nam mollis erat nisi, sit amet viverra nibh blandit sed.
 Donec diam tellus, pellentesque in cursus vel, semper id dui. Vivamus eget leo rhoncus lectus rhoncus 
 bibendum a vitae risus. Aliquam "),

("Chris Walton", unix_timestamp('2018-05-24 01:00:00') + (86400 * 59), "roTChriso@fakemail.com", 
"metus diam rutrum turpis, non ullamcorper lorem tortor nec nisi. Curabitur facilisis orci vel sapien 
tincidunt dapibus. Ut quis dolor ipsum. Etiam"),

("Hilda Grant ", unix_timestamp('2018-03-14 02:10:00') + (86400 * 40), "Hildaphens@fakemail.com", 
"elementum sagittis auctor a libero. Maecenas sapien quam, euismod non eros a, ultricies tempor 
velit. Morbi hendrerit"),

("Kate Fletcher", unix_timestamp('2018-01-04 01:30:00') + (86400 * 41), "KateFto@fakemail.com",
 "Phasellus venenatis nunc in erat dapibus porta. Nam suscipit ac dolor ut tristique."),

("Salvador Jefferson", unix_timestamp('2018-10-14 01:12:00') + (86400 * 42), "jSalvaddr@fakemail.com", 
"Vivamus nec auctor elit. Integer mattis venenatis fringilla. Quisque tempus diam sit amet mattis commodo.
 Phasellus volutpat diam vestibulum, tristique metus non, pharetra eros. Aliquam nec leo eleifend, congue 
 nisl varius, suscipit elit."),

("Henry Strickland ", unix_timestamp('2018-10-25 01:10:00') + (86400 * 43), "jHenry@fakemail.com", 
"Ut tristique euismod egestas. Vestibulum tristique aliquam libero. Suspendisse placerat ornare mauris
at posuere. Proin eu erat ut arcu fringilla aliquam. Pellentesque dignissim libero id ante porta, ac 
luctus eros dictum. Vivamus"),

("Delia Gray", unix_timestamp('2018-01-07 01:05:00') + (86400 * 44), "Deliagee@fakemail.com",
"vitae sagittis accumsan, justo metus blandit erat, in feugiat diam quam non magna. Phasellus
 eleifend nisl quis mi scelerisque aliquam. Sed dictum nibh sed laoreet gravida. Donec laoreet 
 varius congue. Aenean id rhoncus eros."),

("Michelle Jones ", unix_timestamp('2018-07-14 02:10:00') + (86400 * 45), "Micheens@fakemail.com", 
"vulputate nisi molestie, ultricies metus eu, volutpat justo. Praesent id sodales neque. Mauris 
ultricies et elit id ornare. "),

("Edgar Mathis  ", unix_timestamp('2018-02-01 01:20:00') + (86400 * 46), "Edgarroto@fakemail.com",
 "auctor finibus arcu, quis imperdiet nisl consequat quis. Duis quis ligula elementum sapien eleifend
 lobortis. Aenean sagittis elementum dignissim. Aliquam consequat quam ac diam auctor, at tincidunt mi 
 gravida."),

("Victor Barton  ", unix_timestamp('2018-11-11 01:23:00') + (86400 * 47), "joAlVictor@fakemail.com", 
"metus blandit erat, in feugiat diam quam non magna. Phasellus eleifend nisl quis mi scelerisque aliquam. "),

("Viola Logan", unix_timestamp('2018-10-15 01:10:00') + (86400 * 48), "jaViolah@fakemail.com", 
"rhoncus eros. Nunc vulputate nisi molestie, ultricies metus eu, volutpat justo. Praesent id sodales neque.
 Mauris ultricies et elit id ornare. Vestibulum est tellus, lacinia a eros vel, interdum"),

("Nancy Bennett", unix_timestamp('2018-01-09 01:05:00') + (86400 * 49), "Nancy@fakemail.com",
"Vivamus nec auctor elit. Integer mattis venenatis fringilla. Quisque tempus diam sit amet mattis 
commodo. Phasellus volutpat diam vestibulum, tristique metus non, pharetra eros. Aliquam nec leo eleifend,
congue nisl varius, suscipit elit");



CREATE TABLE ADMINS
(
AdminID			INT 								PRIMARY KEY			AUTO_INCREMENT,
`username`			VARCHAR(30),
`password`		VARCHAR(30)								
);

INSERT INTO ADMINS
(`username`,`password`)
VALUES
( "admin1", "a1a1a1"),
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
