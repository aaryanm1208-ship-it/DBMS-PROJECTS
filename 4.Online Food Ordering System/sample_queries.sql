INSERT INTO Customers (Name, Email, Phone) VALUES ('Aaryan Mudvikar', 'aaryan@gmail.com', '9876543210');
INSERT INTO Restaurants (Name, Location) VALUES ('Spicy Bites', 'Pune');
INSERT INTO Menu (RestaurantID, DishName, Price) VALUES (1, 'Paneer Butter Masala', 200.00);
INSERT INTO Orders (CustomerID, RestaurantID, TotalAmount) VALUES (1, 1, 200.00);

SELECT O.OrderID, C.Name, R.Name AS RestaurantName, O.TotalAmount
FROM Orders O
JOIN Customers C ON O.CustomerID=C.CustomerID
JOIN Restaurants R ON O.RestaurantID=R.RestaurantID;
