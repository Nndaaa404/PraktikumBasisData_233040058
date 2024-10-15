SELECT c.custid, 
        COUNT(od.orderid) AS numorders,
        SUM(od.qty) AS totalqty
FROM Sales.Customers c 
INNER JOIN Sales.Orders o ON c.custid = o.custid
INNER JOIN Sales.OrderDetails od ON o.orderid = od.orderid
WHERE c.country IN ('USA')
GROUP BY c.custid;