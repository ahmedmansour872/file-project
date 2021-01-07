use master 

create database answer12
go
use  answer12
go
create table suppler ( sup_id int identity not null ,sup_name nvarchar(100) unique not null,sup_phone int unique not null,
addreess nvarchar(100) default 'EGEPT', constraint pk_sup primary key (sup_id))

create table departement (dep_id int identity not null,dep_name nvarchar(100) unique not null, constraint pk_dep primary key (dep_id)) 

create table employees (emp_id int identity not null,ssn bigint unique not null ,Fname nvarchar(25) not null,Lname nvarchar(25) not null,hiredate datetime2,
salary money not null,addreess nvarchar(100) default 'EGEPT',phone int,dep_id int not null, constraint pk_emp primary key (emp_id),foreign key (dep_id) references departement(dep_id))
go
alter table employees add constraint check_salary check (salary>0)

go

create table employees2 (emp_id int,ssn bigint ,Fname nvarchar(25) ,Lname nvarchar(25) ,hiredate datetime2,
salary money ,addreess nvarchar(100) ,phone int,dep_id int, constraint pk_emp2 primary key (emp_id))

create table product (pro_id int identity not null ,pro_name nvarchar(25) not null,price float not null,quantity int not null,
sup_id int  not null,dep_id int  not null,constraint pk_pro primary key (pro_id),
constraint fr_pro_dep foreign key (dep_id) references departement(dep_id),constraint fr_pro_sup foreign key (sup_id) references suppler(sup_id))
go
alter table product add constraint check_price check (price>0)
alter table product add constraint check_quantity check (quantity>0)

go

create table product2 (pro_id int ,pro_name nvarchar(25),price float ,quantity int ,sup_id int ,dep_id int, constraint pk_pro2 primary key (pro_id))

go
create procedure insert_suppler
(@sup_name nvarchar(100),@sup_phone int,@addreess nvarchar(100))
as
insert into suppler (sup_name ,sup_phone ,addreess) values (@sup_name ,@sup_phone ,@addreess)
 go
exec insert_suppler 'Sobek_Sports',01065314905,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'EGC Egyptian Co For Food Industries ICEMAN',01145314901,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Unilever Food Solutions',01168974123,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Heinz Egypt',01065987423,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Farm Frites',01165978415,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Arab Cultivators El Tanbouli And Co',01165314898,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Giardino',01198745621,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Bonjorno Cafe',01265387942,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Union Trading Organizaation',01265314897,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Antakh',01236987542,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'El Shalakany For Engineering',01598746532,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Barista Group',01598541268,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Egitto Coffee',01196325875,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'EL SANAN',01143702481,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Food Lover',01235987456,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Egyptian European Co for Food Products',01014763233,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'G Stores',01100910114,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'BAKELAND Egypt',01016858529,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Simple Touch',01014574865,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Scientific Company',01125896314,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Food Home',01036985214,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Egypt Bakery Stores SAE',01114785236,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'MIRATH MASR - „Ì—«À „’—',01532145698,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'El Waha Trading And Supplies',01035789518,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Ramex For Hotel Supplies SAE',01198745632,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Arab French Company',01178963254,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'El Yasmina Regina - «·Ì«”„Ì‰« —ÌÃÌ‰«',01111589634,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
exec insert_suppler 'Metro Pack',01234567895,'471 Ard El Dfaa El Watany Fifth Settlement, Cairo, Egypt'
go

create procedure insert_departement
(@dep_name nvarchar(100))
as
insert into departement (dep_name) values (@dep_name)
go
exec insert_departement 'Food and drinks'
exec insert_departement 'Uniforms for workers'
exec insert_departement 'Clean and organize tools'
exec insert_departement 'furniture'
exec insert_departement 'Lighting'
exec insert_departement 'Packaging and printing'
exec insert_departement 'Health and Personal Care'
exec insert_departement 'Equipment'
exec insert_departement ' IT equipment'
exec insert_departement 'Services'
exec insert_departement 'Marketing Advertising'
exec insert_departement 'Maintenance and control of insects'
exec insert_departement 'Number of maintenance tools and maintenance'

go

create procedure insert_employees
(@Ssn bigint,@Fname nvarchar(25),@Lname nvarchar(25) ,@hiredate datetime2,
@salary money ,@addreess nvarchar(100),@phone int,@dep_id int )
as
insert into employees (ssn,Fname,Lname ,hiredate, salary ,addreess,phone,dep_id)
values (@ssn ,@Fname,@Lname,@hiredate,@salary,@addreess,@phone,@dep_id)
go

exec insert_employees 29903211234567,'Ahmed ', 'Raafat', '2005-03-21', 5000.0000, N'Sohag', 01065314905, 1
exec insert_employees 29915932114745,'Ahmed ', 'Shehata',  '2001-05-09', 4563.0000,N'Qena_Qeft', 01169872354, 1
exec insert_employees 29968435687455,'Ahmed ', 'Mabrouk',  '2005-03-21', 2313.0000,N'Qena_Farshout', 01135987562, 1
exec insert_employees 29957864359783,'Ahmed ', 'Khalid ',  '2005-03-21', 4689.0000,N'Qena Naga Hammadi',  01068976579, 2
exec insert_employees 29945612873522,'Ahmed ', 'Mahmoud',  '2005-03-21' ,5646.0000, N'Qena', 01165974361, 1
exec insert_employees 29965874326911,'Ahmed ', 'Harbi' ,  '2005-03-21', 2135.0000,N'Aswan', 01165974359, 3
exec insert_employees 29935648714429,'Ahmed ','Mohamed Hassan',   '2005-03-21', 3514.0000,N'Qena', 01026987456, 4
exec insert_employees 29903211234885,'Ahmed ','Mansour',   '2005-03-21',6541.0000, N'Qena Qus', 01065314905 ,4
exec insert_employees 29954876543298,'Osama ', 'Saad El Din',   '2005-03-21',3546.0000, N'Sohag', 01165987453 ,4
exec insert_employees 29987564298757,'Ashraf ', 'Gamal',   '2005-03-21',4684.0000, N'Qena_Qeft', 01268974568 ,5
exec insert_employees 28875973265765,'Hussein ', 'Najah',   '2005-03-21',1353.0000, N'Qena', 01154965465, 4
exec insert_employees 29957846219879,'Anwar ', 'Juma',   '2005-03-21',4896.0000, N'Sohag', 01012346889 ,6
exec insert_employees 29935648771567,'Paula ', 'Maher',   '2005-03-21',3153.0000, N'Sohag', 01264798674 ,7
exec insert_employees 29954687668763,'Hazem ', 'Hammad',   '2005-03-21',5469.0000, N'Sohag', 01015234685 ,8
exec insert_employees 29948645468243,'Khalid ', 'Mohammed',   '2005-03-21',2313.0000, N'Qena_Qeft', 01052348746 ,8
exec insert_employees 29954864132141,'rabea', 'adel',   '2005-03-21', 8478.0000, N'Qena',01024186542 ,8
exec insert_employees 59954641567758,'Solomon ', 'Ali',   '2005-03-21',5466.0000, N'Sohag', 01554864875 ,9
exec insert_employees 29958643594988,'Taha ', 'Mahmoud',  '2005-03-21',12315.0000, N'Aswan', 01112487468 ,9
exec insert_employees 29954156765348,'Abdul_Rahman ', 'Mahmoud',   '2005-03-21', 3145.0000,N'Luxor', 01154798746 ,10
exec insert_employees 29948946878552,'Abdul_Rahman ', 'Ahmed',   '2005-03-21',  21465.0000,N'sohag',01115349886, 10
exec insert_employees 29865478746854,'Youssab', 'Ezekiel',   '2005-03-21',  1265.0000,N'sohag',01023548575, 11
exec insert_employees 29864964168755,'Khalid ', 'Hasan',   '2005-03-21',2145.0000, N'sohag', 01025489788 ,1
exec insert_employees 29955489476857,'Mahmoud Abou ', 'El Hassan',   '2005-03-21',1256.0000, N'sohag', 01145987985 ,10
exec insert_employees 29977895465454,'Ahmed ', 'alsid',   '2005-03-21',21468.0000, N'luxor', 01114564797 ,12
exec insert_employees 29849476555988,'Ibrahim Abdul Ati', 'Abdul Ati',  '2005-03-21', 2146.0000, N'Qena Naga Hammadi',01114878789, 1
exec insert_employees 29847565478678,'Ahmed ', 'Ramadan',   '2005-03-21',6565.0000, N'sohag', 01052487458, 13

go
create procedure insert_product
(@pro_name nvarchar(50),@price float,@quantity int,@sup_id int ,@dep_id int)
as

insert into product (pro_name,price,quantity ,sup_id ,dep_id)
values (@pro_name,@price,@quantity ,@sup_id ,@dep_id) 
go
exec insert_product N'Kettle Bells', 256, 5, 1, 8
exec insert_product N'Smith Machine', 20153, 5, 1, 8
exec insert_product N'Dumbells', 2547, 5, 1, 8
exec insert_product N'Leg Press', 5798, 5, 1, 8
exec insert_product N'ICE CREAM ', 5, 200, 2, 1
exec insert_product N'Chocolate', 5, 55, 2, 1
exec insert_product N'Chips', 5, 155, 2, 1
exec insert_product N'Biscuits', 3, 65, 2, 1
exec insert_product N'EGYTL For Hotel Supplies', 5435, 5, 3, 9
exec insert_product N'Knorr Brown Gravy Sauce', 15, 45, 4, 1
exec insert_product N'Knorr Mashed Potato', 10, 15, 4, 1
exec insert_product N'Delicate Mint', 15, 45, 4, 1
exec insert_product N'Knorr Demi Glace Powder', 16, 52, 4, 1
exec insert_product N'Lipton Green Tea Mint - 20 Enveloped Tea Bags', 5, 125, 4, 1
exec insert_product N'Hot Sauce Heinz', 12, 165, 5, 6
exec insert_product N'Cheddar Bites', 19, 51, 5, 6
exec insert_product N'Heinz pack Mayonnaise ', 16, 15, 5, 6
exec insert_product N'Bonjorno Coffee Beans Machines', 2600, 16, 6, 9
exec insert_product N'Cooking Mixers', 241, 19, 7, 4
exec insert_product N' Bakery Equipment', 156, 14, 7, 4
exec insert_product N'Cozy Lounger - Leather Fushia', 1585, 18, 8, 10
exec insert_product N'Recliner - Suede Purple', 1594, 15, 8, 10
exec insert_product N'Hubbly - Leather Baby Blue', 4568, 13, 8, 10
exec insert_product N'Coffee Machines', 2153, 16, 9, 4
exec insert_product N' Meat Producing Machines', 5345, 2, 10, 4
exec insert_product N'Meat Sawing Machines - Meat Cutting Machines', 2345, 4, 10, 4
exec insert_product N'Meat Mincing Machines', 4885, 15, 10, 4
exec insert_product N'Home Furniture', 5456, 215, 11, 4
exec insert_product N'Kitchen Accessories', 5467, 25, 11, 4
exec insert_product N'DoBites Loyalty Platform', 150, 145, 12, 9
exec insert_product N'Shoof Dashboard', 246, 24, 12, 9
exec insert_product N'DoBites Loyalty Platform', 214, 65, 12, 9
exec insert_product N'Tecnodom', 4555, 21, 13, 10
exec insert_product N'ﬂÊ‰ — «” ﬁ»«· ﬂÊœ', 5465, 12, 14, 10
exec insert_product N'ﬂÊ‰ — «” ﬁ»«· 25 „··Ï »«·ﬂ«„· ', 1821, 125, 14, 10
exec insert_product N'Kitchen Tools', 1584, 15, 15, 8
exec insert_product N'Kitchen Accessories', 4832, 15, 14, 8

go
create trigger check_delete_product
on product
for delete
as 
insert into product2  select * from deleted

go

create trigger check_delete_employees
on employees
for delete
as 
insert into employees2  select * from deleted

go

create function salary_of_empolyees(@id int)
returns money
as
begin
declare @result int
 select @result = (select salary from employees where emp_id=@id)
return @result
end 

go
create function quantit_of_product(@id int)
returns int
as
begin
declare @result int
 select @result = (select quantity from product where pro_id=@id)
return @result
end 

go

create function departementName(@id int)
returns int
as
begin
declare @result int
 select @result = (select dep_name from departement inner join employees on departement.dep_id=employees.dep_id where emp_id=@id)
return @result
end 