--ANSII = Yazım standartıdır Her slq de çalışır
--case insersitice = Büyük küçük harf duyarsız 
Select * from Customers

Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers  --Alinaz denir isimlendirme

Select * from Customers where City = 'Berlin'

Select * from Products where CategoryID=1 or CategoryID=3 -- yada, iki şarttan biri gereçerli olur

Select * from Products where CategoryID=1 and UnitPrice>=10 -- ve, iki şarttan ikiside gelicektir. <> farkı demek

select * from Products order by ProductName -- ProductName e göre sırala demek

Select * from Products order by CategoryID,ProductName -- productnameleri categoryıd ye eşleyerek sırala

Select * from Products order by UnitPrice desc  --ascending=artan, asc   -- descending=düşen ,desc

Select * from Products where CategoryID=1 order by UnitPrice desc --categoryıd si 1 olan fiyatları azalan olarak listele

Select COUNT(*) Adet from Products -- products kısmında kaç tane ürün oldugunu sayar 

Select COUNT(*) Adet from Products where CategoryID=2 --kategorisi 2 olan kaç adet ürün vardır sorusunu yanıtlar listeler

Select CategoryID,COUNT(*) KaçAdetÜrünVar from Products group by CategoryID -- hangi categoryıd de kaç adet ürün var

Select CategoryID,Count(*) KaçAdetÜrünVar from Products group by CategoryID having COUNT(*)<10 --10 dan az kalan ürünler list

Select CategoryID,COUNT(*) from Products where UnitPrice>20 group by CategoryID having COUNT(*)<10 --sayısı 10 dan küçük  olan categoryıd leri veriri ve unitpricesı 20 den büyük olanları listeler 

Select * from Products inner join Categories on Products.CategoryID=Categories.CategoryID

Select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName  from Products inner join Categories on Products.CategoryID=Categories.CategoryID --istenilen başlıklarda birleştirme yapıp listeler

-- inner join sadece iki tablodaki eşleşen dataları geitiri eşleşmeyenleri getirmez
-- left join Solda olup sağda olmayanlarıda getir demektir
-- right join Sağda olup Solda olmayanlarıda getir demektir
--DTO Data Transformation Object 

Select * from Products p left join [Order Details] od on p.ProductID=od.ProductID 

Select * from Customers c left join Orders o on c.CustomerID=o.CustomerID -- müşterilerde olup siparişlerde olmayan

Select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null --üye olup ürün almayanlar




