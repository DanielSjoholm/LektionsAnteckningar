USE master;
GO
 
DROP DATABASE IF EXISTS DanielsBank;
GO
 
CREATE DATABASE DanielsBank;
GO
 
USE DanielsBank;
GO

CREATE TABLE Region(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	RegionName NVARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Office(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	OfficeName NVARCHAR(50) UNIQUE NOT NULL,
	Phone NVARCHAR(12),
	RegionID INT NOT NULL,
	FOREIGN KEY (RegionID) REFERENCES Region(ID)
);

CREATE TABLE Address(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	AddressName NVARCHAR(100) NOT NULL,
	City NVARCHAR(20) NOT NULL,
	ZipCode INT NOT NULL,
	UNIQUE(AddressName,City,Zipcode)
);

CREATE TABLE Employee(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Email NVARCHAR(50) NOT NULL UNIQUE,
	Phone NVARCHAR(12),
	DateOfEmployement DATE NOT NULL DEFAULT GETDATE(),
	AddressID INT,
	FOREIGN KEY (AddressID) REFERENCES Address(ID)
);

CREATE TABLE EmployeeLogin(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Email NVARCHAR(50) NOT NULL UNIQUE,
	Password NVARCHAR(MAX) NOT NULL,
	FOREIGN KEY (Email) REFERENCES Employee(Email)
);

CREATE TABLE Customer(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	SSN VARCHAR(12) NOT NULL UNIQUE,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Email NVARCHAR(100) NOT NULL UNIQUE,
	Gender NVARCHAR(12) CHECK(Gender IN('Male','Female')) NOT NULL,
	AddressID INT NOT NULL,
	OfficeID INT NOT NULL,
	IsActive BIT NOT NULL,
	FOREIGN KEY (AddressID) REFERENCES Address(ID),
	FOREIGN KEY (OfficeID) REFERENCES Office(ID)
);

CREATE TABLE CustomerEmployee(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	HelpProvided NVARCHAR(MAX) NOT NULL,
	CustomerID INT,
	EmployeeID INT,
	FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(ID)
);

CREATE TABLE BankID(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	CustomerID INT NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

CREATE TABLE CustomerLogin(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Password NVARCHAR(MAX) NOT NULL,
	BankID INT NOT NULL,
	FOREIGN KEY (BankID) REFERENCES BankID(ID)
);

CREATE TABLE Card(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	CardNumber INT UNIQUE NOT NULL,
	CardType NVARCHAR(6) CHECK(CardType IN('Debit','Credit')) NOT NULL,
	IssuedDate DATE DEFAULT GETDATE() NOT NULL,
	ExpiryDate DATE NOT NULL,
	CVV2 INT NOT NULL
);

CREATE TABLE CardTransaction(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Amount DECIMAL(10,2) NOT NULL,
	TransactionDate DATETIME2(0) DEFAULT SYSDATETIME() NOT NULL,
	CardID INT NOT NULL,
	FOREIGN KEY (CardID) REFERENCES Card(ID)
);

CREATE TABLE Account(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	AccountNumber INT UNIQUE NOT NULL,
	AccountType NVARCHAR(16) CHECK(AccountType IN('Checking Account','Saving Account','Retirement Account')) NOT NULL,
	Created DATE NOT NULL DEFAULT GETDATE(),
	Balance DECIMAL(10,2) NOT NULL,
	InterestRate DECIMAL(10,2) NOT NULL,
	IsActive BIT NOT NULL
);

CREATE TABLE AccountTransaction(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TransactionType NVARCHAR(8) CHECK(TransactionType IN('Withdraw','Deposit')) NOT NULL,
	Amount DECIMAL(10,2) NOT NULL,
	TransactionDate DATETIME2(0) DEFAULT SYSDATETIME() NOT NULL,
	AccountID INT NOT NULL,
	FOREIGN KEY (AccountID) REFERENCES Account(ID)
);

CREATE TABLE Loan(
	ID INT IDENTITY(1,1),
	PrincipalAmount DECIMAL(10,2) NOT NULL,
	MonthlyPayment DECIMAL(10,2) NOT NULL,
	InterestRate DECIMAL(10,2) NOT NULL,
	RemainingAmount DECIMAL(10,2) NOT NULL,
	LoanDate DATE NOT NULL,
	IsActive BIT NOT NULL,
	AccountID INT NOT NULL,
	FOREIGN KEY (AccountID) REFERENCES Account(ID)
)

CREATE TABLE Disposition(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	CustomerID INT NOT NULL,
	AccountID INT NOT NULL,
	CardID INT,
	FOREIGN KEY (AccountID) REFERENCES Account(ID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
	FOREIGN KEY (CardID) REFERENCES Card(ID)
);

INSERT INTO Region(RegionName)
VALUES
('Stockholm'),
('Uppsala'),
('Sörmland'),
('Östergötland'),
('Jönsköping'),
('Kronoberg'),
('Kalmar'),
('Gotland'),
('Blekinge'),
('Skåne'),
('Örebro'),
('Dalarna');

INSERT INTO Office(OfficeName, Phone, RegionID)
VALUES
('Haninge', '073-111-222', 1),
('Ekerö', '073-111-333', 1),
('Danderyd', '073-111-444', 1),
('Knivsta', '073-111-555', 2),
('Trosa', '073-111-666', 3),
('Eskilstuna', '073-111-777',3),
('Linköping', '073-111-888', 4),
('Norrköping', '073-111-000', 4),
('Jönköping', '073-111-999', 5),
('Växjö', '073-222-888', 6),
('Kalmar', '073-333-888', 7),
('Visby', '073-444-888', 8),
('Karlskrona', '073-123-888', 9),
('Malmö', '073-133-888', 10),
('Lund', '073-111-828', 10),
('Askersund', '073-131-881', 11),
('Falun', '073-111-829', 12);

INSERT INTO Address(AddressName, City, ZipCode)
VALUES
('Storgatan 1', 'Stockholm', 11120),
('Lilla Vägen 2', 'Göteborg', 41520),
('Parkvägen 3', 'Malmö', 21218),
('Nygatan 4', 'Uppsala', 75320),
('Sjögatan 5', 'Västerås', 72210),
('Utsiktsvägen 6', 'Örebro', 70215),
('Solgatan 7', 'Linköping', 58221),
('Månvägen 8', 'Helsingborg', 25142),
('Blomstervägen 9', 'Jönköping', 55453),
('Granvägen 10', 'Norrköping', 60223),
('Kyrkogatan 11', 'Lund', 22222),
('Skogsvägen 12', 'Eskilstuna', 63220),
('Havsvägen 13', 'Gävle', 80320),
('Björkgatan 14', 'Borås', 50190),
('Ängsvägen 15', 'Södertälje', 15134),
('Fjällvägen 16', 'Karlstad', 65230),
('Strandvägen 17', 'Täby', 18330),
('Klövervägen 18', 'Växjö', 35240),
('Dalvägen 19', 'Halmstad', 30250),
('Bergsvägen 20', 'Sundsvall', 85640);

INSERT INTO Employee (FirstName, LastName, Email, Phone, DateOfEmployement, AddressID)
VALUES 
('Anna', 'Svensson', 'anna.svensson@example.com', '070-1234567', '2020-01-01', 1),
('Bertil', 'Johansson', 'bertil.johansson@example.com', '070-2345678', '2015-01-01', 2),
('Carina', 'Nilsson', 'carina.nilsson@example.com', '070-3456789', '2017-01-01', 3),
('David', 'Eriksson', 'david.eriksson@example.com', '070-4567890', '2018-01-01', 4),
('Eva', 'Larsson', 'eva.larsson@example.com', '070-5678901', '2020-02-10', 5),
('Fredrik', 'Persson', 'fredrik.persson@example.com', '070-6789012', '2020-10-10', 6),
('Greta', 'Svensson', 'greta.svensson@example.com', '070-7890123', '2022-01-01', 7),
('Hans', 'Gustavsson', 'hans.gustavsson@example.com', '070-8901234', '2010-04-01', 8);

INSERT INTO Employee (FirstName, LastName, Email, Phone, AddressID)
VALUES
('Ida', 'Karlsson', 'ida.karlsson@example.com', '070-9012345', 9),
('Johan', 'Andersson', 'johan.andersson@example.com', '070-0123456', 10);


INSERT INTO EmployeeLogin (Email, Password)
VALUES 
('anna.svensson@example.com', 'hej123'),
('bertil.johansson@example.com', 'hej123'),
('carina.nilsson@example.com', 'hej123'),
('david.eriksson@example.com', 'hej123'),
('eva.larsson@example.com', 'hej123'),
('fredrik.persson@example.com', 'hej123'),
('greta.svensson@example.com', 'hej123'),
('hans.gustavsson@example.com', 'hej123'),
('ida.karlsson@example.com', 'hej123'),
('johan.andersson@example.com', 'hej123');

INSERT INTO Customer(SSN, FirstName, LastName, Email, Gender, AddressID, OfficeID, IsActive)
VALUES
('199501015442', 'Kalle', 'Svensson', 'kalle@gmail.com', 'Male', 1, 3, 1),
('197101011111', 'Frida', 'Svensson', 'frida@gmail.com', 'Female', 15, 5, 1),
('200210012222', 'Johan', 'Andersson', 'Johan@gmail.com', 'Male', 6, 16, 1),
('195310028609', 'Erik', 'Nyman', 'ingemarolsson@yahoo.de', 'Female', 16, 3, 1),
('195803093789', 'Linnéa', 'Olausson', 'elisabethpersson@swipnet.se', 'Male', 18, 1, 1),
('199806016177', 'David', 'Pålsson', 'strombergake@swipnet.se', 'Female', 19, 17, 1),
('196510229781', 'Susanne', 'Holmqvist', 'hanseriksson@spray.se', 'Female', 5, 14, 1),
('190810257736', 'Elisabeth', 'Gustafsson', 'erikssonroland@bengtsson.se', 'Male', 3, 11, 1),
('195604233671', 'Åke', 'Olsson', 'nystromhans@isaksson.se', 'Female', 13, 13, 1),
('198907144839', 'Arvid', 'Pedersen', 'anna24@gmail.com', 'Male', 10, 12, 1),
('194608187087', 'Tage', 'Nilsson', 'evajohansson@olsson.net', 'Female', 10, 7, 1),
('193802190726', 'Jan', 'Nyman', 'ullaeriksson@knutsson.se', 'Female', 18, 11, 1),
('202011246669', 'Marcus', 'Pettersson', 'bjonsson@gmail.com', 'Female', 15, 7, 1),
('191007246444', 'Arne', 'Jakobsson', 'kjelljansson@jansson.com', 'Male', 4, 12, 1),
('195502186961', 'Madeleine', 'Olsson', 'louisegustafsson@gustavsson.net', 'Female', 10, 6, 1),
('201011201870', 'Margareta', 'Mårtensson', 'ojansson@yahoo.de', 'Female', 6, 2, 1),
('192706291646', 'Solveig', 'Carlsson', 'ieriksson@malm.com', 'Male', 8, 6, 1),
('197005287764', 'Erika', 'Sandström', 'blindholm@telia.com', 'Male', 10, 4, 1),
('199808096341', 'Elisabeth', 'Johansson', 'svenssonelisabet@nyberg.com', 'Male', 11, 15, 1),
('197207171347', 'Åke', 'Strand', 'anders32@live.se', 'Male', 18, 1, 1),
('193907219953', 'Katarina', 'Hansson', 'ann-christinolsson@karlsson.com', 'Male', 14, 13, 1),
('200112247949', 'Sven', 'Sandberg', 'leif04@telia.com', 'Female', 1, 14, 1),
('199405197738', 'Åke', 'Eriksson', 'petterssonjan@spray.se', 'Female', 9, 15, 1),
('199208048869', 'Jan', 'Åkesson', 'gunvorhansson@telia.com', 'Male', 11, 5, 1),
('195112200467', 'Lennart', 'Ström', 'erikjohansson@lundgren.se', 'Male', 8, 9, 1),
('196402122818', 'Svea', 'Karlsson', 'olssonnils@petersson.se', 'Male', 6, 9, 1),
('195107040204', 'Ingeborg', 'Johansson', 'ljungsiv@nilsson.se', 'Female', 1, 17, 1);

INSERT INTO BankID (CustomerID)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27);

INSERT INTO CustomerLogin (Password, BankID)
VALUES
('123456',1),
('223456',2),
('323456',3),
('423456',4),
('523456',5),
('623456',6),
('723456',7),
('823456',8),
('923456',9),
('113456',10),
('123456',11),
('133456',12),
('143456',13),
('153456',14),
('163456',15),
('173456',16),
('183456',17),
('193456',18),
('111456',19),
('122456',20),
('123456',21),
('124456',22),
('125456',23),
('126456',24),
('127456',25),
('128456',26),
('129456',27);


INSERT INTO CustomerEmployee(HelpProvided, CustomerID, EmployeeID)
VALUES
('membership registration', 1, 1),
('membership registration', 2, 1),
('membership registration', 3, 1),
('membership registration', 4, 2),
('membership registration', 5, 2),
('membership registration', 6, 2),
('membership registration', 7, 3),
('membership registration', 8, 3),
('membership registration', 9, 3),
('membership registration', 10, 4),
('membership registration', 11, 4),
('membership registration', 12, 5),
('membership registration', 13, 5),
('membership registration', 14, 6),
('membership registration', 15, 7),
('membership registration', 16, 8),
('membership registration', 17, 9),
('membership registration', 18, 10),
('membership registration', 19, 10),
('membership registration', 20, 5),
('membership registration', 21, 7),
('membership registration', 22, 9),
('membership registration', 23, 3),
('membership registration', 24, 5),
('membership registration', 25, 1),
('membership registration', 26, 2),
('membership registration', 27, 8),
('loan', 1, 9),
('loan', 22, 5),
('loan', 13, 3),
('loan', 11, 1),
('loan', 3, 8),
('loan', 5, 1),
('loan', 10, 3);

INSERT INTO Card(CardType, CardNumber, IssuedDate, ExpiryDate, CVV2)
VALUES
('Debit', 597342111, '2023-03-27', '2028-03-25', 668),
('Debit', 600944251, '2019-09-01', '2024-08-30', 943),
('Debit', 413298438, '2020-01-23', '2025-01-21', 985),
('Credit', 785499183, '2021-08-28', '2026-08-27', 131),
('Debit', 795812555, '2022-09-28', '2027-09-27', 927),
('Debit', 633321994, '2019-03-23', '2024-03-21', 280),
('Credit', 160951881,'2023-08-11', '2028-08-09', 201),
('Debit', 182133842, '2020-05-05', '2025-05-04', 629),
('Credit', 485119881, '2021-02-04', '2026-02-03', 186);

INSERT INTO Card(CardType, CardNumber, ExpiryDate, CVV2)
VALUES
('Debit', 298099991, '2028-11-24', 774),
('Credit', 102000010, '2029-01-01', 779);

INSERT INTO CardTransaction
(Amount, TransactionDate, CardID)
VALUES
(1000, '2024-01-05 12:00', 1),
(199, '2024-01-06 12:00', 1),
(500, '2024-02-05 12:00', 1),
(-500, '2024-02-05 12:00', 1),
(1999, '2023-11-05 12:00', 2),
(29, '2024-01-05 12:00', 2),
(5000, '2024-03-02 12:00', 3),
(300, '2024-03-01 12:00', 4),
(1000, '2024-02-05 12:00', 5),
(1000, '2024-01-25 12:00', 6),
(1000, '2024-02-15 12:00', 7),
(1000, '2024-02-25 12:00', 8),
(1000, '2024-01-12 12:00', 9),
(1000, '2024-01-01 12:00', 10),
(1000, '2024-03-04 12:00', 4),
(1000, '2024-02-09 12:00', 5),
(-1000, '2024-01-05 12:00', 10);

INSERT INTO Account(AccountNumber, AccountType, Balance, InterestRate, IsActive)
VALUES
(123456, 'Checking Account', 0, 0.12, 1),
(654321, 'Checking Account', 10000, 0.12, 1),
(234567, 'Checking Account', 5000, 0.12, 1),
(345678, 'Checking Account', 2500, 0.12, 1),
(456789, 'Checking Account', 7500, 0.12, 1),
(567890, 'Checking Account', 9500, 0.12, 1),
(678901, 'Checking Account', 1500, 0.12, 1),
(789012, 'Checking Account', 8500, 0.12, 1),
(890123, 'Checking Account', 5500, 0.12, 1),
(901234, 'Checking Account', 3500, 0.12, 1),
(987654, 'Checking Account', 6500, 0.12, 1),
(876543, 'Checking Account', 4500, 0.12, 1),
(765432, 'Checking Account', 2000, 0.12, 1),
(222456, 'Checking Account', 0, 0.12, 1),
(657321, 'Checking Account', 0, 0.12, 1),
(211567, 'Checking Account', 0, 0.12, 1),
(555678, 'Checking Account', 22500, 0.12, 1),
(916789, 'Checking Account', 77500, 0.12, 1),
(562290, 'Checking Account', 19500, 0.12, 1),
(601901, 'Checking Account', 11500, 0.12, 1),
(189011, 'Checking Account', 80500, 0.12, 1),
(850125, 'Checking Account', 100000, 0.12, 1), 
(951534, 'Checking Account', 0, 0.12, 1),
(907954, 'Checking Account', 0, 0.12, 1),
(896043, 'Checking Account', 1000, 0.12, 1),
(111432, 'Checking Account', 200000, 0.12, 1),
(981114, 'Checking Account', 100000, 0.12, 1),
(222222, 'Saving Account', 0, 0.12, 1);

INSERT INTO AccountTransaction(TransactionType, Amount, TransactionDate, AccountID)
VALUES
('Deposit', 1000, '2024-01-05 12:00', 1),
('Deposit', 199, '2024-01-06 12:00', 1),
('Deposit', 500, '2024-02-05 12:00', 1),
('Withdraw', 500, '2024-02-05 12:00', 1),
('Deposit', 1999, '2023-11-05 12:00', 2),
('Deposit', 29, '2024-01-05 12:00', 2),
('Deposit', 5000, '2024-03-02 12:00', 3),
('Deposit', 300, '2024-03-01 12:00', 4),
('Deposit', 1000, '2024-02-05 12:00', 5),
('Deposit', 1000, '2024-01-25 12:00', 6),
('Deposit', 1000, '2024-02-15 12:00', 7),
('Deposit', 1000, '2024-02-25 12:00', 8),
('Deposit', 1000, '2024-01-12 12:00', 9),
('Deposit', 1000, '2024-01-01 12:00', 10),
('Deposit', 1000, '2024-03-04 12:00', 4),
('Deposit', 1000, '2024-02-09 12:00', 5),
('Withdraw', 1000, '2024-01-05 12:00', 10);

INSERT INTO Loan
(PrincipalAmount, MonthlyPayment, InterestRate, RemainingAmount, LoanDate, IsActive, AccountID)
VALUES
(1000000, 2000, 4.59, 1000000, '2024-03-01', 1, 1),
(4500000, 5000, 4.19, 2335599, '2015-10-11', 1, 22),
(100000, 2000, 10.59, 58000, '2023-09-19', 1, 13),
(2900000, 3000, 4.99, 2000000, '2020-01-21', 1, 11),
(1000000, 2000, 4.59, 500000, '2024-03-01', 1, 3),
(1000000, 2000, 4.19, 10000, '2020-12-18', 1, 5),
(1000000, 2000, 4.39, 1000000, '2024-03-03', 1, 10);

INSERT INTO Disposition(CustomerID, AccountID, CardID)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, NULL),
(12, 12, NULL),
(13, 13, NULL),
(14, 14, NULL),
(15, 15, NULL),
(16, 16, NULL),
(17, 17, NULL),
(18, 18, NULL),
(19, 19, NULL),
(20, 20, NULL),
(21, 21, NULL),
(22, 22, NULL),
(23, 23, NULL),
(24, 24, NULL),
(25, 25, NULL),
(26, 26, NULL),
(27, 27, NULL),
(20,27,11),
(1, 28, NULL);

GO

CREATE VIEW AmountOfLoan AS
SELECT
    CONCAT(c.FirstName,' ', c.LastName) AS Name,
    COUNT(l.ID) AS AmountOfLoan
FROM Customer c
JOIN Disposition d ON c.ID = d.CustomerID
JOIN Account a ON d.AccountID = a.ID
LEFT JOIN Loan l ON a.ID = l.AccountID
GROUP BY c.FirstName, c.LastName;

GO

CREATE VIEW OfficeAmountOfLoan AS
SELECT
    o.OfficeName,
    COUNT(l.ID) AS AmountOfLoan
FROM Customer c
JOIN Office o ON c.OfficeID = o.ID
JOIN Disposition d ON c.ID = d.CustomerID
JOIN Account a ON d.AccountID = a.ID
LEFT JOIN Loan l ON a.ID = l.AccountID
GROUP BY o.OfficeName;

GO

CREATE VIEW HowManyCustomerEmpHelped AS
SELECT 
    CONCAT_WS(' ',e.FirstName, e.LastName) As Employer,
    COUNT(c.ID) AS AmountOfCustomers
FROM Customer c
JOIN CustomerEmployee ce ON c.ID = ce.CustomerID
JOIN Employee e ON ce.EmployeeID = e.ID
GROUP BY e.FirstName, e.LastName;

GO

CREATE VIEW CustomerSpentTotal AS
    SELECT 
        CONCAT_WS(' ', c.FirstName, c.LastName) AS Customer,
        SUM(ct.Amount) AS AmountSpent
    FROM Customer c
    JOIN Disposition d ON c.ID = d.CustomerID
    JOIN Card ca ON d.CardID = ca.ID
    JOIN CardTransaction ct ON ca.ID = ct.CardID
    GROUP BY c.FirstName, c.LastName;

GO

CREATE PROCEDURE AmountOfTransactionByYearAccount
    @TransactionDate INT
AS
BEGIN
    SELECT COUNT(ID) As AmountOfTransactionByYear
    FROM AccountTransaction
    WHERE YEAR(TransactionDate) = @TransactionDate
End

GO

CREATE PROCEDURE AmountOfTransactionByYearCard
    @TransactionDate INT
AS
BEGIN
    SELECT COUNT(ID) As AmountOfTransactionByYear
    FROM CardTransaction
    WHERE YEAR(TransactionDate) = @TransactionDate
End

GO

CREATE PROCEDURE AmountOfCustomersInCity
    @City NVARCHAR(100)
AS
BEGIN
    SELECT
        COUNT(c.ID) As AmountOfCustomersInCity
    FROM Address a
    JOIN Customer c ON a.ID = c.AddressID 
    WHERE City = @City;
END

GO

CREATE PROCEDURE CustomerSpentSpecificYear
    @TransactionDate INT
AS
BEGIN
    SELECT 
        CONCAT_WS(' ', c.FirstName, c.LastName) AS Customer,
        SUM(ct.Amount) AS AmountSpent
    FROM Customer c
    JOIN Disposition d ON c.ID = d.CustomerID
    JOIN Card ca ON d.CardID = ca.ID
    JOIN CardTransaction ct ON ca.ID = ct.CardID
    WHERE YEAR(ct.TransactionDate) = @TransactionDate
    GROUP BY c.FirstName, c.LastName;
END

GO