1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
	id INT,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
	
);

2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
EXP :
insert into employee (id, name, birthday, email) values (1, 'Rip Soares', '1990-11-08', 'rsoares0@ameblo.jp');
...

3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET name = 'Ahmet YILMAZ',
	birthday = '1992-05-05',
	email = 'ahmet@yilmaz.com'
WHERE id = 5;

UPDATE employee
SET birthday = '1988-10-29'
WHERE name = '"Rickie Chrismas"';

UPDATE employee
SET birthday = '1988-10-29'
WHERE name = 'Rickie Chrismas'
RETURNING *;

UPDATE employee
SET name = 'Caitrin Connel',
	email = 'connel@a8.net'
WHERE birthday = '1990-10-28'
RETURNING *;

UPDATE employee
SET birthday = '1988-03-22'
WHERE email = 'afowells5@nifty.com'
RETURNING *;

4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE id = 8;

DELETE FROM employee
WHERE name = 'Caralie Sambeck'
RETURNING *;

DELETE FROM employee
WHERE email ='dhillockf@youtu.be'
RETURNING *;

DELETE FROM employee
WHERE name LIKE 'T%'
RETURNING *;

DELETE FROM employee
WHERE id > 25
RETURNING *;
