CREATE DATABASE education;
USE education;

CREATE TABLE institution(
    institutionid INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL
);

CREATE TABLE course(
    courseid INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL ,
    institution INT(11),
    FOREIGN KEY (institution) REFERENCES institution(institutionid)
);

CREATE TABLE student(
    studentid INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    course INT(11),
    FOREIGN KEY (course) REFERENCES course(courseid)
);

INSERT INTO institution(name) VALUES ('University College Dublin');
INSERT INTO institution(name) VALUES ('University College London');

INSERT INTO course(name,institution) VALUES ('Bsc. Actuarial Science',1);
INSERT INTO course(name,institution) VALUES ('MPhil Genomics',2);

# Mock student data for each course
# 50 students for Bsc. Actuarial Science
INSERT INTO student (name,course) VALUES ('Jaimie Reims',1);
INSERT INTO student (name,course) VALUES ('Arabel Clacson',1);
INSERT INTO student (name,course) VALUES ('Ferdinanda Tibb',1);
INSERT INTO student (name,course) VALUES ('Keith Andreou',1);
INSERT INTO student (name,course) VALUES ('Paulita Regglar',1);
INSERT INTO student (name,course) VALUES ('Dyana Polini',1);
INSERT INTO student (name,course) VALUES ('Mitchell Jost',1);
INSERT INTO student (name,course) VALUES ('Cortie Arntzen',1);
INSERT INTO student (name,course) VALUES ('Christal Haddacks',1);
INSERT INTO student (name,course) VALUES ('Byron Nehl',1);
INSERT INTO student (name,course) VALUES ('Elisha Bissex',1);
INSERT INTO student (name,course) VALUES ('Hanni Wycherley',1);
INSERT INTO student (name,course) VALUES ('Wes Fright',1);
INSERT INTO student (name,course) VALUES ('Justino Burdoun',1);
INSERT INTO student (name,course) VALUES ('Barde Olijve',1);
INSERT INTO student (name,course) VALUES ('Oralie Pietrasik',1);
INSERT INTO student (name,course) VALUES ('Ebeneser L''argent',1);
INSERT INTO student (name,course) VALUES ('Orv Rudram',1);
INSERT INTO student (name,course) VALUES ('Kilian Leffek',1);
INSERT INTO student (name,course) VALUES ('Thornie Curtin',1);
INSERT INTO student (name,course) VALUES ('Clint Collomosse',1);
INSERT INTO student (name,course) VALUES ('Siouxie Huddle',1);
INSERT INTO student (name,course) VALUES ('Shelagh Marzello',1);
INSERT INTO student (name,course) VALUES ('Markos McAuliffe',1);
INSERT INTO student (name,course) VALUES ('Tiffany Bridgstock',1);
INSERT INTO student (name,course) VALUES ('Axel Akker',1);
INSERT INTO student (name,course) VALUES ('Josias Petroselli',1);
INSERT INTO student (name,course) VALUES ('Darrelle Gosnay',1);
INSERT INTO student (name,course) VALUES ('Belia Torra',1);
INSERT INTO student (name,course) VALUES ('Kelley Medlar',1);
INSERT INTO student (name,course) VALUES ('Allene Lochrie',1);
INSERT INTO student (name,course) VALUES ('Martguerita Ollerhead',1);
INSERT INTO student (name,course) VALUES ('Cathleen Eacott',1);
INSERT INTO student (name,course) VALUES ('Dill Izsak',1);
INSERT INTO student (name,course) VALUES ('Zak Paolo',1);
INSERT INTO student (name,course) VALUES ('Derek Scase',1);
INSERT INTO student (name,course) VALUES ('Cosetta Nelles',1);
INSERT INTO student (name,course) VALUES ('Babette Baudone',1);
INSERT INTO student (name,course) VALUES ('Brett Slite',1);
INSERT INTO student (name,course) VALUES ('Prudence O''Lunny',1);
INSERT INTO student (name,course) VALUES ('Stefa Keefe',1);
INSERT INTO student (name,course) VALUES ('Tillie McConway',1);
INSERT INTO student (name,course) VALUES ('Evy Von Salzberg',1);
INSERT INTO student (name,course) VALUES ('Haleigh Cornthwaite',1);
INSERT INTO student (name,course) VALUES ('Luce Durham',1);
INSERT INTO student (name,course) VALUES ('Alasteir Cesconi',1);
INSERT INTO student (name,course) VALUES ('Peirce Boggish',1);
INSERT INTO student (name,course) VALUES ('Farrah Goolden',1);
INSERT INTO student (name,course) VALUES ('Adara Souster',1);
INSERT INTO student (name,course) VALUES ('Cindra Vizor',1);

# 9 students for MPhil Genomics
INSERT INTO student (name,course) VALUES ('Gilemette Starmore',2);
INSERT INTO student (name,course) VALUES ('Barclay Mouland',2);
INSERT INTO student (name,course) VALUES ('Swen Skains',2);
INSERT INTO student (name,course) VALUES ('Madlen Nend',2);
INSERT INTO student (name,course) VALUES ('Tabina Andreuzzi',2);
INSERT INTO student (name,course) VALUES ('Shay Cappel',2);
INSERT INTO student (name,course) VALUES ('Taffy Yendall',2);
INSERT INTO student (name,course) VALUES ('Cornelle Basile',2);
INSERT INTO student (name,course) VALUES ('Janelle Tampin',2);

SELECT i.name AS "INSTITUTION NAME",
       education.course.name AS "COURSE NAME",
       (SELECT COUNT(*) AS "NUMBER OF STUDENTS" FROM student WHERE course = education.course.courseid)

FROM education.institution i,
     education.course
WHERE i.institutionid = course.institution;