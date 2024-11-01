SELECT e.Name AS EmployeeName, m.Name AS ManagerName
FROM Employee e
LEFT JOIN Employee m ON e.ManagerID = m.EmployeeID
WHERE m.Name IS NOT NULL;