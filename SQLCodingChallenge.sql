CREATE TABLE Products(ID int PRIMARY KEY, 
                      Name varchar(255), 
                      Price int);  
                      
INSERT INTO Products
    (ID, Name, Price)
VALUES
    (1, 'Galaxy 8', 55),
    (2, 'iPhone', 200),
    (3, 'HTC U11', 50),
    (4, 'LG V30', 200);
                      
CREATE TABLE Customers(ID int NOT NULL, 
                      Firstname varchar(255), 
                      Lastname varchar(255), 
                      CardNumber int,
                      CONSTRAINT PK_Customer PRIMARY KEY(ID));
                      
INSERT INTO Customers
    (ID, Firstname,Lastname, CardNumber)
VALUES
    (1, 'Giovanne','De La Cruz', 123456),
    (2, 'Alberto','Castillo', 567890),
    (3, 'Abid', 'Choudhury', 987654),
    (4, 'Tina', 'Smith', 123890);
                      
CREATE TABLE Orders(ID int PRIMARY KEY,
                    ProductsID int FOREIGN KEY REFERENCES Products(ID),
                    CustomerID int FOREIGN KEY REFERENCES Customers(ID));
               
INSERT INTO Orders
VALUES 
    (1,2,1),
    (2,4,2),
    (3,1,3),
    (4,2,4);

SELECT * FROM ORDERS WHERE CustomerID =
(SELECT ID FROM Customers WHERE FirstName = 'Tina' AND 
LastName = 'Smith');

SELECT (SELECT COUNT(ID) FROM ORDERS WHERE ProductsID = (SELECT 
ProductsID FROM Products WHERE Name = 'iPhone'));