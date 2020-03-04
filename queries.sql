-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT P."ProductName", C."CategoryName" FROM "Product" AS P
JOIN "Category" AS C
ON P.CategoryId = C.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

--??Getting more results here than expected

SELECT O."Id", S."CompanyName" FROM "Order" AS O
JOIN "Shipper" AS S
WHERE O."OrderDate" < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT P."ProductName", O."Quantity" FROM "OrderDetail" AS O
JOIN "Product" AS P ON O."ProductId" = P."Id"
WHERE O."OrderID" = 10251
ORDER BY "ProductName"

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT O."Id" AS "OrderID", C."CompanyName" AS "CompanyName", E."LastName" AS "LastName" FROM "Order" AS O
JOIN "Customer" AS C ON C."Id" = O."CustomerId"
JOIN "Employee" AS E ON E."Id" = O."EmployeeId"


