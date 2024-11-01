SELECT e.Name AS EmployeeName, p.ProjectName
FROM Employee e
LEFT JOIN Projects p ON e.DepartmentsID = p.DepartmentsID;