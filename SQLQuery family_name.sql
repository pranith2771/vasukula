CREATE DATABASE SHIRLEY_FAMILY;
USE SHIRLEY_FAMILY;

CREATE TABLE Family_Members (
    Id INT PRIMARY KEY,
    Family_Name VARCHAR(25),
    Gender CHAR(1),
    Age INT,
    Salary INt, 
    city VARCHAR(15),
    country VARCHAR(15)
);

select * from Family_Members

INSERT INTO Family_members values (1, 'Shirley Vasukula', 'F', 28, 3500 ,'Toronto', 'Canada')
INSERT INTO Family_members values (2, 'Pranith Munnangi' , 'M', 31, 5000,'North York', 'Canada');
INSERT INTO Family_members values (3, 'Venkat Vasukula' , 'M', 55, 100000,'Borabanda', 'India');
INSERT INTO Family_members values (4, 'Assuntha Vasukula' , 'F', 53, 10000,'Borabanda', 'India');
INSERT INTO Family_members values (5, 'Veronica Vasukula' , 'F', 27, 50000,'Chennai', 'India');
INSERT INTO Family_members values (6, 'Divya Abhishakam' , 'F', 32, 65000, 'Boraband', 'India');
INSERT INTO Family_members values (7, 'Kevin Francies', 'M', 21, 40000,'Suchitra', 'India');
INSERT INTO Family_members values (8, 'Jessu Francies ', 'F', 53, 20000, 'Old city', 'India');
INSERT INTO Family_members values (9, 'Sanjay Francies', 'M', 56, 100000,'Suchitra', 'India');
INSERT INTO Family_members values (10, 'Roslien Francies', 'F', 55, 200000,'Suchitra', 'India');
INSERT INTO Family_members values (11, 'Joy Francies', 'M', 27, 4500,'Brampton', 'Canada');
INSERT INTO Family_members values (12, 'Santhosh Francies', 'M', 60, 46000, 'Borabanda', 'India');
INSERT INTO Family_members values (13, 'Valdimer Vaz', 'M', 33, 5000,'Toronto', 'Canada');
INSERT INTO Family_members values (14, 'Silo Vaz', 'F', 61, 70000,'Mothinagar', 'India');
INSERT INTO Family_members values (15, 'Sian Vaz', 'F', 35, 66000,'Sanathnagar', 'India');
INSERT INTO Family_members values (16, 'Dennis Roy', 'M', 36, 6000,'Winsor', 'Canada');
INSERT INTO Family_members values (17, 'Urmila Francies' , 'F', 61,200000, 'Boraband', 'India');
INSERT INTO Family_members values (18, 'Chris Loods' , 'M', 19, 25000,'Abu Dabi', 'Dubai');
INSERT INTO Family_members values (19, 'Cyrus Loods', 'M', 22, 30000, 'Old city', 'India');
INSERT INTO Family_members values (20, 'Ratna Kumari' , 'F', 28, 150000,'Bondalgudda', 'India');



update Family_Members set [Family_Name] joy francies = 'Loveen Francies';

UPDATE Family_Members
SET [Family_Name] = 'Loveen Francies'
WHERE family_name = 'joy francies';


update Family_Members
set [Age] = 65
where Id = 12;
select * from Family_Members
where country = 'India' ;
select * from Family_Members
order by gender desc;
select count (*) As total_members  
from family_members;
select * from Family_Members
where city like '%r';
select *from Family_Members
where country = 'India' or city = ' Borabanda' ;
select * from Family_Members
select *  , sum( revenue)

update Family_Members
set Salary = 6000 
where ID =2 ;
update Family_Members
set Salary = 6000 
where ID =3 ;
select city, count(ID) as members 
from Family_Members
group by city;
SELECT city, COUNT(Id) AS MemberCount
FROM Family_Members
GROUP BY city;
ALTER  table Family_members
drop column phone_numbers;

alter table Family_members
add phone_numbers int not null;
select family_name, -- column name 
(
case
when age > 30 then 'high'
when age < 30 then 'low'
end  -- end the case i was looking for 
)
as age_diffrences -- naming the diffrebces im lookig for 
from family_members;-- table name 
/* case is used to show the diffrences with price age ect in a table it can be marked as anything using 'then' and naming the sytax  'as' */

