
select * from city;
select Name, District from city ;
select distinct Name from city;
select count(distinct Name) from city;

select * from city where CountryCode="BRA"; 
select * from city where ID=200;
select * from city where ID>333;
select * from city where ID<100;
select * from city where ID>=10 and ID<=15;
select * from city where ID<>10;
select * from city where ID!=4;
select * from city where ID between 30 and 35;
select * from city where Name like 'D%';
select * from city where ID in (10, 20);
select * from city where ID>333 order by ID desc;
select * from city where ID>333 and ID<=350 order by Population asc, District desc;
select * from city where ID>=30 and Name like 'C%' or Name like 'N%';

select * from city where not name = 'Kabul';
select * from city where name not like 'Q%' and name not like 'K%' and name not like 'H%';
select * from city where ID not between 1 and 50;
select * from city where district not in ('Chlef', 'Luanda');
select * from city where not ID > 10;
select * from city where not ID <3;

select * from city where ID is not null;

update city 
set District = 'TEST'
where ID = 1;

update city
set name ='TST'
where District = 'TEST' 

select * from world.country;

select * from world.country where country.IndepYear is null and country.GNPOld is null and country.LifeExpectancy is not null;

select * from city limit 3;
select * from city where CountryCode = 'AFG' limit 5;
select * from city   where CountryCode = 'AFG' order by Population asc limit 5;
select max(Population) from city; 
select min(Population) from city;
select * from city where Population = 42;
select * from city where Population = 10500000;
select max(Population) from city where ID = 1024;
select max(Population) as TheBiggest from city where ID = 1024;
select max(Population) from city where ID = 1024
select min(Population) from city;
select MIN(city.Population ) as Smallest, CountryCode from city group by CountryCode limit 15;   
select count(*) from city;
select count(CountryCode) from city where city.CountryCode = 'AFG';
select count( distinct CountryCode) from city;
select count(distinct CountryCode) as  DistinctCodes from city;
select sum(ID) as idishka from city where city.CountryCode = 'AFG';
select ID, sum(Population) as PopSum from city group by ID;
select sum(Population/2) as PopDiv from city;
select sum(Population*2) as PopDiv from city;
select avg(Population) as AvgPop from city where city.CountryCode ='AFG';
select avg(Population) as AvgPop from city where Population > 555555;
select * from city where Population > (select avg(Population) from city);
select count(*) from city where Population > (select avg(Population) from city);
select avg(Population) as AvgPop, CountryCode from city group by CountryCode;

select * from city where city.CountryCode like 'P%';

select * from city where Name like 'K%';
select * from city where Name like 'D%' or Name like'H%';
select * from city where Name like '_e_at';
select count(*) as Vcon from city where Name like '%v%';
select * from city where Name like 'Las%';
select * from city where CountryCode like 'AR%' or 'U%';
select * from city where CountryCode like 'AR%' and Population >=1000000;
select * from city where Name like '%b' and Population <=100000;
select * from city where CountryCode like 'E%Y';
select * from city where Name like '%hub%';
select * from city where Name like 'Am_%';
select * from city where Name like '%_na';


