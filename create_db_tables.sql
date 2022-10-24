CREATE DATABASE MLB;

USE MLB;

drop TABLE teams;

/* Create teams table */
CREATE TABLE Teams (
yearID INTEGER, 
lgID VARCHAR(3), 
teamID CHAR(3), 
franchID CHAR(3), 
divID CHAR(1), 
_rank INTEGER, 
Ghome INTEGER, 
DivWin CHAR(1), 
WCWin CHAR(1), 
LgWin CHAR(1), 
WSWin CHAR(1), 
name TEXT, 
park TEXT, 
attendance INTEGER, 
BPF INTEGER, 
PPF INTEGER, 
teamIDBR TEXT, 
teamIDlahman45 TEXT, 
teamIDretro TEXT);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/upstream/Teams.csv' 
INTO TABLE Teams 
FIELDS TERMINATED BY ',';

/* Create franchise table */
CREATE TABLE TeamsFranchise (
franchID CHAR(3),
franchName TEXT,
active CHAR(1),
NAassoc CHAR(1));

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/TeamsFranchises.csv' 
INTO TABLE TeamsFranchise 
FIELDS TERMINATED BY ',';

/* Create post season table */
CREATE TABLE SeriesPost (
YearID INTEGER,
round VARCHAR(5),
teamIDwinner VARCHAR(5),
lgIDwinner VARCHAR(5),
teamIDloser VARCHAR(5),
lgIDloser VARCHAR(5),
wins INTEGER,
losses INTEGER,
ties INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/SeriesPost.csv' 
INTO TABLE SeriesPost 
FIELDS TERMINATED BY ',';

/* Create post pitching post season table */

CREATE TABLE PitchingPost (
playerID VARCHAR(50),
yearID INTEGER,
round VARCHAR(10),
teamID VARCHAR(10),
lgID VARCHAR(5),
W INTEGER,
L INTEGER,
G INTEGER,
GS INTEGER,
CG INTEGER,
SHO INTEGER,
SV INTEGER,
IPouts INTEGER,
H INTEGER,
ER INTEGER,
HR INTEGER,
BB INTEGER,
SO INTEGER,
BAOpp INTEGER,
ERA INTEGER,
IBB INTEGER,
WP INTEGER,
HBP INTEGER,
BK INTEGER,
BFP INTEGER,
GF INTEGER,
R INTEGER,
SH INTEGER,
SF INTEGER,
GIDP INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/PitchingPost.csv' 
INTO TABLE PitchingPost 
FIELDS TERMINATED BY ',';

/* Create pitching table */
CREATE TABLE Pitching (
playerID VARCHAR(50),
yearID INTEGER,
stint INTEGER,
teamID VARCHAR(10),
lgID VARCHAR(5),
W INTEGER,
L INTEGER,
G INTEGER,
GS INTEGER,
CG INTEGER,
SHO INTEGER,
SV INTEGER,
IPouts INTEGER,
H INTEGER,
ER INTEGER,
HR INTEGER,
BB INTEGER,
SO INTEGER,
BAOpp INTEGER,
ERA INTEGER,
IBB INTEGER,
WP INTEGER,
HBP INTEGER,
BK INTEGER,
BFP INTEGER,
GF INTEGER,
R INTEGER,
SH INTEGER,
SF INTEGER,
GIDP INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/Pitching.csv' 
INTO TABLE Pitching
FIELDS TERMINATED BY ',';


/* Create people table */
CREATE TABLE People (
playerID VARCHAR(50),
birthYear INTEGER,
birthMonth INTEGER,
birthDay INTEGER,
birthCountry TEXT,
birthState TEXT,
birthCity TEXT,
deathYear INTEGER,
deathMonth INTEGER,
deathDay INTEGER,
deathCountry TEXT,
deathState TEXT,
deathCity TEXT,
nameFirst TEXT,
nameLast TEXT,
nameGiven TEXT,
weight INTEGER,
height INTEGER,
bats TEXT,
throws TEXT,
debut DATE,
finalGame DATE,
retroID VARCHAR(50),
bbrefID VARCHAR(50)
);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/People.csv' 
INTO TABLE People
FIELDS TERMINATED BY ',';

/* Create Parks table */
CREATE TABLE Parks (
park_key VARCHAR(25),
park_name TEXT,
park_alias  TEXT,
city TEXT,
state TEXT,
country TEXT
);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/Parks.csv' 
INTO TABLE Parks
FIELDS TERMINATED BY ',';

/* Create Managers table */
CREATE TABLE Managers (
playerID VARCHAR(25),
yearID INTEGER,
teamID VARCHAR(10),
lgID TEXT,
inseason INTEGER,
G INTEGER,
W INTEGER,
L INTEGER,
rank_ INTEGER,
plyrMgr TEXT);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/Managers.csv' 
INTO TABLE Managers
FIELDS TERMINATED BY ',';

/* Create Homegames table */
CREATE TABLE HomeGames (
year_key INTEGER,
league_key TEXT,
team_key VARCHAR(25),
park_key VARCHAR(25),
span_first DATE,
span_last DATE,
games INTEGER,
openings INTEGER,
attendance INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/HomeGames.csv' 
INTO TABLE HomeGames
FIELDS TERMINATED BY ',';

/* Create FieldingPost table */
CREATE TABLE FieldingPost (
playerID VARCHAR(25),
yearID INTEGER,
teamID TEXT,
lgID TEXT,
round VARCHAR(25),
POS VARCHAR(25),
G INTEGER,
GS INTEGER,
InnOuts INTEGER,
PO INTEGER,
A INTEGER,
E INTEGER,
DP INTEGER,
TP INTEGER,
PB INTEGER,
SB INTEGER,
CS INTEGER
);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/FieldingPost.csv' 
INTO TABLE FieldingPost
FIELDS TERMINATED BY ',';

/* Create FieldingOFSplit table */
CREATE TABLE FieldingOFSplit (
playerID VARCHAR(25),
yearID INTEGER,
stint INTEGER,
teamID TEXT,
lgID TEXT,
round VARCHAR(25),
POS VARCHAR(25),
G INTEGER,
GS INTEGER,
InnOuts INTEGER,
PO INTEGER,
A INTEGER,
E INTEGER,
DP INTEGER,
PB INTEGER,
SB INTEGER,
CS INTEGER, 
ZR INTEGER
);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/FieldingOFSplit.csv' 
INTO TABLE FieldingOFSplit
FIELDS TERMINATED BY ',';

/* Create FieldingOF table */
CREATE TABLE FieldingOF (
playerID varchar(25),
yearID Integer,
stint Integer,
Glf Integer,
Gcf Integer,
Grf Integer
);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/FieldingOF.csv' 
INTO TABLE FieldingOF
FIELDS TERMINATED BY ',';

/* Create Fielding table */
CREATE TABLE Fielding (
playerID varchar(25),
yearID Integer,
stint Integer,
teamID varchar(25),
lgID varchar(10),
POS varchar(10),
G Integer,
GS Integer,
InnOuts Integer,
PO Integer,
A Integer,
E Integer,
DP Integer,
PB Integer,
WP Integer,
SB Integer,
CS Integer,
ZR Integer
);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/Fielding.csv' 
INTO TABLE Fielding
FIELDS TERMINATED BY ',';

/* Create BattingPost table */
CREATE TABLE BattingPost (
yearID INTEGER,
round VARCHAR(15),
playerID VARCHAR(15),
teamID VARCHAR(15),
lgID VARCHAR(15),
G INTEGER,
AB INTEGER,
R INTEGER,
H INTEGER,
twoB INTEGER,
threeB INTEGER,
HR INTEGER,
RBI INTEGER,
SB INTEGER,
CS INTEGER,
BB INTEGER,
SO INTEGER,
IBB INTEGER,
HBP INTEGER,
SH INTEGER,
SF INTEGER,
GIDP INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/BattingPost.csv' 
INTO TABLE BattingPost
FIELDS TERMINATED BY ',';

/* Create Batting table */
CREATE TABLE Batting (
playerID VARCHAR(15),
yearID INTEGER,
stint INTEGER,
teamID VARCHAR(15),
lgID VARCHAR(15),
G INTEGER,
AB INTEGER,
R INTEGER,
H INTEGER,
twoB INTEGER,
threeB INTEGER,
HR INTEGER,
RBI INTEGER,
SB INTEGER,
CS INTEGER,
BB INTEGER,
SO INTEGER,
IBB INTEGER,
HBP INTEGER,
SH INTEGER,
SF INTEGER,
GIDP INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/Batting.csv' 
INTO TABLE Batting
FIELDS TERMINATED BY ',';

/* Create Appearances table */
CREATE TABLE Appearances (
yearID INTEGER,
teamID VARCHAR(15),
lgID VARCHAR(15),
playerID VARCHAR(15),
G_all INTEGER,
GS INTEGER,
G_batting INTEGER,
G_defense INTEGER,
G_p INTEGER,
G_c INTEGER,
G_1b INTEGER,
G_2b INTEGER,
G_3b INTEGER,
G_ss INTEGER,
G_lf INTEGER,
G_cf INTEGER,
G_rf INTEGER,
G_of INTEGER,
G_dh INTEGER,
G_ph INTEGER,
G_pr INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/Appearances.csv' 
INTO TABLE Appearances
FIELDS TERMINATED BY ',';

/* Create AllstarFull table */
CREATE TABLE AllstarFull (
playerID VARCHAR(15),
yearID INTEGER,
gameNum INTEGER,
gameID VARCHAR(50),
teamID VARCHAR(50),
lgID VARCHAR(50),
GP INTEGER,
startingPos INTEGER);

LOAD DATA LOCAL INFILE '/Users/ethanjones/Downloads/baseballdatabank-2022.2/core/AllstarFull.csv' 
INTO TABLE AllstarFull
FIELDS TERMINATED BY ',';

