USE AdventureWorks;
GO 
/*1. Hiển thị Title, FirstName, MiddleName, LastName từ bảng Person.Person

SELECT Title, FirstName , MiddleName, LastName FROM Person.Person
*/
/* 2 Hiển thị Title, FirstName, LastName như là một chuỗi nối nhằm dễ đọc và cung 
cấp tiêu đề cho cột tên (PersonName).
SELECT Title, FirstName, LastName FROM Person.Person
*/
/*
Bài 3 Hiển thị chi tiết địa chỉ của tất cả các nhân viên trong bảng Person.Address 
SELECT AddressLine1,City FROM Person.Address 
*/
/* Bài 4  Liệt kê tên của các thành phố từ bảng Person.Address và bỏ đi phần lặp lại
SELECT DISTINCT City FROM Person.Address ; 
*/
/* Bài 5 Hiển thị chi tiết của 10 bảng ghi đầu tiên của bảng Person.Address. 
SELECT * FROM Person.Address WHERE Person.Address.Addressid <=10;
*/
/*
6. Hiển thị trung bình của tỷ giá (Rate) từ bảng HumanResources.EmployeePayHistory. 
SELECT AVG(Rate)FROM HumanResources.EmployeePayHistory;
*/
/*
7. Hiển thị tổng số nhân viên từ bảng HumanResources.Employee 
SELECT COUNT(BusinessEntityiD) FROM HumanResources.EmployeePayHistory
*/
/*
8. Đưa ra danh sách các khách hàng có trên 10 đơn hàng
*/
SELECT Person.Person.LastName
FROM Person.Person, Sales.SalesOrderDetail 
WHERE Person.Person.rowguid = Sales.SalesOrderDetail.rowguid AND Sales.SalesOrderDetail.OrderQty >=10

/*
9. Đưa ra danh sách các mặt hàng chưa từng được đặt hàng
*/
