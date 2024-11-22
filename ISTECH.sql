create database ISTECH;

Create table Movies (
Movies_ID VARCHAR(20)  NOT NULL primary key,
Movies_Name VARCHAR (50),
Day_of_release DATE NOT NULL,
Genre VARCHAR (20) NOT NULL,
Nation VARCHAR (20),
Main_character VARCHAR (50),
Revenue DECIMAL (10,2),
Feedback VARCHAR (20),
);

CREATE TABLE Room (
Seat_ID VARCHAR (20) PRIMARY KEY NOT NULL,
Room_ID VARCHAR(20),
Type_of_seat VARCHAR(20) 
);

Create table Staff (
Staff_ID INT NOT NULL primary key,
Staff_Name VARCHAR (20) NOT NULL,
Telephone CHAR (15),
Address VARCHAR (20),
Seat_ID VARCHAR (20) foreign key references Room (Seat_ID),
Salary DECIMAL (10,2),
Role VARCHAR (20),
Start_working_day DATE,
Work_hour_per_month INT,
Status VARCHAR (20)
);

CREATE TABLE Customer (
Customer_ID VARCHAR(20) PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Age INT,
Gender VARCHAR(10),
Telephone CHAR(15),
Address VARCHAR(50),
Feedback VARCHAR(25)
);

CREATE TABLE Reservation ( 
Reservation_ID VARCHAR(20) PRIMARY KEY,
Film_ID VARCHAR(20),
FOREIGN KEY (Film_ID) REFERENCES Movies  (Movies_ID),
Price DECIMAL (10,2),
Date_and_time DATETIME,
Payment_method VARCHAR(20),
Seat_ID VARCHAR(20),
FOREIGN KEY (Seat_ID) REFERENCES Room (Seat_ID),
Customer_ID VARCHAR(20),
FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
Staff_ID INT,
FOREIGN KEY (Staff_ID) REFERENCES Staff (Staff_ID)
);

Insert into Movies (Movies_ID, Movies_Name, Day_of_release, Genre, Nation, Main_character, Revenue, Feedback) 
Values 
('SO987', 'Emotional Piece Piece 2', '14-JUN-2024', 'Cartoon', 'America', 'Amy Poehler', 46732000, 'Very good'), 
('SO994', 'Grandfathers Investment', '07-JUN-2024', 'Mentality', 'Thailand', 'Billkin', 6854000, 'Very good'),
('SO779', 'Cuu Long Citadel Camp: Surrounding The Citadel', '13-JUN-2024', 'Action', 'China', 'Co Thien Lac', 17623000, 'Bad'), 
('SO353', 'DORAEMON', '24-MAY-2024', 'Cartoon', 'Japan', 'Doraemon', 32581054, 'Very good'), 
('SO335', 'WATCHERS', '15-JUN-2024', 'Horror', 'America', 'Dakota Fanning', 9425052, 'Good')

INSERT INTO Room (Seat_ID, Room_ID, Type_of_seat)
VALUES
('SA01', 'PH1A', 'Standard'),
('SA02', 'PH1A', 'Standard'),
('SB01', 'PH2A', 'Sweet box'),
('SH01', 'PH3A', 'VIP'),
('SH02', 'PH3A', 'Standard')

Insert into Staff (Staff_ID, Seat_ID, Staff_Name, Telephone, Address, Salary, Role, Start_working_day, Work_hour_per_month, Status)
Values
(240601, 'SA01', 'Nguyen Van A', 0352548925, 'Ba Dinh', 7000000, 'Ticket control', '15-MAY-2023', 55, 'Still working'),
(240602, 'SA02', 'Tran Thi B', 0852005924, 'Dong Da', 10000000, 'Shift Manager', '10-JUN-2023', 60, 'Still working'),
(240603, 'SB01', 'Le Quang C', 0950050506, 'Tay Ho', 15000000, 'Theater Manager', '01-JAN-2022', 70, 'Still working'),
(240604, 'SH01', 'Tran Thi B', 0810222580, 'Long Bien', 7000000, 'Ticket seller', '07-JAN-2022', NULL, 'Retired'),
(240605, 'SH02', 'Pham Minh D', 0354050585, 'Nam Tu Liem', 7000000, 'Ticket control', '20-MAY-2023', 50, 'Still working')


INSERT INTO Customer (Customer_ID, Name, Age, Gender, Telephone, Address, Feedback)
VALUES
('SB0001', 'Winston', 22, 'M', '09854600432', '206 Fondren, Houston, LD', 'Good'),
('SB0002', 'Anh', 25, 'F', '07725814763', 'An Tien, My Duc, Hanoi', 'Good'),
('SB0003', 'Bich', 25, 'F', '07512458969', 'Te Tieu, My Duc, Hanoi', 'Very good'),
('SB0004', 'Binh', 45, 'F', '00822536178', '36 Me Tri Thuong, Nam Tu Liem', 'Very good'),
('SB0005', 'Chau', 35, 'M', '0291248964', 'Tay Ho, HN', 'Bad')

INSERT INTO Reservation (Reservation_ID, Film_ID, Price, Date_and_time, Payment_method, Seat_ID, Customer_ID, Staff_ID)
VALUES
('GV00001', 'SO987', 50000, '2021-05-07 10:10', 'Cash', 'SA01', 'SB0001', 240601),
('GV00002', 'SO994', 50000, '2021-05-03 9:30', 'Transfer', 'SA02', 'SB0002', 240605),
('GV00003', 'SO779', 250000, '2021-05-06 10:10', 'Card', 'SB01', 'SB0003', 240602),
('GV00004', 'SO779', 100000, '2021-05-06 10:10', 'Card', 'SH01', 'SB0004', 240603),
('GV00005', 'SO987', 50000, '2021-05-07 10:10', 'Cash', 'SH02', 'SB0005', 240604)
