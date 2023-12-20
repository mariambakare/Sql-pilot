/*
Ensure you navigate to AdventureWorks2019 Database before attempting the exercise below. or download adventureworks2019 backup file from microsoft website using google engine for your search and then restore the database on your SSMS

*/



----ASSIGNMENT 1.1.1
/*PROVIDE A QUERY FROM PERSON.ADDRESS TABLE THAT INCLUDES ALL THE ROWS BUT HAS ONLY THE FOLLOWING COLUMN HEADERS
- AddressLine1 
-AddressLine2 
-City
-StateProvinceID
-PostalCode
*/
select AddressLine1, AddressLine2, City, StateProvinceID, PostalCode
from Person.Address


---ASSIGNMENT 1.1.2
/*MODIFY YOUR QUERY IN ASSIGNMENT 1.1.1 TO ONLY FETCH THE FIRST 10 ROWS WITH THE HEADERS IN IT.

*/
select top 10 AddressLine1, AddressLine2, City, StateProvinceID, PostalCode
from Person.Address



---ASSIGNMENT 1.1.3
/*PROVIDE A QUERY OF ALL THE TABLE COLUMNS AND ROWS IN HumanResources.Shift TABLE
*/
select *
from HumanResources.Shift

---ASSIGNMENT 1.1.4
/*PROVIDE A QUERY OF ONLY THE FIRST 50 ROWS IN THE Production.ProductTABLE
*/
select top 50 *
from Production.Product

---ASSIGNMENT 1.1.5
/*PROVIDE A QUERY THAT FETCHES ONLY THE BELOW COLUMNS IN THE Production.ProductModel TABLE

-ProductModelID
-Name
-CatalogDescription
-instructions
*/
select ProductModelID, Name, CatalogDescription, Instructions
from Production.ProductModel



---ASSIGNMENT 1.1.6
/*PROVIDE A QUERY THAT FETCHES THE FIRST 3000 ROWS IN THE Production.WorkOrder TABLE. ONLY ITHE BELOW COLUMNS ARE NEEDED


-WorkOrderID COLUMN MUST BE RENAMED TO WORK ORDER ID
-ProductID MUST BE RENAMED TO PRODUCT ID
-OrderQty
-StockedQty
-StartDate
-EndDate
*/
select top 3000 WorkOrderID [WORK ORDER ID], ProductID [PRODUCT ID], OrderQty, StockedQty, StartDate, EndDate
from Production.WorkOrder


---ASSIGNMENT 1.1.7
/*
MODIFY YOUR QUERY IN 1.1.6 TO HAVE A NEW COLUMN TO THE LAST OF THE REPORT TITLED [REPORTED BY ME] WHICH IS CUSTOMISED TO YOUR NAME ALL THROUGH THE ROWS IN THAT COLUMN
*/
select top 3000 WorkOrderID [WORK ORDER ID], ProductID [PRODUCT ID], OrderQty, StockedQty, StartDate, EndDate, 'Mariam' as [REPORTED BY ME]
from Production.WorkOrder



---ASSIGNMENT 1.1.8
/*
WRITE A QUERY THAT FETCHES ONLY RECORDS FROM PRODUCTION.WORKORDER TABLE WHERE THE ORDER QUANTITY IS 16. 
*/
select *
from Production.WorkOrder
where OrderQty = 16


---ASSIGNMENT 1.1.9
/*
MODIFY YOUR QUERY IN 1.1.8 TO FETCH ONLY RECORDS FROM PRODUCTION.WORKORDER TABLE WHERE THE ORDER QUANTITY IS GREATER THAN 10 BUT LESS THAN 20. 
*/
select*
from Production.WorkOrder
where OrderQty>10 and OrderQty<20


---ASSIGNMENT 1.1.10
/*
PROVIDE A QUERY TO FETCH ONLY RECORDS FROM PRODUCTION.WORKORDER TABLE WHERE THE STARTDATE IS 2013-08-11
*/
select *
from Production.WorkOrder
where StartDate = '2013-08-11'


---ASSIGNMENT 1.1.11
/* FETCH ALL COLUMNS AND ROWS IN THE Purchasing.ProductVendor TABLE WHERE MINORDERQTY IS 100 AND THE MAXORDERQTY IS GREATER THAN 500
*/
select *
from Purchasing.ProductVendor
where MinOrderQty = 100 and MaxOrderQty > 500


---ASSIGNMENT 1.1.12
/*
FETCH ALL RECORDS IN THE Purchasing.ProductVendor TABLE WHOSE PRODUCTID IS 325 OR 341 OR 345 AND HAVE A MINORDERQTY OF 1  AND WHOSE STANDARDPRICE IS GREATER THAN 40
*/
select *
from Purchasing.ProductVendor
where (ProductID = 325 or ProductID = 341 or ProductID = 345) and MinOrderQty = 1 and StandardPrice > 40


---ASSIGNMENT 1.1.13
/*
FETCH ALL RECORDS IN THE Sales.CreditCard TABLE WHOSE CARDTYPE HAS U AND EXPMONTH IS GREATER THAN 5
*/
select *
from Sales.CreditCard
where CardType like '%u%' and ExpMonth>5

---ASSIGNMENT 1.1.14
/*
FETCH ONLY THE BELOW COLUMNS AND THEIR RECORDS IN THE Sales.CreditCard TABLE WHERE EXPYEAR IS BETWEEN 2006 AND 2008 
-CREDITCARDID
-CARDNUMBER
-EXPYEAR
*/
select CreditCardID, CardNumber, ExpYear
from Sales.CreditCard
where ExpYear between 2006 and 2008



---ASSIGNMENT 1.1.15
/* fetch only BusinessEntityID, Name and SalesPersonID from sales.store table where the SalesPersonID is 277,281,279,281,286,290 using the IN CLAUSE.
*/
select BusinessEntityID, Name, SalesPersonID
from Sales.Store
where SalesPersonID in (277, 281, 279, 281, 286, 290)


---ASSIGNMENT 1.1.16
/* MODIFY YOUR QUERY IN 1.1.15 TO ONLY fetch RECORDS WHERE THE NAME COLUMN STARTS WITH F OR ENDS WITH P.
*/
select BusinessEntityID, Name, SalesPersonID
from Sales.Store
where Name like 'f%' or Name like '%p'



---ASSIGNMENT 1.1.17
/* PROVIDE THE REPORT WITH THE FOLLOWING COLUMNS IN THE Sales.SpecialOffer table where the type is 'No Discount'
-SpecialOfferID
-Description
-DiscountPct
-Type
-Category
*/
select SpecialOfferID, Description, DiscountPct, Type, Category
from Sales.SpecialOffer
where Type = 'no discount'


---ASSIGNMENT 1.1.18
/* modify your query in 1.1.18 to provide report where DisocuntPct is not more than 0.20 and the category is Reseller 
*/
select SpecialOfferID, Description, DiscountPct, Type, Category
from Sales.SpecialOffer
where DiscountPct <= 0.20 and Category='reseller'



---ASSIGNMENT 1.1.19
/* write a query that fetches all columns in the Sales.SalesOrderHeader table where the PurchaseOrderNumber is NULL and SalesOrderID contains 11  
*/
select *
from Sales.SalesOrderHeader
where PurchaseOrderNumber is null and SalesOrderID like '%11%'



---ASSIGNMENT 1.1.20
/* write a query that fetches all columns in the Sales.Currency table where the CurrencyCode contains A and the name also contains A 
*/
select *
from Sales.Currency
where CurrencyCode like '%A%' AND Name like '%A%'

----DATA ANALYST



----GOODLUCK!
