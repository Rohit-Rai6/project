Create database SNS;
Use SNS;
Create table student(Id int(10) primary key,Name varchar(255) not null,Program varchar(255)not null);
show tables;
describe student;
create table instructor(ID int(10) primary key,instructorName varchar(255)not null,Department varchar(255)not null);
create table course(courseId int(10) primary key,syallaus varchar(255),credit varchar(255));
insert into student values(101,"Rahul Narayane","PG in DataAnalyst"),
(102,"Mustafa Khan","Master in DataAnalyst"),
(103,"Rohit Roy","AI");
insert into course_offering values(101,11,20,2020),
(102,12,21,2022),
(103,13,22,2021);
insert into instructor values(11,"Satvika Thakkar","PG"),
(12,"Meena Patil","Master"),
(13,"Komal Shah","ML");
insert into instructor values(14,"komal Kumawat","AI"),
(15,"Richa Modi","skill Development");
insert into course values(20,"Power BI",70),
(21,"SQL",100),
(22,"Python",80);
insert into course values(23,"ML",90),
(24,"AI",85);
create table course_offering(studentID int(10),foreign key (studentID) references student(ID),instructorID int(10), 
foreign key (instructorID) references instructor(ID),courseID int(10), foreign key (courseID) references course(courseId),years int(10));
select * from student;
desc student;
desc course;
desc instructor;
desc course_offering;
select * from course;
select * from course_offering;
select * from instructor;
