Use NORTHWND
Go
Select Count(*) InnerJoinCount from dbo.Customers C 
Inner join dbo.Orders O ON C.CustomerID = O.CustomerID

Select Count(*) LeftouterJoinCount1 from dbo.Customers C 
Left outer join dbo.Orders O ON C.CustomerID = O.CustomerID
--Using 'Left outer join' or 'Left join' seems to be giving same result set (MSSQL)

Select Count(*) LeftouterJoinCount2 from dbo.Customers C 
Left outer join dbo.Orders O ON C.CustomerID = O.CustomerID
Where O.CustomerID is null

Select Count(*) RightouterJoinCount1 from dbo.Orders O 
Right outer join dbo.Customers C ON C.CustomerID = O.CustomerID
--Using 'Right outer join' or 'Right join' seems to be giving same result set (MSSQL)

Select Count(*) RightouterJoinCount2 from dbo.Orders O 
Right outer join dbo.Customers C ON C.CustomerID = O.CustomerID
Where O.CustomerID is null

Select Count(*) FullouterJoinCount1 from dbo.Orders O 
Full outer join dbo.Customers C ON C.CustomerID = O.CustomerID

Select Count(*) FullouterJoinCount2 from dbo.Orders O 
Full outer join dbo.Customers C ON C.CustomerID = O.CustomerID
Where O.CustomerID is null or C.CustomerID is null

Select Count(*) crossJoin from dbo.Orders O
CROSS JOIN dbo.Customers; 

-----------------------------------------
Create table Cars 
(Cartype Varchar(30),
CarModel Varchar(30),
ColorID Int Null)

Create table Color
(
ColorID Int Identity(1,1),
Colour Varchar(30)
)

Insert into Color (Colour) values ('Red')
Insert into Color (Colour) values ('Gold')
Insert into Color (Colour) values ('Grey1')
Insert into Color (Colour) values ('Blue')
Insert into Color (Colour) values ('White')
Insert into Color (Colour) values ('NavyBlue')
Insert into Color (Colour) values ('Purple')
Insert into Color (Colour) values ('Silver'),('Electric Blue'),('Magneta'),('Rama')
Insert into Color (ColorID,Colour) values ('6','Orange')

Insert into Cars values ('Sedan','2door','1')
Insert into Cars values ('Truck','4door','')
Insert into Cars values ('Minivan','3door','1')

Update Cars set ColorID = 14 where Cartype = 'Touring'
Select * from Cars
Select * from Color
-- No need to refer this to me anywhere...no prejudice ..ok?.
Delete from Color Where Colour = 'Grey'

Select * from Cars CA
Inner Join Color CO on CA.ColorID = CO.ColorID

Select * from Color CO
Inner Join Cars CA on CA.ColorID = CO.ColorID

Select * from Cars
Select * from Color

Select * from Cars CA
Left Outer Join Color CO on CA.ColorID = CO.ColorID
--Where CO.ColorID is null

Select * from Cars CA
Right Outer Join Color CO on CA.ColorID = CO.ColorID
--Where CA.ColorID is null

Select * from Cars CA
Full Outer Join Color CO on CA.ColorID = CO.ColorID
--Where CO.ColorID is null or CA.ColorID is null

--------------------------------- These work:::::
Select * from Cars CA Where Cartype >= 'M' and Cartype < 'U'
Select * from Cars CA Where Cartype between 'M' and 'U' --(i.e., >=M and < U)
Select * from Cars CA Where Cartype < 'S'
