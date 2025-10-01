-- INSERT
INSERT INTO tblCustomers
(firstname, lastname, email, password, age, gender, country, picture, dtRegistered)
VALUES
('Rock', 'The', 'therock@gmail.com', 'therock123', 20, 'Male', 'Malaysia', 'rock.jpg', GETDATE())

-- SELECT
SELECT * FROM tblCustomers

-- DELETE
DELETE FROM tblCustomers WHERE CID = 3

-- UPDATE
UPDATE tblCustomers SET
firstName = 'Dwayne',
lastName = 'Johnson'
WHERE CID = 4

-- display all customers
SELECT * FROM tblcustomers

-- display all customers whose country is Malaysia
SELECT * FROM tblCustomers
WHERE country = 'Malaysia';

-- sort all your customers according to firstname
SELECT * FROM tblCustomers
ORDER BY firstName ASC

-- display all customers whose firstname has 'el'
SELECT * FROM tblCustomers
WHERE firstName LIKE '%el%'

-- display all customers whose lastname starts with 'el'
SELECT * FROM tblCustomers
WHERE lastName LIKE 'el%'

-- display all customers whose lastname ends with 'el'
SELECT * FROM tblCustomers
WHERE lastName LIKE '%el'

-- delete student 567
DELETE FROM tblCustomers
WHERE CID = 567

-- insert your information in tblcustomers
INSERT INTO tblCustomers
(firstName, lastName, email, password, age, gender, country, picture, dtRegistered)
VALUES
('Xuang Jian', 'Ong', 'tp080343@mail.apu.edu.my', 'passwordxj123', 19, 'Male', 'Malaysia', 'xj.jpg', '10/09/2025')

