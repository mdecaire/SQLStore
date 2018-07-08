--insert commands
--customer table
insert into customer
values( Cust_seq.nextval, 'James', 'Pugh', 3.25, '6649 N. Blue Gum St', 'New Orleans', 'LA', 70116);

insert into customer
values(Cust_seq.nextval, 'Cammy', 'Albares', 0, '56 E. Morehead St', 'Laredo', 'TX', 78045);

insert into customer
values(Cust_seq.nextval, 'Willard','Kolmetz',1.15,'618 W. Yakima St', 'Irving', 'TX', 75062);

insert into customer
values(Cust_seq.nextval, 'Dyan', 'Oldroyd', 0.05, '7219 Woodfield Rd', 'New Orleans', 'LA', 70116);

insert into customer
values(Cust_seq.nextval, 'Chanel', 'Caudy', 0, '86 NW 66th ST #8673', 'San Antonio','TX', 78204);

--Customer phone number

insert into phone_number
values(cust_ph_Seq.nextval, '504-621-8927', 'mobile', 1, 1000);

insert into phone_number
values(cust_ph_Seq.nextval, '504-845-1427', 'home', 0, 1000);

insert into phone_number
values(cust_ph_Seq.nextval, '956-537-6195', 'mobile', 1, 1001);

insert into phone_number
values(cust_ph_Seq.nextval, '972-303-9197', 'home', 1, 1002);

insert into phone_number
values(cust_ph_Seq.nextval, '504-845-9635', 'home', 1, 1003);

insert into phone_number
values(cust_ph_Seq.nextval, '210-812-9597', 'mobile', 1, 1004);

--credit card information
insert into payment_information
values(pay_Seq.nextval, 1000, 'Visa', '5270-4267-6450-5516', DATE'2020-01-15',1);

insert into payment_information
values(pay_Seq.nextval, 1001, 'mastercard', '5180-3807-3679-8221', DATE'2019-06-25',1);

insert into payment_information
values(pay_Seq.nextval, 1001,'Visa', '4539-0031-3703-0728', DATE'2021-03-14',0);

insert into payment_information
values(pay_Seq.nextval,1002, 'Am Ex', '345389698201044', Date'2019-01-12',1);

insert into payment_information
values(pay_Seq.nextval,1003, 'Visa', '4532-9929-3036-9308', Date '2022-02-17',1);

insert into payment_information
values(pay_Seq.nextval,1004, 'Am Ex', '345314891697053', Date '2022-04-26',1);

--distributors
insert into Distributor
values(dist_Seq.nextval, 'Wye Movies Intl', '65895 S 16th St', 'Providence', 'RI', 02909);

insert into Distributor
values(dist_Seq.nextval, 'Killion Direct', '7 West 32nd ST', 'Erie', 'PA', 16502);

insert into Distributor
values(dist_Seq.nextval, 'Vicon', '71 San Mateo Ave.', 'Wayne', 'PA', 19087);


insert into Distributor
values(dist_Seq.nextval, 'Admiral Party Movies',  '8927 Vandever Ave', 'Waco', 'TX', 76707);

insert into Distributor
values(dist_Seq.nextval, 'Serendipity Entertainment', '55262 Saint Ann St', 'Reno', 'NV', 89502); 
 

-- genres
insert into genre
values(genre_seq.nextval, 'Comedy', 1);

insert into genre
values(genre_seq.nextval, 'Sports Drama',2);

insert into genre
values(genre_seq.nextval, 'Action Adventure', 1);

insert into genre
values(genre_seq.nextval, 'Western', 5);

insert into genre
values(genre_seq.nextval, 'Crime drama', 3);

insert into genre
values(genre_seq.nextval, 'Romance',5);

insert into genre
values(genre_seq.nextval, 'Suspence',4);

-- movies
insert into movie
values(movie_seq.nextval, 'Missipi Burning', 1988,'R', '128 min', 89.99,5 );

insert into movie
values(movie_seq.nextval, 'Dances With Wolves', 1990, 'PG-13','3hr 1min', 99.95,4 );

insert into movie
values(movie_seq.nextval, 'The Wings of the Dove', 1997, 'R','102min', 105.45, 6 );

insert into movie
values(movie_seq.nextval,'Somethings Gotta Give', 2003,'PG-13','2hr 8min', 65.99, 1 );

insert into movie
values(movie_seq.nextval,'The Shape of Water', 2017,'R','2hr 3min', 203.65, 3);

insert into movie
values(movie_seq.nextval,'Million Dollar Baby', 2013, 'PG-13','2hr 12min', 85.17, 2);

--items in inventory
insert into Item_in_inventory
values(inv_seq.nextval, 'DVD', 3.99, 2, 1001);

insert into Item_in_inventory
values(inv_seq.nextval, 'Blu', 4.99, 1, 1001);

insert into Item_in_inventory
values(inv_seq.nextval, 'DVD', 3.99, 3, 1002);

insert into Item_in_inventory
values(inv_seq.nextval, 'Blu', 4.99, 0, 1002);

insert into Item_in_inventory
values(inv_seq.nextval, 'DVD', 1.99, 1, 1003);

insert into Item_in_inventory
values(inv_seq.nextval, 'Blu', 2.99, 0, 1003);

insert into Item_in_inventory
values(inv_seq.nextval, 'DVD', 2.99, 1, 1004);

insert into Item_in_inventory
values(inv_seq.nextval, 'Blu', 3.99, 1, 1004);

insert into Item_in_inventory
values(inv_seq.nextval, 'DVD', 2.99, 0, 1005);

insert into Item_in_inventory
values(inv_seq.nextval, 'Blu', 3.99, 2, 1005);
insert into Item_in_inventory
values(inv_seq.nextval, 'DVD', 2.99, 0, 1006);

insert into Item_in_inventory
values(inv_seq.nextval, 'Blu', 3.99, 2, 1006);


--discounts
insert into discount
values(disc_seq.nextval, 'over 10', .05 );

insert into discount
values(disc_seq.nextval, 'over 20', .10);

insert into discount
values(disc_seq.nextval, 'over 50', .25);

insert into discount
values(disc_seq.nextval, 'over 100', .35);

insert into discount
values(disc_seq.nextval, 'value cust', .10);

--distributor phone numbers
insert into dist_phone_number
values(dist_ph_seq.nextval, '208-649-2373', 'office', 2 );

insert into dist_phone_number
values(dist_ph_seq.nextval, '208-690-3315', 'fax', 2);

insert into dist_phone_number
values(dist_ph_seq.nextval, '864-594-4578', 'office',1);

insert into dist_phone_number
values(dist_ph_seq.nextval, '973-943-3423', 'mobile', 3);

insert into dist_phone_number
values(dist_ph_seq.nextval, '419-573-2033', 'fax', 4);

insert into dist_phone_number
values(dist_ph_seq.nextval, '419-544-4900', 'office', 4);

insert into dist_phone_number
values(dist_ph_seq.nextval, '310-694-8466', 'office',5);

--inventory by Distributor
insert into inventory_by_distributor
values('m15702', '78-k-14', '100.00', 10,3,1001 ); 

insert into inventory_by_distributor
values('m15702', '78-k-14', 100.00, 14,5,1002 ); 

insert into inventory_by_distributor
values('j6790th', '65-g-56', 500.00, 13,5,1003 );

insert into inventory_by_distributor
values('15689', 'mh7896', 150.00, 14,1,1004);

insert into inventory_by_distributor
values('rhty6', 'rg-6-ty', 275.00, 12,4,1005);

insert into inventory_by_distributor
values('ghdk0', 'gh-0-dk', 326.00, 11,2,1006 );



-- directors list
insert into director_list
values(dl_seq.nextval, 'Alan', 'Parker' );

insert into director_list
values(dl_seq.nextval,'Kevin','Costner');

insert into director_list
values(dl_seq.nextval,'Iain','Sofley');

insert into director_list
values(dl_seq.nextval, 'Nancy', 'Meyers');

insert into director_list
values(dl_seq.nextval, 'Guillermo','del Toro');

insert into director_list
values(dl_seq.nextval, 'Clint', 'Eastwood' );


--directors
insert into director
values(100,1001);
insert into director
values(101,1002);
insert into director
values(102,1003);
insert into director
values(103,1004);
insert into director
values(104,1005);
insert into director
values(105,1006);

--actors
insert into performer_list
values(act_seq.nextval, 'Gene', ' Hackman');

insert into performer_list
values(act_seq.nextval, 'Willem', 'Defoe');

insert into performer_list
values(act_seq.nextval, 'Kevin', 'Costner');

insert into performer_list
values(act_seq.nextval, 'Mary', 'McDonelle');

insert into performer_list
values(act_seq.nextval, 'Helena-Bonham', 'Carter');

insert into performer_list
values(act_seq.nextval, 'Linus', 'Roache');

insert into performer_list
values(act_seq.nextval, 'Diane', 'Keaton');

insert into performer_list
values(act_seq.nextval, 'Jack', 'Nicholson');

insert into performer_list
values(act_seq.nextval, 'Sally ', 'Hawkins');

insert into performer_list
values(act_seq.nextval, 'Octavia', 'Spencer');

insert into performer_list
values(act_seq.nextval, 'Hillary', 'Swank');

insert into performer_list
values(act_seq.nextval, 'Clint', 'Eastwood');



--performer
insert into performer
values(100,1001);

insert into performer
values(101,1001);

insert into performer
values(102,1002);

insert into performer
values(103,1002);

insert into performer
values(104,1003);

insert into performer
values(105,1003);

insert into performer
values(106,1004);

insert into performer
values(107,1004);

insert into performer
values(108,1005);

insert into performer
values(109,1005);

insert into performer
values(110,1006);

insert into performer
values(111,1006);

--academy awards
insert into academy_awards
values(award_seq.nextval,'Best Actor', 1988);
insert into academy_awards
values(award_seq.nextval,'Best Actor', 1990);
insert into academy_awards
values(award_seq.nextval,'Best Actress', 1997);
insert into academy_awards
values(award_seq.nextval,'Best Actress', 2003);
insert into academy_awards
values(award_seq.nextval,'Best Director', 2017);
insert into academy_awards
values(award_seq.nextval,'Best Director', 2013);
 
--award list
insert into award_list(awardlist_ID ,year,academy_award, movie, performer_awarded)
values(awardlst_seq.nextval, 1988,100,1001,100);
insert into award_list(awardlist_ID ,year,academy_award, movie, performer_awarded)
values(awardlst_seq.nextval,1990,101,1002,102);
insert into award_list(awardlist_ID ,year,academy_award, movie, performer_awarded)
values(awardlst_seq.nextval,1997,102,1003,104);
insert into award_list(awardlist_ID ,year,academy_award, movie, performer_awarded)
values(awardlst_seq.nextval,2003,103,1004,106);
insert into award_list(awardlist_ID ,year,academy_award, movie,directed_by)
values(awardlst_seq.nextval,2017,104,1005,104);
insert into award_list(awardlist_ID ,year,academy_award, movie,directed_by)
values(awardlst_seq.nextval,2013,105,1006,105);
insert into award_list(awardlist_ID ,year,academy_award, movie, performer_awarded)
values(awardlst_seq.nextval,2013,105,1006,110);
insert into award_list(awardlist_ID ,year,academy_award, movie, performer_awarded)
values(awardlst_seq.nextval,2013,105,1006,111);

--charges for customer
insert into charges
values(charge_Seq.nextval, 'Sales tax', .05);

insert into charges
values(charge_Seq.nextval, 'Daily Special', .10);

insert into charges
values(charge_Seq.nextval, 'Weekly Special', .20);

insert into charges
values(charge_Seq.nextval, 'Late fee', .99);

insert into charges
values(charge_Seq.nextval, 'Damage Fee', 9.99);

insert into charges
values(charge_Seq.nextval, 'Failure to rewind', .99);

--transactions
insert into transaction 
values(trans_num.nextval, date'2018-06-25', date'2018-06-27', 0, 100002, 1);

insert into transaction 
values(trans_num.nextval, date'2018-06-25', date'2018-06-27', 0, 100001, 4);

insert into transaction 
values(trans_num.nextval, date'2018-06-25', date'2018-06-25', 0, 100005, 1);

insert into transaction 
values(trans_num.nextval, date'2018-06-24', date'2018-06-25', 1, 100003, 1);

insert into transaction 
values(trans_num.nextval, date'2018-06-24', date'2018-06-25', 1, 100003, 4);

insert into transaction 
values(trans_num.nextval,date'2018-06-23', date'2018-06-23', 0, 100010, 1);

insert into transaction 
values(trans_num.nextval, date'2018-06-23', date'2018-06-23', 0, 100012, 1);


--insert history
insert into rental_history
values(date'2018-06-22', 1000,1);

insert into rental_history
values(date'2018-06-20', 1000,2);

insert into rental_history
values(date'2018-06-15', 1001,3);

insert into rental_history
values (date'2018-06-21', 1002, 4);

insert into rental_history
values (date'2018-06-21', 1002, 5);

insert into rental_history
values(date '2018-06-20', 1003,6);

insert into rental_history
values(date '2018-06-20', 1004,7);
