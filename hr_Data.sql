select * from hr_data;

select count(*) from hr_data;

select * from hr_data where salary = (select max(Salary) from hr_data);

select * from hr_data where salary = (select min(Salary) from hr_data);

select count(Location) from hr_data;

select Location, count(Location) from hr_data group by Location; 

select gender, sum(Salary) from hr_data group by gender;

select gender, count(gender) from hr_data group by gender;

select Department, 
count(*) AS total_employees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender  = 'Other' THEN 1 END) AS Other_count
from hr_data group by Department;

select Location,
count(*) AS total_employees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender = 'Other' THEN 1 END) AS Other_count
from hr_data group by Location;

select JobRole,
count(*) AS total_employees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender = 'Other' THEN 1 END) AS Other_count
from hr_data group by JobRole;

select DegreeEducation,
count(*) AS total_employees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender = 'Other' THEN 1 END) AS Other_count
from hr_data group by DegreeEducation;

select EmploymentType,
count(*) AS total_employees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender = 'Other' THEN 1 END) AS Other_count
from hr_data group by EmploymentType;

select MaritalStatus,
count(*) AS total_employees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender = 'Other' THEN 1 END) AS Other_count
from hr_data group by MaritalStatus;

select WorkMode,
count(*) As totalEmployees,
count(CASE WHEN Gender = 'Male' THEN 1 END) AS Male_count,
count(CASE WHEN Gender = 'Female' THEN 1 END) AS Female_count,
count(CASE WHEN Gender = 'Other' THEN 1 END) AS Other_count
from hr_data group by WorkMode;

select * from Hr_data where age <= 30;

select * from hr_data where Location ='Mumbai' and JobRole = 'Sales Associate' and Department = 'HR';

select HireDate, COUNT(*) AS daily_joins, SUM(count(*)) OVER (ORDER BY HireDate) AS running_total From hr_data group by HireDate order by HireDate;

SELECT 
    h.EmployeeID,
    h.Employee_Name,
    h.Department,
    h.Salary
FROM hr_data h
WHERE h.Salary = (
    SELECT MAX(Salary)
    FROM hr_data
    WHERE Department = h.Department
);
select Department, max(Salary) AS Highest_Salary from hr_data group by Department;
select Department, min(Salary) AS Lowest_Salary from hr_data group by Department;

select h.EmployeeID,h.Employee_Name,h.Gender,h.Department,h.Salary from hr_data h where h.salary =(select MAX(Salary) from hr_data where Department = h.Department);
select h.EmployeeID,H.Employee_Name,h.Gender,h.Department,h.Salary from hr_data h where h.salary =(select MIN(Salary) from hr_data where Department = h.Department);