
-- Your code here!

create table bank_details(
product char(10),
quantity int,
price real,
purchase_cost decimal(6,2),
estimated_sale_price float

);
-- describe bank_details
select *from bank_details;
insert into bank_details values('paycard',3,300,8008,9009);
insert into bank_details values('paypoint',4,200,8000,9000);
-- select *from bank_details;
-- 1 add geo_location column in table
alter table bank_details add column geo_location varchar(20);
-- select *from bank_details;
-- select geo_location from bank_details where product='paycard';
-- 2.  how many character does paycard have
-- select char_length(product) from bank_details where product='paycard';

-- 3. Alter the product field from char to varchar in bank_details
alter table bank_details modify product varchar(10);

-- 4. reduce the size of product field from 10 to 6 and check if its possible



-- 5. create a table named as Bank holidays with below fields
-- a) holiday field which display only date
-- b) start time field which display hours and minutes
-- c) end time field which also display hours and minutes and timezones


create table bank_holidays(
   
    holiday date,
    start_time datetime,
    end_time  timestamp

);

insert into bank_holidays values(current_date(),current_date(),current_date());


-- //5 update bank_holidays means current day+2

update bank_holidays
set holiday=date_add(holiday,interval 2 day);

-- 6 update endtime with current  european time
update bank_holidays set end_time=utc_timestamp();

-- 7 display output of product field as new_product in bank_details table

select product as new_product from bank_details;

-- 8 display only one record from bank_details

select *from bank_details limit 1;

-- 9. display the first five character of the Geo location field of bank_details

select substr(geo_location,1,5) from bank_details;
select * from bank_details;









