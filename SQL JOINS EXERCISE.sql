/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT P.Name as Product, C.Name as Category
 From bestbuy.products as P
 INNER JOIN bestbuy.categories AS C 
 ON C.CategoryID = P.CategoryID
 WHERE C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT P.Name as Product, P.Price as Price, r.rating
 FROM bestbuy.products as P
 inner join reviews as r on r.ProductID = P.ProductID
 WHERE r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, SUM(s.Quantity) AS Total FROM Sales AS s
INNER JOIN employees as e ON e.EmployeeID = s.EmployeeID
group by e.EmployeeID
ORDER BY Total desc;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as Department, c.Name as Category
FROM bestbuy.departments as d
INNER JOIN categories as c on c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, SUM(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as 'Total Revenue'
FROM products as p
INNER JOIN sales as s on s.ProductID = p.ProductID
WHERE p.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.name as Product, r.Reviewer as Name, r.Rating as rating, r.Comment as Comment
From products as p
INNER JOIN reviews as r on r.ProductID = p.ProductID
WHERE p.ProductID = 857 AND r.rating = 1;