--19 tables

create table Customer(
CustomerID number primary key,
firstName varchar2(50) not null,
lastName varchar2(50) not null,
AccountBalance number(*,6) ,
streetAddress varchar2(150) not null,
city varchar2(50) not null,
state varchar2(2)not null,
zipcode number(5) not null);

create table Phone_Number(
PhoneID number primary key,
PhoneNumber varchar2(15) not null,
type varchar2(20),
preferredNumber number(3),
ownerID number not null,
constraint fk_ownerID
foreign key(ownerID)
references Customer(CustomerID)
ON DELETE CASCADE
);


create table Payment_Information(
paymentID number primary key,
ownerID number not null,
cardType varchar2(10)not null,
cardNumber varchar2(20) not null,
Expiration  date not null,
preferredCard number(3),
constraint fk_Pay_ownerID
foreign key(ownerID)
references Customer(CustomerID)
ON DELETE CASCADE
);


create table charges(
chargeID number primary key,
feeName varchar2(20) not null,
charge number (*,6)not null
);



create table distributor(
distributorID number primary key,
name varchar2(50) not null,
streetAddress varchar2(50) not null,
city varchar2(50) not null,
state varchar2(2) not null,
zipcode number(5) not null
);


create table discount(
discountID number primary key,
name varchar2(20) not null,
amount number(*,6)not null
);



create table academy_awards(
awardID number primary key,
category_awarded varchar2(100) not null,
yearAwarded number(4)
);



create table Director_list(
directorListID number primary key,
first_name varchar2(50) not null,
last_name varchar2(50) not null
);


create table performer_list(
performerID number primary key,
first_name varchar2(50) not null,
last_name varchar2(50) not null
);

-- foreign key tables

create table genre(
genreID number primary key, 
genre_type varchar2(30) not null,
DistributorID number  not null,
constraint fk_genre
foreign key(DistributorID)
references distributor(distributorID)
ON DELETE CASCADE
);

create table Movie(
movieID number primary key,
Title varchar2(100) not null,
year number(4) not null,
rating varchar2(5) not null,
runtime varchar(10) not null,
price number(*,6) not null,
genreID number not null,
CONSTRAINT fk_typeofgenre
foreign key(genreID)
references genre(genreID) 
ON DELETE CASCADE
);

create table item_In_Inventory(
InventoryID number primary key,
format varchar2(3) not null,
price number(*,6) not null,
copiesAvailable number (3) not null,
movieId number not null,
CONSTRAINT fk_movieid
foreign key(movieid)
references Movie(movieID) 
ON DELETE CASCADE
);

create table inventory_by_distributor(
distributor_title_id varchar2(20) not null,
distributor_serialid varchar2(20) not null,
basePrice number(*,6) not null,
discountsApplied number not null,
DistributorID number not null,
itemId number not null,
constraint inventoryID primary key(DistributorID,itemID),
CONSTRAINT FK_Discount
foreign key(discountsapplied)
references Discount(discountID)
ON DELETE CASCADE,
CONSTRAINT FK_Distributor
foreign key(DistributorID)
references distributor(distributorID)
ON DELETE CASCADE,
CONSTRAINT FK_DIST_ITEM
foreign key(itemID)
references movie(movieId)
ON DELETE CASCADE
);


create table director(
directorID number not null,
movieID NUMBER NOT NULL,
constraint fk_dlist
foreign key(directorId)
references Director_list(directorListID)
ON DELETE CASCADE,
CONSTRAINT fk_directorTo_movie
foreign key(movieId)
references movie(movieId) 
ON DELETE CASCADE,
constraint dir_pk primary key(directorId, movieID)
);


create table performer(
performerID number not null,
movieID number not null,
CONSTRAINT FK_PERFORMER
foreign key(performerID)
references performer_list(performerID)
ON DELETE CASCADE,
CONSTRAINT fk_perf2movie
foreign key(movieID)
references movie(movieId)
ON DELETE CASCADE,
constraint per_pk primary key(performerID , movieID)
);

create table transaction(
transactionID number primary key,
date_due date not null,
date_returned date not null,
days_late number(4) not null,
itemID number not null,
chargeID number not null, 
CONSTRAINT fk_transMove
foreign key (itemID)
references Item_in_Inventory(InventoryID)
ON DELETE CASCADE,
CONSTRAINT fk_chargeID
foreign key(chargeID)
references charges(chargeId)
ON DELETE CASCADE
);

create table rental_history(
transaction_date date not null,
customerId number not null,
transactionId number not null,
CONSTRAINT FK_HIST2CUST
FOREIGN KEY(customerID)
references customer(customerID)
ON DELETE CASCADE,
CONSTRAINT fk_hist2trans
foreign key(transactionID)
references transaction(transactionID)
ON DELETE CASCADE,
constraint history_pk primary key (customerId, transactionID)
);

create table dist_phone_number(
dist_ph_Id number primary key,
phone_number varchar2(20) not null,
type varchar2(10),
distID number not null,
CONSTRAINT FK_dist
foreign key(distID)
references distributor (distributorID)
ON DELETE CASCADE 
);

create table award_list(
awardlist_ID number primary key,
year number(4) not null,
academy_award number not null,
movie number not null, 
directed_by number,
performer_awarded number,
CONSTRAINT fk_award
foreign key(academy_award)
references academy_awards(awardid)
ON DELETE CASCADE,
CONSTRAINT fk_movie2award
foreign key(movie) 
references movie(movieid)
ON DELETE CASCADE,
CONSTRAINT fk_dir2award
foreign key(directed_by) 
references Director_list(directorListID)
ON DELETE CASCADE,
CONSTRAINT fk_per2award
foreign key(performer_awarded)
references performer_list(performerID)
ON DELETE CASCADE 
);
