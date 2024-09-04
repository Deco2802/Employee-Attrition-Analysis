create database employee_attrition;
use employee_attrition;
select * from emplcar_tableoyee_attirtion_new;
desc employee_attirtion_new;
select Gender,count(Gender) from employee_attirtion_new where Attrition="Yes" group by Gender;
select count(*) from employee_attirtion_new where Age between 36 and 60;
SELECT COUNT(*) FROM employee_attirtion_new where Attrition="Yes";
alter table employee_attirtion_new add column age_category varchar(20);
set sql_safe_updates=0;
update employee_attirtion_new set age_category=case when Age between 18 and 35 then "Young adults"
when Age between 36 and 60 then "Middle Aged" else "Old aged" end;
select age_category,count(*) from employee_attirtion_new where Attrition="Yes" group by age_category;
alter table employee_attirtion_new drop column salary_category;
alter table employee_attirtion_new add column salary_category varchar(20);
update employee_attirtion_new set salary_category=case when monthlyincome<5000 then 'Low salary'
when monthlyincome>=5000 and monthlyincome<=10000 then 'Average salary'
else 'High salary' end ;
select avg(Age) from employee_attirtion_new where Attrition="Yes";
select count(*) from employee_attirtion_new where salary_category="High salary";
select salary_category,count(*) from employee_attirtion_new where Attrition="Yes" group by salary_category;
select Department,count(*) from employee_attirtion_new where Attrition="Yes" group by Department;
select avg(DistanceFromHome) from employee_attirtion_new;
select max(Education),count(max(Education)) from employee_attirtion_new group by Education;
select EducationField,count(EducationField) from employee_attirtion_new group by EducationField;
select avg(EnvironmentSatisfaction) from employee_attirtion_new;
select max(MaritalStatus) from employee_attirtion_new where Attrition="Yes";


