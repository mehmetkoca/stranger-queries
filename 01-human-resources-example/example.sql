--“human_resources” adında bir veritabanı yaratın.
create database human_resources
--Yaratılan bu veritabanında, “personal” adında aşağıdaki niteliklere sahip bir tablo yaratın.
--personelID,int,not null
--name,nvarchar(20),allow null
--nastName,nvarchar(20),allow null
--birthDate,datetime,allow null
--task,nvarchar(50),allow null
--salary,money,allow null
--startDateOfEmployment,datetime,allow null
--departmentID,int,allow null
use human_resources
create table personal(
	personelID int primary key,
	name nvarchar(20),
	lastName nvarchar(20),
	birthDate datetime,
	task nvarchar(50),
	salary money,
	startDateOfEmpleyment datetime,
	departmentID int
)
--“personal” tablosuna kayıt ekleyin, ancak personelin işe giriş tarihini sistem saatinden alın.
INSERT INTO dbo.personal
values (1,'mehmet','koca',19940814,'gg',5000,GETDATE(),6)
--TO-DO: datetime error handle

--Adı 'Fatih' olan kişinin ücretine %10 zam geldiğini varsayarak 'personal' tablosunda gerekli işlemi gerçekleştirecek SQL ifadesini yazınız.
update personal
SET salary=(salary*10)/100+salary
where name='Fatih'
--Adı ve soyadı uzunluklarını birlikte bulduran SQL ifadesini yazınız.
select len(name),len(lastName)
from personal
--Personel numarası “3” olan kişinin tüm bilgilerini silecek SQL ifadesini yazınız.
delete from personal
where personalID=3




