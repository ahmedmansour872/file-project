

use master  

go

create database bbxx

go

use  bbxx

go

create table supplier (sup_id int identity not null,sup_name nchar(50) not null ,sup_phone int ,sup_addresse nchar(50) default 'egypt'
,sup_salary money default 2500, constraint pk_sup primary key (sup_id asc))

go

create table department (dep_id int identity not null,dep_name nchar(50) not null ,

constraint pk_dep primary key (dep_id asc))

go

create table product (pro_id  int identity not null,pro_name nchar(50) not null ,

price float not null,Quantity float  , sup_id int not null,dep_id int not null,

constraint pr_pro primary key (pro_id asc), 

constraint fr_pro_sup foreign key (sup_id ) references supplier(sup_id) ,

constraint fr_pro_dep foreign key (dep_id ) references department(dep_id));

go

create table employee (emp_id int identity not null ,emp_fname nchar(50) not null,

emp_Lname nchar(50) not null ,ssn  bigint  not null,phone  bigint default 0 ,

 age int default 0 ,addresss nchar(50) default 'egypt',salary money default 2500,dep_id int not null ,

 constraint em_pro primary key (emp_id asc), 

 constraint fr_em_dep foreign key (dep_id ) references department(dep_id))

 go

 alter table product add constraint price_va check (product.price>0)

 alter table product add constraint Quantity_va check (product.Quantity>=0)

 alter table employee  add constraint employee_va check (employee.age>0)

 go


create proc emp_insert 

( @emp_fname nchar(50) ,@emp_Lname nchar(50) ,@ssn  bigint  ,@phone  bigint  ,@age int ,@addresss nchar(50),@salary money,@dep_id int )

as

begin 

insert into employee ( emp_fname  ,emp_Lname  ,ssn  ,phone   ,age ,addresss,salary ,dep_id  )values

( @emp_fname  ,@emp_Lname  ,@ssn  ,@phone   ,@age ,@addresss ,@salary,@dep_id  )

end

go



create proc sup_insert 
(@sup_name nchar(50),@sup_phone int ,@sup_addresse nchar(50)
,@sup_salary money )
as
begin 
insert into supplier (sup_name,sup_phone ,sup_addresse ,sup_salary) values(   @sup_name,@sup_phone ,@sup_addresse  
,@sup_salary  )
end

go

create proc dep_insert 

(@dep_name nchar(50)  )

as

begin 

insert into department (dep_name  )values(@dep_name  )

end

go




create table employee2 (emp_id int  not null ,emp_fname nchar(50) not null,

emp_Lname nchar(50) not null ,ssn  bigint  not null,phone  bigint  not null,

 age int not null ,addresss nchar(50),salary money,dep_id int not null )

 go

 create trigger insert_employee
  
  on  employee 
  
  for insert 
 
 as
 
 begin 
 
 insert into employee2 select * from inserted
 
 end
  
 go

 create proc pr_insert 

(@pro_name nchar(50) ,@price float,@Quantity float , @sup_id int,@dep_id int )

as

begin 

insert into product  (pro_name  ,price ,Quantity  , sup_id , dep_id)values(@pro_name  ,@price ,@Quantity  , @sup_id , @dep_id )

end

go

exec dep_insert 'Food and drinks'
exec dep_insert 'Uniforms for workers'
exec dep_insert 'Clean and organize tools'
exec dep_insert 'furniture'
exec dep_insert 'Lighting'
exec dep_insert 'Packaging and printing'
exec dep_insert 'Health and Personal Care'
exec dep_insert 'Equipment'
exec dep_insert ' IT equipment'
exec dep_insert 'Services'
exec dep_insert 'Marketing Advertising'
exec dep_insert 'Maintenance and control of insects'
exec dep_insert 'Number of maintenance tools and maintenance'

exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,1
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,1
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,5
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,4
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,3
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,2
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,2
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,3
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,4
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,5
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,6
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,7
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,8
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,11
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,10
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,7
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,8
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,9
exec emp_insert 'ahmed','mansour',29903211234567,01065314905,20,'qena-qus',5000,10

exec sup_insert 'Sobek_Sports',01065314905,'dfghjk',2500
exec sup_insert 'EGC Egyptian Co For Food Industries ICEMAN',01145314901,'gnm,',5000
exec sup_insert 'Unilever Food Solutions',01168974123,'fghjkl',5652
exec sup_insert 'Heinz Egypt',01065987423,'ghjkl',96521
exec sup_insert 'Farm Frites',01165978415,'fghjkl',5324
exec sup_insert 'Arab Cultivators El Tanbouli And Co',01165314898,'fghjk',9545
exec sup_insert 'Giardino',01198745621,'ghjkl',6541
exec sup_insert 'Bonjorno Cafe',01265387942,'poiuytr',9515
exec sup_insert 'Union Trading Organizaation',01265314897,',mnmnbv',8545
exec sup_insert 'Antakh',01236987542,'mnbv',6515
exec sup_insert 'El Shalakany For Engineering',01598746532,'cvbn',9512
exec sup_insert 'Barista Group',01598541268,'cffyt',12541
exec sup_insert 'Egitto Coffee',01235987456,'ertyuio',4528
exec sup_insert 'EL SANAN',01235987456,'ertyuio',4528
exec sup_insert 'Food Lover',01235987456,'ertyuio',4528
exec sup_insert 'Egyptian European Co for Food Products',01235987456,'ertyuio',4528
exec sup_insert 'G Stores',01235987456,'ertyuio',4528
exec sup_insert 'BAKELAND Egypt',01235987456,'ertyuio',4528
exec sup_insert 'Simple Touch',01235987456,'ertyuio',4528
exec sup_insert 'Scientific Company',01235987456,'ertyuio',4528
exec sup_insert 'Food Home',01235987456,'ertyuio',4528
exec sup_insert 'Egypt Bakery Stores SAE',01235987456,'ertyuio',4528
exec sup_insert 'MIRATH MASR - „Ì—«À „’—',01235987456,'ertyuio',4528
exec sup_insert 'El Waha Trading And Supplies',01235987456,'ertyuio',4528
exec sup_insert 'Ramex For Hotel Supplies SAE',01235987456,'ertyuio',4528
exec sup_insert 'Arab French Company',01235987456,'ertyuio',4528
exec sup_insert 'El Yasmina Regina - «·Ì«”„Ì‰« —ÌÃÌ‰«',01235987456,'ertyuio',4528
exec sup_insert 'Metro Pack',01235987456,'ertyuio',4528

exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5
exec pr_insert 'milk',5,5,5,5