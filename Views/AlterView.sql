----Alter views example
		Create View Cars_TestView As 
		(Select * from Cars Order by 1 desc) -- this doesnt work as order by is not premitted in view creation or altering
-------------------------
		Create View Cars_TestView As 
		(Select * from Cars)
-----------------------
		Select * from Cars_TestView
--Altering an existing view
		Alter View dbo.Cars_TestView
		as
		(Select top 1 * from Cars)
------------------
		Select * from Cars_TestView
-------------------