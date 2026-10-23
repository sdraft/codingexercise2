-- Create travel table with 8 columns --

CREATE TABLE TRAVEL (
    Travel_ID INT PRIMARY KEY,
    Destination VARCHAR(200),
    Country VARCHAR(50),
    Estimated_Cost NUMERIC(10,2),
    Best_Attraction VARCHAR(200),
    Best_Hotel VARCHAR(200),
    Passport_Required BOOLEAN,
    Rating INT CHECK(Rating >= 0 AND Rating <= 10)
)

-- Populate table with 12 rows of travel information --

INSERT INTO TRAVEL
VALUES
(1,'Paris','France',2500.00,'Eiffel Tower','Ritz Paris',TRUE,9),
(2,'Rome','Italy',2200.00,'Colosseum','Hotel de Russie',TRUE,10),
(3,'Mykonos','Greece',3500.00,'Little Venice','Cavo Tagoo',TRUE,10),
(4,'Cancun','Mexico',1800.00,'Chichen Itza','Hyatt Ziva',TRUE,8),
(5,'Tokyo','Japan',3200.00,'Shibuya Crossing','Park Hyatt Tokyo',TRUE,10),
(6,'Miami','USA',1500.00,'South Beach','Fontainebleau',FALSE,8),
(7,'Las Vegas','USA',1200.00,'Las Vegas Strip','Bellagio',FALSE,9),
(8,'London','England',2800.00,'Big Ben','The Savoy',TRUE,9),
(9,'Dubai','UAE',4000.00,'Burj Khalifa','Atlantis The Palm',TRUE,10),
(10,'Honolulu','USA',3000.00,'Waikiki Beach','Royal Hawaiian',FALSE,9),
(11,'Barcelona','Spain',2400.00,'Sagrada Familia','W Barcelona',TRUE,9),
(12,'Milan','Italy',2600.00,'Duomo di Milano','Armani Hotel',TRUE,8)

SELECT * FROM TRAVEL

-- Update best attraction column to change Paris's best attraction --

UPDATE TRAVEL
SET Best_Attraction = 'Louvre Museum'
WHERE Travel_ID = 1

SELECT * FROM TRAVEL

-- Alter table to add new column for best restaurant --

ALTER TABLE TRAVEL
ADD Best_Restaurant VARCHAR(200)

SELECT * FROM TRAVEL

-- Delete row containing Travel_ID 12 --

DELETE FROM TRAVEL
WHERE Travel_ID = 12

SELECT * FROM TRAVEL
