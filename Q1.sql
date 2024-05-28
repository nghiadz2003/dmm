create table Courses
(
CourseNo varchar(30) primary key,
Name nvarchar(255),
Credits tinyint,
Description nvarchar(255)
);
create table Assessments
(
AssessmentCode varchar(30) primary key,
[Percent] float,
type nvarchar(30),
CourseNo varchar(30) foreign key references Courses(CourseNo)
);
create table Marks
(
StudentCode varchar(15) primary key,
mark float,
AssessmentCode varchar(30) foreign key references Assessments(AssessmentCode)
)