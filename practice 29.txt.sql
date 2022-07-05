create table stadium
        (sta_id number(6) primary key,
        sta_code char(10) not null,
        sta_name varchar(60) not null,
        sta_city varchar(30) not null,
        sta_capacity number(9),
        sta__date date,
        sta__status char(1)
        )
insert into stadium values(1000,'KA-BAL-001','RA Stadium','Bangalore',20000,'12-jan-2021','A')
insert into stadium values(1001,'KA-Mys-001','Mysore Stadium','Mysore',15000,'20-feb-2021','A')
insert into stadium values(1002,'TN-Che-002','chennai Stadium','Chennai',10000,'17-nov-2021','A')
insert into stadium values(1003,'KA-BAL-003','AVR Stadium','Bangalore',25000,'25-april-2022','A')

select * from stadium

update stadium
set  sta_name = 'Chennai Stadium'
where sta_id = 1002

update stadium
set  sta_date = 'Chennai Stadium'
where sta_id = 1002

--want to find the stadiums which are having seating capactity more than 10000 in bangalore
select * from stadium
where sta_capacity > 10000

-- DISPLAY THE city_name and stadium code which are openend in the year of 2021
select sta_city,sta_code
from stadium
where sta__date >= '01-jan-2021' and sta__date <= '31-dec-2021'

--find the stadium which is bigger than Mysore Stadium in terms of stadium capacity
select * from stadium
where sta_capacity > 15000

---find the stadium id and name which mysore or bangalore seat capacity is more than 20000
select sta_id , sta_name
from stadium
where sta_city='Bangalore' or sta_city='Mysore' and sta_capacity >20000
(or)
select sta_id , sta_name
from stadium
where sta_city like 'Bangalore' or sta_city like 'Mysore' and sta_capacity >20000

------display city name starts with 'Bangalore' 
select * from stadium
where sta_city like 'Bangalore' 
commit
select  sta_name from stadium where sta_status = 'A';
