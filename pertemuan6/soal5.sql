SELECT e.name as EmployeeName, p.ProjectName
FROM Employee e
CROSS JOIN Projects p;