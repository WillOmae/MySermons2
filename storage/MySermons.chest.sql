BEGIN TRANSACTION;

CREATE TABLE `Themes` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Theme`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `Venues` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Name`	TEXT NOT NULL,
	`Town`	INTEGER NOT NULL DEFAULT 0
);
CREATE TABLE `Towns` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Name`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `Speakers` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Name`	TEXT NOT NULL UNIQUE
);
CREATE TABLE `Sermons` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Series`	INTEGER NOT NULL DEFAULT 0,
	`DateCreated`	TEXT NOT NULL,
	`Venue`	INTEGER NOT NULL DEFAULT 0,
	`Town`	INTEGER NOT NULL DEFAULT 0,
	`Activity`	INTEGER NOT NULL DEFAULT 0,
	`Speaker`	INTEGER NOT NULL DEFAULT 0,
	`Theme`		INTEGER NOT NULL DEFAULT 0,
	`Title`	TEXT NOT NULL,
	`Text`	TEXT,
	`Hymn`	TEXT,
	`Content`	TEXT NOT NULL
);
CREATE TABLE `SeriesSpeakers` (
	`SeriesId`	INTEGER NOT NULL,
	`SpeakerId`	INTEGER NOT NULL,
	PRIMARY KEY(`SeriesId`,`SpeakerId`)
);
CREATE TABLE `Series` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Theme`	TEXT NOT NULL,
	`Speaker`	INTEGER NOT NULL DEFAULT 0,
	`Venue`	INTEGER NOT NULL DEFAULT 0,
	`Town`	INTEGER NOT NULL DEFAULT 0,
	`Activity`	INTEGER NOT NULL DEFAULT 0,
	`StartDate`	TEXT NOT NULL,
	`EndDate`	TEXT NOT NULL
);
CREATE TABLE `RODs` (
	`DocId`	INTEGER NOT NULL,
	`DocTitle`	TEXT,
	PRIMARY KEY(`DocId`)
);
CREATE TABLE `Preferences` (
	`PrinterName`	TEXT,
	`PrinterScheme`	TEXT DEFAULT 'White/Black',
	`ColourFont`	TEXT DEFAULT 'AACCFF',
	`ColourControls`	TEXT DEFAULT 222233,
	`FontSystem`	TEXT DEFAULT 'Times New Roman',
	`FontReader`	TEXT DEFAULT 'Times New Roman',
	`FontWriter`	TEXT DEFAULT 'Times New Roman',
	`RODMaxNumber`	INTEGER DEFAULT 10,
	`SortingFilter`	TEXT DEFAULT 'SPEAKER',
	`ShowWelcomeScreen`	TEXT DEFAULT 'True'
);
CREATE TABLE `Activities` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Name`	TEXT NOT NULL UNIQUE
);
COMMIT;