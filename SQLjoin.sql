/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT products.Name, categories.Name
FROM products
INNER JOIN categories
ON products.CategoryID = categories.CategoryID
WHERE categories.Name = 'computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

SELECT product.Name, products.Price, reviews.Rating
FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE reviews.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT employees.FirstName, employees.LastName, Sum(sales.Quantity) as Total
FROM employees
INNER JOIN sales
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY total DESC
LIMIT 1;

/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT departments.Name as "Dep Name", Categories.Name as "Cat Name"
FROM categories
INNER JOIN departments
ON categories.DepartmentID = departments.DepartmentID
WHERE categories.Name = "appliances" OR categories.Name = "games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

SELECT products.Name, Sum(sales.Quantity) as "Total Units Sold", Sum(sales.PricePerUnit * sales.Quantity) as "Total Price Sold"
FROM products
INNER JOIN sales
ON products.ProductID = sales.ProductID
WHERE products.Name LIKE "%hotel%california%";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT products.Name, reviews.Rating, reviews.Reviewer, reviews.Comment
FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE products.Name LIKE "%visio%";

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */

-- SELECT 
-- FROM 
-- JOIN
-- ON
-- WHERE
