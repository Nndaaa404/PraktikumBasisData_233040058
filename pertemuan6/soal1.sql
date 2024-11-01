SELECT e.Name AS EmployeeName, d.DepartmentName
FROM Employee e
JOIN Departments d ON e.DepartmentsID = d.DepartmentsID
WHERE e.DepartmentsID IS NOT NULL;