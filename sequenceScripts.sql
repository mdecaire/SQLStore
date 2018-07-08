--15 sequences


--inventory sequence
create sequence inv_seq
minValue 100001
start with 100001
increment by 1
cache 10;

--actor sequence
create sequence act_seq
minValue 100
start with 100
increment by 1
cache 10;

--directorlist
create sequence dl_seq
minValue 100
start with 100
increment by 1
cache 10;

--academy award
create sequence award_seq
minValue 100
start with 100
increment by 1
cache 10;

--discounts
create sequence disc_seq
minValue 10
start with 10
increment by 1
cache 10;

--distributors
create sequence dist_Seq
minValue 1
start with 1
increment by 1
cache 10;

--charges
create sequence charge_Seq
minValue 1
start with 1
increment by 1
cache 10;

--credit cards
CREATE SEQUENCE pay_Seq
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10; 

--customers
CREATE SEQUENCE Cust_seq
MINVALUE 1000
START WITH 1000
INCREMENT BY 1
CACHE 10; 

--customer phone numbers
create Sequence cust_ph_Seq
minValue 1
start with 1
increment by 1
cache 10;

--transaction numbers
create Sequence trans_num
minValue 1
start with 1
increment by 1
cache 10;

-- distributor phone numbers
create Sequence dist_ph_Seq
minValue 1
start with 1
increment by 1
cache 10;

--movie sequence
create Sequence movie_seq
minValue 1000
start with 1001
increment by 1
cache 10;

--genre sequence
create Sequence genre_seq
minvalue 1
start with 1
increment by 1
cache 10;

--awardlist sequence
create Sequence awardlst_seq
minvalue 10
start with 10
increment by 1
cache 10;