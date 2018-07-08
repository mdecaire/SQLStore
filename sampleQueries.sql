
--updating transactions
update transaction
set days_late= (date_returned-date_due);

--queries
--customers
column firstname format A20
column lastname format A20
column streetaddress format A50
SELECT firstname,lastname,customerID, streetaddress,zipcode
FROM customer
ORDER BY customerID;

--rentals history
column title format A55
select rh.transaction_date,m.title
from
rental_history rh inner join transaction t on rh.transactionID= t.transactionID
inner join Item_in_inventory iiv on iiv.inventoryId=t.itemid
inner join movie m on m.movieid=iiv.movieID
where t.chargeID =1 AND rh.transaction_date > date'2018-05-28' AND rh.transaction_date < date '2018-06-30'
Order by rh.transaction_date;

--distributor information
column name format A30
column streetaddress format A30
column city format A15
column genre_type format A20
select d.name,d.streetaddress,d.city,d.state, d.zipcode, dph.phone_number, dph.type,
g.genre_type from
distributor d inner join dist_phone_number dph on d.distributorID=dph.distid
inner join genre g on d.distributorid=g.distributorid
Order by d.name;

--update customer information
update customer
set lastname='Albares-Smythe'
where customerid=1001;

--delete 
delete from customer
where customerid=1002;
rollback;
