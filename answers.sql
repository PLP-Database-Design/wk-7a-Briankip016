-- quz 1
SELECT
  OrderID,
  CustomerName,
  TRIM(product) AS Product
FROM
  ProductDetail,
  unnest(string_to_array(Products, ',')) AS product;

-- quiz 2
-- Orders table (OrderID is primary key)
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- OrderItems table (composite primary key: OrderID, Product)
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;

