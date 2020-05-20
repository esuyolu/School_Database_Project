-- create the Usis database
CREATE DATABASE Usis

-- use the Usis database
USE Usis

-- create the Administrator table
CREATE TABLE Administrator
(
	AdministratorID int primary key identity,
	StudentID int not null,
	Username nvarchar(20) not null unique,
	Password nvarchar(20) not null 
	constraint FK_StudentID foreign key (StudentID) references Student(StudentID)
)

-- create the InsertAdministrator stored procedure
CREATE PROCEDURE InsertAdministrator
(
	@StudentID int,
	@Username nvarchar(20),
	@Password nvarchar(20)
)
AS
BEGIN
INSERT INTO Administrator(StudentID, Username, Password)
VALUES(@StudentID, @Username, @Password)
END

-- insert data into the Administrator table by using InsertAdministrator table with EXECUTE command
EXECUTE InsertAdministrator 1, 'l5815024', '123'

-- insert data into the Administrator table
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (2, 'l5815000', '522')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (3, 'l5815001', '617')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (4, 'l5815002', '682')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (5, 'l5815003', '575')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (6, 'l5815004', '282')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (7, 'l5815005', '224')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (8, 'l5815006', '138')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (9, 'l5815007', '857')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (10, 'l5815008', '416')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (11, 'l5815009', '351')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (12, 'l5815010', '846')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (13, 'l5815011', '835')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (14, 'l5815012', '225')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (15, 'l5815013', '134')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (16, 'l5815014', '281')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (17, 'l5815015', '654')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (18, 'l5815016', '464')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (19, 'l5815017', '671')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (20, 'l5815018', '758')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (21, 'l5815019', '126')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (22, 'l5815020', '833')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (23, 'l5815021', '141')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (24, 'l5815022', '314')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (25, 'l5815023', '827')
INSERT INTO Administrator(StudentID, Username, Password)
VALUES (26, 'l5815025', '475')

-- view the Administrator table
SELECT * FROM Administrator

-- create the Faculty table
CREATE TABLE Faculty
(
	FacultyID int primary key identity,
	Facultyname nvarchar(50) not null
)

-- create the InsertFaculty stored procedure
CREATE PROCEDURE InsertFaculty
(
	@Facultyname nvarchar(50)
)
AS
BEGIN
INSERT INTO Faculty(Facultyname)
VALUES(@Facultyname)
END

-- insert data into the Faculty table by using InsertFaculty table with EXECUTE command
EXECUTE InsertFaculty 'Faculty of Chemical and Metallurgical Engineering'

-- insert data into the Faculty table
INSERT INTO Faculty(Facultyname)
VALUES ('Faculty of Electrical and Electronics Engineering')
INSERT INTO Faculty(Facultyname)
VALUES ('Faculty of Mechanical Engineering')
INSERT INTO Faculty(Facultyname)
VALUES ('Faculty of Civil Engineering')

-- view the Faculty table
SELECT * FROM Faculty

-- create the Department table
CREATE TABLE Department
(
	DepartmentID int primary key identity,
	FacultyID int,
	Departmentname nvarchar(50) not null,
	constraint FK_FacultyID foreign key (FacultyID) references Faculty(FacultyID)
)

-- create the InsertDepartment stored procedure
CREATE PROCEDURE InsertDepartment
(
	@FacultyID int,
	@Departmentname nvarchar(50)
)
AS 
BEGIN
INSERT INTO Department(FacultyID, Departmentname)
VALUES(@FacultyID, @Departmentname)
END

-- insert data into the Department table by using InsertDepartment table with EXECUTE command
EXECUTE InsertDepartment 1, 'Mathematical Engineering'

-- insert data into the Department table
INSERT INTO Department(FacultyID, Departmentname)
VALUES (1, 'Food Engineering')
INSERT INTO Department(FacultyID, Departmentname)
VALUES (1, 'Chemical Engineering')
INSERT INTO Department(FacultyID, Departmentname)
VALUES (2, 'Computer Engineering')
INSERT INTO Department(FacultyID, Departmentname)
VALUES (2, 'Electrical Engineering')
INSERT INTO Department(FacultyID, Departmentname)
VALUES (2, 'Biomedical Engineering')
INSERT INTO Department(FacultyID, Departmentname)
VALUES (3, 'Industrial Engineering')
INSERT INTO Department(FacultyID, Departmentname)
VALUES (4, 'Environmental Engineering')

-- view the Department table
SELECT * FROM Department

-- create the CourseInstructor table
CREATE TABLE CourseInstructor
(
	CourseInstructorID int primary key identity,
	Firstname nvarchar(50) not null,
	Secondname nvarchar(50),
	Lastname nvarchar(50) not null,
)

-- create the InsertCourseInstructor stored procedure
CREATE PROCEDURE InsertCourseInstructor
(
	@Firstname nvarchar(50),
	@Secondname nvarchar(50),
	@Lastname nvarchar(50)
)
AS
BEGIN
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES(@Firstname, @Secondname, @Lastname)
END

-- insert data into the CourseInstructor table by using InsertCourseInstructor table with EXECUTE command
EXECUTE InsertCourseInstructor 'Aydın', '', 'Seçer'

-- insert data into the CourseInstructor table
INSERT INTO CourseInstructor(Firstname, SecondName, Lastname)
VALUES ('Fatma', 'İnci', 'Albayrak')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Nevim', '', 'San')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Muhammed', 'Zeki', 'Durak')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Salih', '', 'Karasu')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Mahmure', '', 'Üstün')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Emek', '', 'Derun')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('İbrahim', '', 'Doymaz')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Ziya', 'Cihan', 'Tayşi')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Hülya', '', 'Burhanzade')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Ali', 'Fırat', 'Boynueğri')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('İbrahim', '', 'Şenol')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Murat', '', 'Topuzoğulları')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Musa', '', 'Türker')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Dilek', '', 'Balık')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Umut', '', 'Tuzkaya')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Alev', '', 'Gümüş')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Selçuk', '', 'Alp')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Nihan', '', 'Çetin')

INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Nevim', '', 'San')
INSERT INTO CourseInstructor(Firstname, Secondname, Lastname)
VALUES ('Arslan', '', 'Saral')

-- view the CourseInstructor table
SELECT * FROM CourseInstructor

-- create the Course table
CREATE TABLE Course
(
	CourseID int primary key identity,
	DepartmentID int not null,
	CourseInstructorID int not null,
	Title nvarchar(100) not null,
	Credits int not null,
	constraint FK_DepartmentID foreign key (DepartmentID) references Department(DepartmentID),
	constraint FK_CourseInstructorID foreign key (CourseInstructorID) references CourseInstructor(CourseInstructorID)
)

-- create the InsertCourse stored procedure
CREATE PROCEDURE InsertCourse
(
	@DepartmentID int,
	@CourseInstructorID int,
	@Title nvarchar(100),
	@Credits int
)
AS
BEGIN
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(@DepartmentID, @CourseInstructorID, @Title, @Credits)
END

-- insert data into the Course table by using InsertCourse table with EXECUTE command
EXECUTE InsertCourse 1, 1, 'Programming Language', 3

-- insert data into the Course table
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (1, 2, 'Analysis', 5)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(1, 1, 'Algorithms and Data Structures', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(1, 2, 'Analytic Geometry', 4)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(1, 1, 'Applied SQL', 3)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (2, 3, 'General Chemistry', 4)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(2, 4, 'Food Ethics', 2)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(2, 4, 'General Microbiology', 5)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(2, 5, 'Vegetable Oil Technology', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(2, 3, 'Nutrition', 3)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (3, 6, 'General Chemistry', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(3, 6, 'Analytical Chemistry', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(3, 6, 'Organic Chemistry', 4)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(3, 7, 'Chemical Engineering Calculations', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(3, 8, 'Introduction to Chemical Engineering', 2)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (4, 9, 'Introduction to Computer Science', 4)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(4, 10, 'Linear Algebra', 2)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(4, 9, 'Computer Hardware', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(4, 9, 'Algorithm Analysis', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(4, 9, 'Database Management', 4)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (5, 11, 'Introduction to Rail System Engineering', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(5, 12, 'Circuit Analysis', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(5, 12, 'Engineering Design', 2)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(5, 12, 'Lighting Engineering', 4)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(5, 11, 'Electrical Energy Economics', 3)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (6, 13, 'Biochemistry', 4)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(6, 14, 'Introduction to Microcontroller Programming', 2)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(6, 15, 'Biosignal Processing', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(6, 15, 'Genetic Engineering', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(6, 13, 'Signals & Systems', 3)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (7, 16, 'Introduction to Industrial Engineering', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(7, 16, 'Computer Aided Design', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(7, 17, 'Ergonomy', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(7, 18, 'Economics', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(7, 19, 'Work Methods and Measurements', 3)

INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES (8, 20, 'Introduction to Environmental Engineering', 2)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(8, 20, 'Ecology', 2)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(8, 21, 'Environmental Chemistry I', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(8, 21, 'Air Pollution Control', 3)
INSERT INTO Course(DepartmentID, CourseInstructorID, Title, Credits)
VALUES(8, 21, 'General Chemistry', 4)

-- view the Course table
SELECT * FROM Course

-- create the Student table
CREATE TABLE Student
(
	StudentID int primary key identity,
	DepartmentID int not null,
	Firstname nvarchar(50) not null,
	Secondname nvarchar(50),
	Lastname nvarchar(50) not null,
	Gender char(1),
	DateOfBirth date,
	PlaceOfBirth nvarchar(100),
	Address nvarchar(100),
	Email nvarchar(50),
	Mobilephone nvarchar(30)
	constraint ForeignKey_DepartmentID foreign key (DepartmentID) references Department(DepartmentID)
)

-- create the InsertStudent stored procedure
CREATE PROCEDURE InsertStudent
(
	@DepartmentID int,
	@Firstname nvarchar(50),
	@Secondname nvarchar(50),
	@Lastname nvarchar(50),
	@Gender char(1),
	@DateOfBirth date,
	@PlaceOfBirth nvarchar(100),
	@Address nvarchar(100),
	@Email nvarchar(50),
	@Mobilephone nvarchar(30)
)
AS
BEGIN
INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES(@DepartmentID, @Firstname, @Secondname, @Lastname, @Gender, @DateOfBirth, @PlaceOfBirth, @Address, @Email, @Mobilephone)
END

-- insert data into the Student table by using InsertStudent table with EXECUTE command
EXECUTE InsertStudent 1, 'Esma',null ,'Suyolu', 'F', '1996-04-06', 'İstanbul', 'Bayrampaşa', 'esmasuyolu@gmail.com', '05344034741'

-- insert data into the Student table
INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (2, 'Fatma', 'Özlem', 'Acar', 'F', '1998-02-22', 'Adana', 'Ceyhan', 'fatmaacar@gmail.com', '05204155137')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (3, 'Ali', 'İsmail', 'Babacan', 'M', '1998-04-18', 'Bursa', 'Uludağ', 'alismailbabacan@gmail.com', '05841236050')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (4, 'Sena', 'Nur', 'Candan', 'F', '1998-11-10', 'İstanbul', 'Fatih', 'senacandan@gmail.com', '05361187370')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (5, 'Esat', 'Erdem', 'Danış', 'M', '1995-12-30', 'Bursa', 'Uludağ', 'esaterdemdanis@gmail.com', '05533612043')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (6, 'Lale',null , 'Ekrem', 'F', '1996-06-15', 'Edirne', 'Meriç', 'lalekrem@gmail.com', '05455028433')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (7, 'Eyüp', 'Orhan', 'Fındık', 'M', '1997-09-19', 'Diyarbakır', 'Dicle', 'eyuporhanfindik@gmail.com', '05051000565')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (8, 'Nihan',null , 'Gazitepe', 'F', '1998-11-17', 'İstanbul', 'Üsküdar', 'nihangazitepe@gmail.com', '05128457382')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (1, 'Selin', 'Sıla', 'Halıcılar', 'F', '1996-06-30', 'Ankara', 'Mamak', 'selinsila@gmail.com', '05022226866')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (2, 'Tevfik',null , 'İnal', 'M', '1998-01-08', 'İstanbul', 'Fatih', 'tevfikinal@gmail.com', '05817470450')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (3, 'Melis', 'Ezgi', 'Kalyoncu', 'F', '1999-11-14', 'İstanbul', 'Kadıköy', 'melisezgikalyoncu@gmail.com', '05331600584')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (4, 'Furkan', 'Fatih', 'Kırmızı', 'M', '1995-06-15', 'Bursa', 'Uludağ', 'furkanfatihkirmizi@gmail.com', '05266385048')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (5, 'Görkem',null , 'Metin', 'M', '1997-01-01', 'Kütühya', 'Dumlupınar', 'gorkemetin@gmail.com', '05613114837')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (6, 'Türkan',null , 'Nayman', 'F', '1999-11-16', 'Kayseri', 'Develi', 'turkanayman@gmail.com', '05754765661')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (7, 'İsmet',null , 'Orman', 'M', '2000-04-26', 'Konya', 'Akşehir', 'ismetorman@gmail.com', '05547112685')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (8, 'Zeynep', 'Tuğba', 'Önen', 'F', '1996-07-28', 'İstanbul', 'Beşiktaş', 'zeyneponen@gmail.com', '05880635527')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (1, 'Altay',null , 'Paksoy', 'M', '2000-06-21', 'Denizli', 'Bozkurt', 'altaypaksoy@gmail.com', '05223813283')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)
VALUES (2, 'Emre', 'Can', 'Sakaryalı', 'M', '1996-09-26', 'Sakarya', 'Adapazarı', 'emrecansakaryali@gmail.com', '05506788446')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (3, 'Ayşegül', 'Begüm', 'Tanbaşı', 'F', '1997-04-22', 'Aksaray', 'Güzelyurt', 'aysegultanbasi@gmail.com', '05752355245')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (4, 'Berra',null , 'Urgancı', 'F', '1996-05-03', 'Ordu', 'Çaybaşı', 'berrauyganci@gmail.com', '05783830621')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (5, 'Akif',null , 'Üstkent', 'M', '1997-08-06', 'Trabzon', 'Akçaabat', 'akifustunkent@gmail.com', '05687154424')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)  
VALUES (6, 'Mediha', 'Burcu', 'Vanlı', 'F', '1996-10-26', 'Şanlıurfa', 'Ceylanpınar', 'medihaburcuvanli@gmail.com', '05620476218')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (7, 'Buket',null , 'Yıldız', 'F', '1997-09-08', 'İstanbul', 'Bahçelievler', 'buketyildiz@gmail.com', '05307645436')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (8, 'Anıl', 'Görkem', 'Yapar', 'M', '1999-01-20', 'İstanbul', 'Kartal', 'anilgorkemyapar@gmail.com', '05176500004')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone) 
VALUES (1, 'Nur', 'Dilan', 'Zilay', 'F', '1997-09-26', 'Van', 'Erciş', 'nurdilanzilay@gmail.com', '05145310287')

INSERT INTO Student(DepartmentID, Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone)  
VALUES (2, 'Ahmet',null , 'Keskin', 'M', '1999-01-27', 'İstanbul', 'Esenler', 'ahmetkeskin@gmail.com', '05154220868')

-- view the Student table
SELECT * FROM Student

-- create the ScoreRecord table
CREATE TABLE ScoreRecord
(
	ScoreRecordID int primary key identity,
	StudentID int not null,
	YearOfSemester int not null,
	IsFallSemester bit,
	IsSpringSemester bit,
	AvgGrade float,
	constraint FKey_StudentID foreign key (StudentID) references Student(StudentID)
)

-- create the InsertScoreRecord stored procedure
CREATE PROCEDURE InsertScoreRecord
(
	@StudentID int,
	@YearOfSemester int,
	@IsFallSemester bit,
	@IsSpringSemester bit,
	@AvgGrade float
)
AS
BEGIN
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES(@StudentID, @YearOfSemester, @IsFallSemester, @IsSpringSemester, @AvgGrade)
END

-- insert data into the ScoreRecord table by using InsertScoreRecord table with EXECUTE command
EXECUTE InsertScoreRecord 1, 2016, 1, 0, 3.50

-- insert data into the ScoreRecord table
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2016, 0, 1, 2.35)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2017, 1, 0, 2.40)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2017, 0, 1, 2.56)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2018, 1, 0, 2.12)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2018, 0, 1, 2.39)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2019, 1, 0, 2.89)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (1, 2019, 0, 1, 3.67)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2016, 1, 0, 2.32)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2016, 0, 1, 2.23)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2017, 1, 0, 2.65)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2017, 0, 1, 3.45)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2018, 1, 0, 2.11)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2018, 0, 1, 2.25)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2019, 1, 0, 3.45)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (2, 2019, 0, 1, 2.04)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2016, 1, 0, 3.60)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2016, 0, 1, 2.87)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2017, 1, 0, 2.69)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2017, 0, 1, 3.48)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2018, 1, 0, 3.55)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2018, 0, 1, 3.75)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2019, 1, 0, 2.85)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (3, 2019, 0, 1, 3.54)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2016, 1, 0, 2.80)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2016, 0, 1, 3.06)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2017, 1, 0, 3.22)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2017, 0, 1, 2.91)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2018, 1, 0, 3.18)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2018, 0, 1, 2.07)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2019, 1, 0, 2.12)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (4, 2019, 0, 1, 3.20)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2016, 1, 0, 2.85)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2016, 0, 1, 2.66)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2017, 1, 0, 3.68)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2017, 0, 1, 3.80)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2018, 1, 0, 3.24)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2018, 0, 1, 3.20)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2019, 1, 0, 3.36)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (5, 2019, 0, 1, 2.95)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2016, 1, 0, 3.71)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2016, 0, 1, 3.82)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2017, 1, 0, 3.28)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2017, 0, 1, 3.76)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2018, 1, 0, 2.25)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2018, 0, 1, 2.88)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2019, 1, 0, 3.26)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (6, 2019, 0, 1, 3.58)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2016, 1, 0, 3.67)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2016, 0, 1, 3.44)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2017, 1, 0, 3.05)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2017, 0, 1, 3.66)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2018, 1, 0, 3.10)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2018, 0, 1, 2.47)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2019, 1, 0, 2.59)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (7, 2019, 0, 1, 2.50)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2016, 1, 0, 2.09)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2016, 0, 1, 3.43)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2017, 1, 0, 2.28)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2017, 0, 1, 2.62)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2018, 1, 0, 3.49)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2018, 0, 1, 2.48)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2019, 1, 0, 2.46)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (8, 2019, 0, 1, 3.62)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2016, 1, 0, 3.03)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2016, 0, 1, 3.67)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2017, 1, 0, 3.99)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2017, 0, 1, 3.42)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2018, 1, 0, 2.12)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2018, 0, 1, 2.37)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2019, 1, 0, 3.50)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (9, 2019, 0, 1, 3.73)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2016, 1, 0, 2.97)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2016, 0, 1, 2.96)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2017, 1, 0, 3.63)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2017, 0, 1, 3.39)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2018, 1, 0, 3.12)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2018, 0, 1, 3.44)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2019, 1, 0, 2.57)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (10, 2019, 0, 1, 2.99)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2016, 1, 0, 2.63)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2016, 0, 1, 2.44)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2017, 1, 0, 2.34)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2017, 0, 1, 3.49)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2018, 1, 0, 3.63)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2018, 0, 1, 3.51)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2019, 1, 0, 2.80)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (11, 2019, 0, 1, 3.41)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2016, 1, 0, 2.21)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2016, 0, 1, 3.30)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2017, 1, 0, 3.32)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2017, 0, 1, 3.20)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2018, 1, 0, 3.55)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2018, 0, 1, 3.32)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2019, 1, 0, 3.01)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (12, 2019, 0, 1, 2.38)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2016, 1, 0, 2.66)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2016, 0, 1, 3.19)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2017, 1, 0, 2.54)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2017, 0, 1, 2.00)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2018, 1, 0, 3.88)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2018, 0, 1, 3.37)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2019, 1, 0, 3.70)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (13, 2019, 0, 1, 2.83)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2016, 1, 0, 2.03)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2016, 0, 1, 2.45)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2017, 1, 0, 2.36)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2017, 0, 1, 2.05)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2018, 1, 0, 2.55)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2018, 0, 1, 3.07)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2019, 1, 0, 2.90)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (14, 2019, 0, 1, 2.28)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2016, 1, 0, 2.08)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2016, 0, 1, 2.25)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2017, 1, 0, 2.83)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2017, 0, 1, 2.10)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2018, 1, 0, 3.74)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2018, 0, 1, 2.69)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2019, 1, 0, 2.33)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (15, 2019, 0, 1, 2.77)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2016, 1, 0, 3.85)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2016, 0, 1, 2.09)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2017, 1, 0, 2.51)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2017, 0, 1, 3.41)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2018, 1, 0, 3.78)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2018, 0, 1, 3.66)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2019, 1, 0, 3.10)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (16, 2019, 0, 1, 2.57)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2016, 1, 0, 2.45)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2016, 0, 1, 2.41)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2017, 1, 0, 3.23)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2017, 0, 1, 3.45)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2018, 1, 0, 2.50)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2018, 0, 1, 2.54)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2019, 1, 0, 3.28)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (17, 2019, 0, 1, 3.90)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2016, 1, 0, 2.78)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2016, 0, 1, 3.50)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2017, 1, 0, 2.92)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2017, 0, 1, 2.39)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2018, 1, 0, 2.79)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2018, 0, 1, 2.31)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2019, 1, 0, 2.24)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (18, 2019, 0, 1, 2.42)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2016, 1, 0, 2.31)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2016, 0, 1, 2.37)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2017, 1, 0, 2.80)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2017, 0, 1, 3.04)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2018, 1, 0, 3.92)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2018, 0, 1, 2.73)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2019, 1, 0, 2.48)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (19, 2019, 0, 1, 2.18)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2016, 1, 0, 3.80)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2016, 0, 1, 2.46)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2017, 1, 0, 2.27)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2017, 0, 1, 3.14)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2018, 1, 0, 3.72)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2018, 0, 1, 3.93)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2019, 1, 0, 3.73)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (20, 2019, 0, 1, 3.31)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2016, 1, 0, 3.93)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2016, 0, 1, 2.44)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2017, 1, 0, 2.99)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2017, 0, 1, 3.68)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2018, 1, 0, 2.02)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2018, 0, 1, 3.65)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2019, 1, 0, 2.40)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (21, 2019, 0, 1, 2.50)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2016, 1, 0, 3.89)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2016, 0, 1, 3.28)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2017, 1, 0, 3.77)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2017, 0, 1, 3.09)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2018, 1, 0, 2.41)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2018, 0, 1, 2.27)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2019, 1, 0, 3.37)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (22, 2019, 0, 1, 3.06)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2016, 1, 0, 3.46)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2016, 0, 1, 3.71)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2017, 1, 0, 3.92)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2017, 0, 1, 3.53)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2018, 1, 0, 2.43)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2018, 0, 1, 2.22)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2019, 1, 0, 3.56)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (23, 2019, 0, 1, 3.96)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2016, 1, 0, 2.99)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2016, 0, 1, 3.29)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2017, 1, 0, 3.15)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2017, 0, 1, 3.53)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2018, 1, 0, 3.25)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2018, 0, 1, 2.41)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2019, 1, 0, 3.20)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (24, 2019, 0, 1, 2.46)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2016, 1, 0, 2.14)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2016, 0, 1, 2.11)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2017, 1, 0, 3.73)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2017, 0, 1, 3.62)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2018, 1, 0, 3.44)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2018, 0, 1, 3.10)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2019, 1, 0, 3.41)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (25, 2019, 0, 1, 3.76)

INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2016, 1, 0, 2.36)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2016, 0, 1, 2.66)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2017, 1, 0, 2.28)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2017, 0, 1, 2.64)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2018, 1, 0, 3.54)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2018, 0, 1, 3.74)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2019, 1, 0, 3.30)
INSERT INTO ScoreRecord(StudentID, YearOfSemester, IsFallSemester, IsSpringSemester, AvgGrade)
VALUES (26, 2019, 0, 1, 2.86)

-- view the ScoreRecord table
SELECT * FROM ScoreRecord

-- create the ExamResult table
CREATE TABLE ExamResult
(
	StudentID int references Student(StudentID),
	CourseID int references Course(CourseID),
	primary key (CourseID, StudentID),
	AlphGrade char(2),
	NumGrade int
)

-- insert data into the ExamResult table
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (1, 1, 'AA', 100)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (1, 2, 'CC', 67)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (1, 3, 'CC', 66)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (1, 4, 'AA', 95)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (1, 5, 'BB', 83)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (2, 6, 'CC', 66)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (2, 7, 'DD', 53)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (2, 8, 'FF', 36)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (2, 9, 'CB', 76)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (2, 10, 'FF', 32)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (3, 11, 'DD', 53)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (3, 12, 'FF', 19)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (3, 13, 'FF', 29)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (3, 14, 'FD', 40)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (3, 15, 'FF', 10)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (4, 16, 'FF', 35)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (4, 17, 'FF', 32)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (4, 18, 'DC', 62)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (4, 19, 'FF', 37)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (4, 20, 'BA', 88)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (5, 21, 'BB', 83)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (5, 22, 'FF', 20)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (5, 23, 'FF', 4)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (5, 24, 'BB', 84)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (5, 25, 'FF', 38)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (6, 26, 'DD', 55)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (6, 27, 'FF', 23)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (6, 28, 'DD', 51)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (6, 29, 'FD', 42)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (6, 30, 'BA', 85)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (7, 31, 'FF', 15)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (7, 32, 'FF', 13)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (7, 33, 'DD', 54)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (7, 34, 'BA', 89)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (7, 35, 'FF', 1)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (8, 36, 'FF', 12)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (8, 37, 'CC', 70)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (8, 38, 'CB', 76)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (8, 39, 'FF', 35)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (8, 40, 'FF', 37)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (9, 1, 'FF', 12)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (9, 2, 'CC', 70)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (9, 3, 'CB', 76)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (9, 4, 'FF', 35)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (9, 5, 'FF', 37)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (10, 6, 'AA', 99)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (10, 7, 'DD', 52)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (10, 8, 'FF', 38)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (10, 9, 'CB', 78)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (10, 10, 'FF', 37)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (11, 11, 'FF', 18)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (11, 12, 'AA', 96)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (11, 13, 'AA', 100)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (11, 14, 'FD', 40)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (11, 15, 'AA', 90)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (12, 16, 'FD', 44)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (12, 17, 'CB', 75)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (12, 18, 'DC', 64)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (12, 19, 'AA', 91)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (12, 20, 'FF', 10)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (13, 21, 'CB', 75)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (13, 22, 'FF', 38)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (13, 23, 'FF', 23)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (13, 24, 'DC', 61)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (13, 25, 'AA', 100)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (14, 26, 'FF', 6)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (14, 27, 'FF', 7)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (14, 28, 'CC', 70)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (14, 29, 'BB', 84)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (14, 30, 'DD', 53)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (15, 31, 'FF', 16)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (15, 32, 'BA', 87)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (15, 33, 'DC', 60)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (15, 34, 'FF', 9)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (15, 35, 'AA', 95)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (16, 36, 'FF', 39)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (16, 37, 'BB', 80)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (16, 38, 'CB', 77)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (16, 39, 'DD', 55)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (16, 40, 'FF', 34)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (17, 1, 'FD', 45)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (17, 2, 'FF', 7)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (17, 3, 'CB', 79)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (17, 4, 'DD', 54)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (17, 5, 'BB', 81)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (18, 6, 'BB', 81)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (18, 7, 'AA', 99)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (18, 8, 'DD', 55)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (18, 9, 'CC', 71)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (18, 10, 'CC', 67)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (19, 11, 'FF', 37)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (19, 12, 'FF', 16)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (19, 13, 'AA', 90)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (19, 14, 'DD', 54)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (19, 15, 'BA', 86)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (20, 16, 'BA', 87)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (20, 17, 'FF', 20)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (20, 18, 'FF', 4)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (20, 19, 'FF', 23)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (20, 20, 'DD', 55)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (21, 21, 'FF', 28)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (21, 22, 'BA', 89)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (21, 23, 'DD', 51)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (21, 24, 'CC', 73)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (21, 25, 'DC', 63)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (22, 26, 'BB', 81)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (22, 27, 'AA', 99)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (22, 28, 'DD', 51)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (22, 29, 'CB', 76)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (22, 30, 'FF', 19)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (23, 31, 'AA', 97)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (23, 32, 'FF', 2)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (23, 33, 'FF', 39)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (23, 34, 'FF', 2)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (23, 35, 'FF', 8)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (24, 36, 'DD', 50)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (24, 37, 'FD', 42)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (24, 38, 'FF', 31)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (24, 39, 'DD', 52)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (24, 40, 'FD', 44)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (25, 1, 'DC', 63)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (25, 2, 'FF', 28)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (25, 3, 'FF', 6)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (25, 4, 'FF', 31)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (25, 5, 'DD', 54)

INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (26, 6, 'BA', 88)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (26, 7, 'FF', 22)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (26, 8, 'CB', 76)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (26, 9, 'BB', 83)
INSERT INTO ExamResult(StudentID, CourseID, AlphGrade, NumGrade)
VALUES (26, 10, 'CC', 70)

-- view the ExamResult table in order
SELECT * FROM ExamResult ORDER BY StudentID, CourseID

-- Usis DATABASE QUERIES

-- Q1) Retrieve all the columns from the CourseInstructor in the table whose Lastname begins with the letter 'B' and decreases alphabetically by Firstname
SELECT * FROM CourseInstructor
WHERE Lastname like 'b%'
ORDER BY Firstname DESC

-- Q2) Retrieve the StudentID for the Firstname is 'Buket' and Lastname is 'Yıldız'
SELECT StudentID FROM Student
WHERE Firstname = 'Buket' AND Lastname = 'Yıldız'

-- Q3) Retrieve the sum of credits of all courses where unique department from table Course
SELECT DepartmentID, SUM(Credits) AS [Sum of Credits] FROM Course
GROUP BY DepartmentID

-- Q4) Retrieve all students with undefined Secondname and birthplace in Istanbul
SELECT * FROM Student
WHERE Secondname IS NULL AND PlaceOfBirth = 'İstanbul'

-- Q5) Retrieve Firstname, Lastname and DateOfBirth of all students who is born between 01-09-1996 and 01-06-1997 arranged chronologically
SELECT Firstname, Lastname, DateOfBirth FROM Student
WHERE DateOfBirth BETWEEN '1996-09-01' AND '1997-06-01'
ORDER BY DateOfBirth ASC

-- Q6) Retrieve the ids and names of the departments belonging to faculties
SELECT DepartmentID, Departmentname, Facultyname FROM Department JOIN Faculty ON Faculty.FacultyID = Department.FacultyID

-- Q7) Show names of all course instructors along with departments they work for
SELECT Firstname, Secondname, Lastname, Departmentname, Title 
FROM CourseInstructor
JOIN Course ON Course.CourseInstructorID = CourseInstructor.CourseInstructorID
JOIN Department ON Department.DepartmentID = Course.DepartmentID
ORDER BY Departmentname

-- Q8) Retrieve all female students who studying mathematical engineering 
SELECT Firstname, Secondname, Lastname, Gender, DateOfBirth, PlaceOfBirth, Address, Email, Mobilephone 
FROM Student JOIN Department ON Student.DepartmentID = Department.DepartmentID
WHERE Departmentname = 'Mathematical Engineering' AND Gender = 'F'

-- Q9) Retrieve students who received average grades below 3 in Spring Semester 2019
SELECT Student.StudentID, Firstname, Secondname, Lastname, AvgGrade
FROM Student JOIN ScoreRecord ON Student.StudentID = ScoreRecord.StudentID
WHERE IsSpringSemester = 1 AND YearOfSemester = 2019 AND AvgGrade <= 3
ORDER BY AvgGrade DESC

-- Q10) Show the graduation average of students of each department
SELECT ScoreRecord.StudentID, Departmentname, Firstname, Lastname, AVG(AvgGrade) AS [Graduation Average]
FROM ScoreRecord JOIN Student ON  Student.StudentID = ScoreRecord.StudentID
JOIN Department ON Department.DepartmentID = Student.DepartmentID
GROUP BY  ScoreRecord.StudentID, Departmentname, Firstname, Lastname
ORDER BY Departmentname ASC

-- Q11) Retrieve the oldest top 3 students with their departments
SELECT TOP 3 Firstname, Lastname, DateOfBirth, Departmentname
FROM Student JOIN Department ON Department.DepartmentID = Student.DepartmentID
ORDER BY DateOfBirth

-- Q12) Show how many departments are in each faculty
SELECT Facultyname, COUNT(*) DepartmentID 
FROM Department JOIN Faculty ON Faculty.FacultyID = Department.FacultyID
GROUP BY Facultyname, Department.FacultyID

-- Q13) Retrieve the student with the highest average grade in the fall semester of 2019
SELECT MAX(AvgGrade) AS [Selected Student] FROM ScoreRecord
WHERE IsFallSemester = 1 AND YearOfSemester = 2019

-- Q14) Show the instructors who give courses with a credit of 4 or more, with their department and course names
SELECT Course.CourseInstructorID, Firstname, Secondname, Lastname, Title, Credits
FROM Course JOIN CourseInstructor ON CourseInstructor.CourseInstructorID = Course.CourseInstructorID
GROUP BY Course.CourseInstructorID, Firstname, Secondname, Lastname, Title, Credits
HAVING Credits >= 4

-- Q15) Retrieve Firstname, Lastname of the students in alphabetical order with their grades whose alphabetic grade is AA 
SELECT Firstname, Lastname, NumGrade, AlphGrade
FROM ExamResult JOIN Student ON Student.StudentID = ExamResult.StudentID
WHERE AlphGrade = 'AA'
ORDER BY Firstname, Lastname

-- VARIOUS QUERIES

-- Q16) 
SELECT UPPER(Firstname) AS FirstName, UPPER(LastName) AS LastName
FROM CourseInstructor

-- Q17) 
SELECT LEN(Firstname) AS [the number of letters in the first name]
FROM CourseInstructor

-- Q18)
SELECT REVERSE(Firstname) AS [spelling of the first name in reverse]
FROM CourseInstructor

-- Q19)
SELECT SUBSTRING(Firstname, 2, 2), SUBSTRING(Lastname, 2, 3)
FROM CourseInstructor

-- Q20)
SELECT StudentID, DAY(DateOfBirth), MONTH(DateOfBirth), YEAR(DateOfBirth)
FROM Student

-- Q21)
SELECT SYSDATETIME()

-- Q22)
SELECT ISDATE(Firstname)
FROM CourseInstructor

-- Q23)
SELECT DateOfBirth, DATEADD(YEAR, 5, DateOfBirth)
FROM Student

-- Q24) Show the age of each student
SELECT Firstname, Lastname, DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age
FROM Student

-- Q25) 
SELECT AvgGrade, ROUND(AvgGrade, 1)
FROM ScoreRecord

-- Q26) 
SELECT POWER(2, 3)

-- Q27)
SELECT SQRT(9)

-- Q28) 
SELECT EXP(1)

-- Q29) 
SELECT SIN(PI() / 2)

-- Q30) 
BEGIN TRANSACTION
DELETE FROM Administrator
WHERE Username = 'l5815025'
COMMIT

BEGIN TRANSACTION
DELETE FROM Administrator
WHERE Username = 'l5815025'
ROLLBACK

-- Q31) Query that selects string containing letters with DECLARE variables
DECLARE @MyVariable TABLE(NAME varchar(250))

INSERT INTO @MyVariable(NAME) VALUES ('abcABC')
INSERT INTO	@MyVariable(NAME) VALUES ('111111')
INSERT INTO @MyVariable(NAME) VALUES ('A1b2C3')

SELECT * FROM @MyVariable 
WHERE NAME LIKE '[A-Za-z]%'

GO

-- Q32) Write the function finding the factorial of the number entered
CREATE FUNCTION Factorial(@num int)
RETURNS bigint
AS
BEGIN
DECLARE @i int = 1
	WHILE @num > 1
	BEGIN
		SET @i = @num * @i
		SET @num = @num - 1
	END
RETURN @i
END

SELECT dbo.Factorial(5) AS [5!]

-- Q33) Check whether a given number is even
CREATE FUNCTION IsEven(@num int)
RETURNS bit
AS
BEGIN
DECLARE @IsEven bit = 0
IF @num % 2 = 0
BEGIN
	SET @IsEven = 1
END
RETURN @IsEven
END
	
SELECT 100 AS [Is the Number Even?], dbo.IsEven(100) AS [True -> 1 : False -> 0]

-- Q34)
CREATE DATABASE UsisCopy ON PRIMARY(NAME = 'UsisCopy_data', FILENAME = 'C:\MyDatabases\UsisCopy_data.mdf')
LOG ON(NAME = 'UsisCopy_log', FILENAME = 'C:\MyDatabases\UsisCopy_log.ldf')

CREATE DATABASE UsisCopy
BACKUP DATABASE UsisCopy TO DISK = 'C:\MyBackups\UsisCopy.bak'

DROP DATABASE UsisCopy

RESTORE DATABASE UsisCopy FROM DISK = 'C:\MyBackups\UsisCopy.bak'