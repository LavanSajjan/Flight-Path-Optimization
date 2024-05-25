use aero


--CREATE TABLE AircraftModel (
--    ModelID INT PRIMARY KEY,
--    Manufacturer NVARCHAR(100),
--    Type NVARCHAR(50),
--    Capacity INT,
--    MaxSpeed DECIMAL(10, 2),
--    Range DECIMAL(10, 2)
--);


--CREATE TABLE Airport (
--    AirportID INT PRIMARY KEY,
--    Name NVARCHAR(100),
--    Location GEOGRAPHY,
--    IATACode NVARCHAR(3),
--    ICAOCode NVARCHAR(4),
--    Elevation INT
--);


--CREATE TABLE WeatherReport (
--    ReportID INT PRIMARY KEY,
--    AirportID INT,
--    Timestamp DATETIME,
--    Temperature DECIMAL(5, 2),
--    WindSpeed DECIMAL(5, 2),
--    Visibility DECIMAL(6, 2),
--    Humidity DECIMAL(5, 2),
--    FOREIGN KEY (AirportID) REFERENCES Airport(AirportID)
--);


--CREATE TABLE AirTrafficData (
--    FlightID INT PRIMARY KEY,
--    DepartureAirportID INT,
--    ArrivalAirportID INT,
--    ScheduledDepartureTime DATETIME,
--    ScheduledArrivalTime DATETIME,
--    ActualDepartureTime DATETIME,
--    ActualArrivalTime DATETIME,
--    Route NVARCHAR(200),
--    FOREIGN KEY (DepartureAirportID) REFERENCES Airport(AirportID),
--    FOREIGN KEY (ArrivalAirportID) REFERENCES Airport(AirportID)
--);


--CREATE TABLE FlightSensorData (
--    SensorID INT PRIMARY KEY,
--    FlightID INT,
--    Timestamp DATETIME,
--    Altitude DECIMAL(10, 2),
--    Speed DECIMAL(10, 2),
--    FuelConsumption DECIMAL(10, 2),
--    EngineHealth DECIMAL(5, 2),
--    FOREIGN KEY (FlightID) REFERENCES AirTrafficData(FlightID)
--);


-- Sample Aircraft Models
--INSERT INTO AircraftModel (ModelID, Manufacturer, Type, Capacity, MaxSpeed, Range)
--VALUES
--    (1, 'Boeing', '747', 416, 988, 6471),
--    (2, 'Airbus', 'A320', 186, 834, 3500),
--    (3, 'Embraer', 'E175', 88, 590, 3334),
--    (4, 'Bombardier', 'CRJ900', 76, 541, 2797);

---- Sample Airports
--INSERT INTO Airport (AirportID, Name, Location, IATACode, ICAOCode, Elevation)
--VALUES
--    (1, 'John F. Kennedy International Airport', geography::Point(40.6413, -73.7781, 4326), 'JFK', 'KJFK', 13),
--    (2, 'Los Angeles International Airport', geography::Point(33.9416, -118.4085, 4326), 'LAX', 'KLAX', 38),
--    (3, 'London Heathrow Airport', geography::Point(51.4700, -0.4543, 4326), 'LHR', 'EGLL', 25),
--    (4, 'Tokyo Haneda Airport', geography::Point(35.5494, 139.7798, 4326), 'HND', 'RJTT', 5);

-- Sample Weather Reports
--INSERT INTO WeatherReport (ReportID, AirportID, Timestamp, Temperature, WindSpeed, Visibility, Humidity)
--VALUES
--    (1, 1, '2024-05-23 08:00:00', 18.5, 12.3, 10.5, 68.2),
--    (2, 2, '2024-05-23 08:00:00', 23.8, 7.5, 15.2, 62.7),
--    (3, 3, '2024-05-23 08:00:00', 14.2, 5.1, 12.6, 75.8),
--    (4, 4, '2024-05-23 08:00:00', 21.6, 9.8, 11.9, 71.3);

---- Sample Air Traffic Data
--INSERT INTO AirTrafficData (FlightID, DepartureAirportID, ArrivalAirportID, ScheduledDepartureTime, ScheduledArrivalTime, ActualDepartureTime, ActualArrivalTime, Route)
--VALUES
--    (1, 1, 2, '2024-05-23 09:00:00', '2024-05-23 11:30:00', '2024-05-23 09:10:00', '2024-05-23 11:35:00', 'JFK-LAX'),
--    (2, 3, 4, '2024-05-23 10:30:00', '2024-05-23 14:45:00', '2024-05-23 10:40:00', '2024-05-23 14:50:00', 'LHR-HND');

---- Sample Flight Sensor Data
--INSERT INTO FlightSensorData (SensorID, FlightID, Timestamp, Altitude, Speed, FuelConsumption, EngineHealth)
--VALUES
--    (1, 1, '2024-05-23 09:15:00', 35000, 550, 1500, 95.6),
--    (2, 1, '2024-05-23 09:30:00', 35000, 560, 1480, 95.4),
--    (3, 2, '2024-05-23 10:50:00', 33000, 520, 1200, 92.8);


-- Additional Sample Aircraft Models
--INSERT INTO AircraftModel (ModelID, Manufacturer, Type, Capacity, MaxSpeed, Range)
--VALUES
--    (5, 'Boeing', '777', 396, 945, 7670),
--    (6, 'Airbus', 'A350', 440, 903, 8100),
--    (7, 'Embraer', 'E190', 114, 860, 4700),
--    (8, 'Bombardier', 'CRJ700', 70, 541, 2797),
--    (9, 'Boeing', '787', 330, 954, 7630),
--    (10, 'Airbus', 'A380', 555, 945, 8100);

---- Additional Sample Airports
--INSERT INTO Airport (AirportID, Name, Location, IATACode, ICAOCode, Elevation)
--VALUES
--    (5, 'Beijing Capital International Airport', geography::Point(40.0799, 116.6031, 4326), 'PEK', 'ZBAA', 35),
--    (6, 'Dubai International Airport', geography::Point(25.2532, 55.3657, 4326), 'DXB', 'OMDB', 62),
--    (7, 'Singapore Changi Airport', geography::Point(1.3644, 103.9915, 4326), 'SIN', 'WSSS', 22),
--    (8, 'Frankfurt Airport', geography::Point(50.0341, 8.5595, 4326), 'FRA', 'EDDF', 111);

---- Additional Sample Weather Reports
--INSERT INTO WeatherReport (ReportID, AirportID, Timestamp, Temperature, WindSpeed, Visibility, Humidity)
--VALUES
--    (5, 5, '2024-05-23 08:00:00', 22.3, 8.1, 12.8, 64.5),
--    (6, 6, '2024-05-23 08:00:00', 30.7, 10.5, 18.6, 58.2),
--    (7, 7, '2024-05-23 08:00:00', 28.5, 6.8, 16.4, 72.3),
--    (8, 8, '2024-05-23 08:00:00', 17.9, 4.2, 11.3, 68.9);

---- Additional Sample Air Traffic Data
--INSERT INTO AirTrafficData (FlightID, DepartureAirportID, ArrivalAirportID, ScheduledDepartureTime, ScheduledArrivalTime, ActualDepartureTime, ActualArrivalTime, Route)
--VALUES
--    (3, 5, 6, '2024-05-23 11:00:00', '2024-05-23 16:45:00', '2024-05-23 11:10:00', '2024-05-23 17:00:00', 'PEK-DXB'),
--    (4, 7, 8, '2024-05-23 12:30:00', '2024-05-23 15:45:00', '2024-05-23 12:40:00', '2024-05-23 16:00:00', 'SIN-FRA');

---- Additional Sample Flight Sensor Data
--INSERT INTO FlightSensorData (SensorID, FlightID, Timestamp, Altitude, Speed, FuelConsumption, EngineHealth)
--VALUES
--    (4, 3, '2024-05-23 11:20:00', 38000, 590, 1650, 94.2),
--    (5, 3, '2024-05-23 11:35:00', 38000, 600, 1600, 94.0),
--    (6, 4, '2024-05-23 12:50:00', 35000, 530, 1250, 91.5),
--    (7, 4, '2024-05-23 13:05:00', 35000, 540, 1220, 91.3);


-- Additional Sample Aircraft Models
--INSERT INTO AircraftModel (ModelID, Manufacturer, Type, Capacity, MaxSpeed, Range)
--VALUES
--    (11, 'Boeing', '737', 215, 528, 3500),
--    (12, 'Airbus', 'A330', 300, 871, 7200),
--    (13, 'Embraer', 'E195', 124, 829, 2600),
--    (14, 'Bombardier', 'Q400', 78, 667, 1500),
--    (15, 'Boeing', '767', 375, 530, 6600),
--    (16, 'Airbus', 'A321', 240, 890, 4100);

---- Additional Sample Airports
--INSERT INTO Airport (AirportID, Name, Location, IATACode, ICAOCode, Elevation)
--VALUES
--    (9, 'Sydney Kingsford Smith Airport', geography::Point(-33.9462, 151.1772, 4326), 'SYD', 'YSSY', 7),
--    (10, 'Hong Kong International Airport', geography::Point(22.3080, 113.9185, 4326), 'HKG', 'VHHH', 9),
--    (11, 'Paris Charles de Gaulle Airport', geography::Point(49.0034, 2.5674, 4326), 'CDG', 'LFPG', 119),
--    (12, 'Amsterdam Airport Schiphol', geography::Point(52.3105, 4.7683, 4326), 'AMS', 'EHAM', -3);

---- Additional Sample Weather Reports
--INSERT INTO WeatherReport (ReportID, AirportID, Timestamp, Temperature, WindSpeed, Visibility, Humidity)
--VALUES
--    (9, 9, '2024-05-23 08:00:00', 16.8, 5.3, 10.2, 68.7),
--    (10, 10, '2024-05-23 08:00:00', 27.2, 8.9, 14.8, 63.4),
--    (11, 11, '2024-05-23 08:00:00', 18.5, 7.1, 11.6, 71.1),
--    (12, 12, '2024-05-23 08:00:00', 15.9, 3.8, 9.7, 67.5);

---- Additional Sample Air Traffic Data
--INSERT INTO AirTrafficData (FlightID, DepartureAirportID, ArrivalAirportID, ScheduledDepartureTime, ScheduledArrivalTime, ActualDepartureTime, ActualArrivalTime, Route)
--VALUES
--    (5, 9, 10, '2024-05-23 13:45:00', '2024-05-23 18:30:00', '2024-05-23 13:50:00', '2024-05-23 18:35:00', 'SYD-HKG'),
--    (6, 11, 12, '2024-05-23 15:20:00', '2024-05-23 18:45:00', '2024-05-23 15:30:00', '2024-05-23 19:00:00', 'CDG-AMS');

---- Additional Sample Flight Sensor Data
--INSERT INTO FlightSensorData (SensorID, FlightID, Timestamp, Altitude, Speed, FuelConsumption, EngineHealth)
--VALUES
--    (8, 5, '2024-05-23 14:10:00', 37000, 570, 1400, 93.5),
--    (9, 5, '2024-05-23 14:25:00', 37000, 580, 1380, 93.3),
--    (10, 6, '2024-05-23 15:45:00', 34000, 510, 1150, 90.8),
--    (11, 6, '2024-05-23 16:00:00', 34000, 520, 1120, 90.6);

-- Additional Sample Aircraft Models
--INSERT INTO AircraftModel (ModelID, Manufacturer, Type, Capacity, MaxSpeed, Range)
--VALUES
--    (17, 'Boeing', '737 MAX', 230, 531, 3850),
--    (18, 'Airbus', 'A319', 156, 828, 3700),
--    (19, 'Embraer', 'E170', 78, 515, 2800),
--    (20, 'Bombardier', 'CRJ1000', 104, 880, 3300),
--    (21, 'Boeing', '777X', 384, 990, 8700),
--    (22, 'Airbus', 'A330neo', 440, 913, 8100),
--    (23, 'Airbus', 'A220', 100, 871, 3100),
--    (24, 'Bombardier', 'Global 7500', 19, 982, 7700),
--    (25, 'Boeing', '737-800', 189, 544, 3520),
--    (26, 'Airbus', 'A321neo', 244, 870, 7200),
--    (27, 'Embraer', 'E195-E2', 132, 829, 2800),
--    (28, 'Bombardier', 'CRJ200', 50, 785, 1400),
--    (29, 'Boeing', '757', 239, 609, 4200),
--    (30, 'Airbus', 'A318', 132, 871, 5700),
--    (31, 'Embraer', 'E190-E2', 114, 850, 2600),
--    (32, 'Bombardier', 'Global 6000', 17, 950, 6700),
--    (33, 'Boeing', '737-700', 126, 528, 6200),
--    (34, 'Airbus', 'A330-200', 406, 871, 7400),
--    (35, 'Embraer', 'E175-E2', 88, 590, 3300),
--    (36, 'Bombardier', 'CRJ900 NextGen', 90, 834, 3700);

---- Additional Sample Airports
--INSERT INTO Airport (AirportID, Name, Location, IATACode, ICAOCode, Elevation)
--VALUES
--    (13, 'Beijing Daxing International Airport', geography::Point(39.5097, 116.4100, 4326), 'PKX', 'ZBAD', 35),
--    (14, 'Chicago O''Hare International Airport', geography::Point(41.9742, -87.9073, 4326), 'ORD', 'ORD', 204),
--    (15, 'San Francisco International Airport', geography::Point(37.6216, -122.3811, 4326), 'SFO', 'KSFO', 4),
--    (16, 'Denver International Airport', geography::Point(39.8561, -104.6737, 4326), 'DEN', 'KDEN', 165),
--    (17, 'Madrid-Barajas Adolfo Suárez Airport', geography::Point(40.4720, -3.5608, 4326), 'MAD', 'LEMD', 609),
--    (18, 'Shanghai Pudong International Airport', geography::Point(31.1443, 121.8083, 4326), 'PVG', 'ZSPD', 4),
--    (19, 'Dallas/Fort Worth International Airport', geography::Point(32.8998, -97.0403, 4326), 'DFW', 'KDFW', 185),
--    (20, 'Guangzhou Baiyun International Airport', geography::Point(23.3925, 113.2988, 4326), 'CAN', 'ZGGG', 15),
--    (21, 'Istanbul Airport', geography::Point(41.2757, 28.7519, 4326), 'IST', 'LTFM', 95),
--    (22, 'Phoenix Sky Harbor International Airport', geography::Point(33.4343, -112.0116, 4326), 'PHX', 'KPHX', 113),
--    (23, 'Seattle-Tacoma International Airport', geography::Point(47.4502, -122.3088, 4326), 'SEA', 'KSEA', 136),
--    (24, 'McCarran International Airport', geography::Point(36.0850, -115.1523, 4326), 'LAS', 'LAS', 218),
--    (25, 'Paris Orly Airport', geography::Point(48.7262, 2.3658, 4326), 'ORY', 'LFPO', 89),
--    (26, 'Heathrow Airport', geography::Point(51.4700, -0.4543, 4326), 'LHR', 'EGLL', 25),
--    (27, 'San Diego International Airport', geography::Point(32.7336, -117.1897, 4326), 'SAN', 'SAN', 13),
--    (28, 'Orlando International Airport', geography::Point(28.4294, -81.3089, 4326), 'MCO', 'KMCO', 29),
--    (29, 'Detroit Metropolitan Airport', geography::Point(42.2125, -83.3534, 4326), 'DTW', 'KDTW', 203),
--    (30, 'Minneapolis-Saint Paul International Airport', geography::Point(44.8819, -93.2218, 4326), 'MSP', 'KMSP', 256),
--    (31, 'Barcelona–El Prat Airport', geography::Point(41.2971, 2.0785, 4326), 'BCN', 'LEBL', 12),
--    (32, 'Fort Lauderdale-Hollywood International Airport', geography::Point(26.0727, -80.1528, 4326), 'FLL', 'KFLL', 9);

---- Additional Sample Weather Reports
--INSERT INTO WeatherReport (ReportID, AirportID, Timestamp, Temperature, WindSpeed, Visibility, Humidity)
--VALUES
--    (13, 13, '2024-05-23 08:00:00', 21.3, 6.7, 13.2, 66.4),
--    (14, 14, '2024-05-23 08:00:00', 25.6, 9.2, 16.5, 59.8),
--    (15, 15, '2024-05-23 08:00:00', 19.7, 7.8, 12.9, 70.3),
--    (16, 16, '2024-05-23 08:00:00', 23.1, 5.5, 11.8, 67.9),
--    (17, 17, '2024-05-23 08:00:00', 26.8, 8.9, 14.4, 72.6),
--    (18, 18, '2024-05-23 08:00:00', 29.5, 10.1, 17.6, 65.2),
--    (19, 19, '2024-05-23 08:00:00', 22.4, 6.3, 12.5, 68.1),
--    (20, 20, '2024-05-23 08:00:00', 27.9, 7.5, 15.8, 63.7),
--    (21, 21, '2024-05-23 08:00:00', 24.2, 6.9, 14.2, 71.8),
--    (22, 22, '2024-05-23 08:00:00', 31.6, 11.3, 19.5, 58.4),
--    (23, 23, '2024-05-23 08:00:00', 21.8, 5.1, 10.9, 66.9),
--    (24, 24, '2024-05-23 08:00:00', 26.3, 7.8, 13.6, 63.5),
--    (25, 25, '2024-05-23 08:00:00', 17.5, 4.3, 10.5, 68.7),
--    (26, 26, '2024-05-23 08:00:00', 18.9, 5.6, 11.3, 67.2),
--    (27, 27, '2024-05-23 08:00:00', 23.7, 7.2, 12.8, 69.4),
--    (28, 28, '2024-05-23 08:00:00', 28.1, 8.5, 16.2, 62.9),
--    (29, 29, '2024-05-23 08:00:00', 20.6, 4.9, 10.2, 70.1),
--    (30, 30, '2024-05-23 08:00:00', 19.3, 4.5, 9.8, 71.3),
--    (31, 31, '2024-05-23 08:00:00', 22.8, 5.9, 11.6, 68.5),
--    (32, 32, '2024-05-23 08:00:00', 26.5, 7.6, 14.3, 64.7);

---- Additional Sample Air Traffic Data
--INSERT INTO AirTrafficData (FlightID, DepartureAirportID, ArrivalAirportID, ScheduledDepartureTime, ScheduledArrivalTime, ActualDepartureTime, ActualArrivalTime, Route)
--VALUES
--    (7, 13, 14, '2024-05-23 17:15:00', '2024-05-23 21:30:00', '2024-05-23 17:20:00', '2024-05-23 21:35:00', 'PKX-ORD'),
--    (8, 15, 16, '2024-05-23 18:40:00', '2024-05-23 21:15:00', '2024-05-23 18:50:00', '2024-05-23 21:20:00', 'SFO-DEN'),
--    (9, 17, 18, '2024-05-23 19:30:00', '2024-05-23 22:45:00', '2024-05-23 19:40:00', '2024-05-23 22:50:00', 'MAD-AMS'),
--    (10, 19, 20, '2024-05-23 20:20:00', '2024-05-23 22:45:00', '2024-05-23 20:30:00', '2024-05-23 22:50:00', 'CAN-IST'),
--    (11, 21, 22, '2024-05-23 21:10:00', '2024-05-23 23:45:00', '2024-05-23 21:20:00', '2024-05-24 00:00:00', 'PHX-SEA'),
--    (12, 23, 24, '2024-05-23 22:00:00', '2024-05-24 01:15:00', '2024-05-23 22:10:00', '2024-05-24 01:20:00', 'LAS-ORY'),
--    (13, 25, 26, '2024-05-23 23:10:00', '2024-05-24 02:25:00', '2024-05-23 23:20:00', '2024-05-24 02:30:00', 'LHR-SAN'),
--    (14, 27, 28, '2024-05-24 00:20:00', '2024-05-24 03:45:00', '2024-05-24 00:30:00', '2024-05-24 03:55:00', 'SAN-MCO'),
--    (15, 29, 30, '2024-05-24 01:30:00', '2024-05-24 04:45:00', '2024-05-24 01:40:00', '2024-05-24 04:50:00', 'DTW-MSP'),
--    (16, 31, 32, '2024-05-24 02:40:00', '2024-05-24 06:00:00', '2024-05-24 02:50:00', '2024-05-24 06:10:00', 'BCN-FLL'),
--    (17, 13, 14, '2024-05-24 03:50:00', '2024-05-24 08:05:00', '2024-05-24 03:55:00', '2024-05-24 08:10:00', 'PKX-ORD'),
--    (18, 15, 16, '2024-05-24 04:10:00', '2024-05-24 07:45:00', '2024-05-24 04:20:00', '2024-05-24 07:50:00', 'SFO-DEN'),
--    (19, 17, 18, '2024-05-24 05:30:00', '2024-05-24 08:45:00', '2024-05-24 05:40:00', '2024-05-24 08:50:00', 'MAD-AMS'),
--    (20, 19, 20, '2024-05-24 06:20:00', '2024-05-24 08:45:00', '2024-05-24 06:30:00', '2024-05-24 08:50:00', 'CAN-IST'),
--    (21, 21, 22, '2024-05-24 07:10:00', '2024-05-24 09:45:00', '2024-05-24 07:20:00', '2024-05-24 10:00:00', 'PHX-SEA'),
--    (22, 23, 24, '2024-05-24 08:00:00', '2024-05-24 11:15:00', '2024-05-24 08:10:00', '2024-05-24 11:20:00', 'LAS-ORY'),
--    (23, 25, 26, '2024-05-24 09:10:00', '2024-05-24 12:25:00', '2024-05-24 09:20:00', '2024-05-24 12:30:00', 'LHR-SAN'),
--    (24, 27, 28, '2024-05-24 10:20:00', '2024-05-24 13:45:00', '2024-05-24 10:30:00', '2024-05-24 13:55:00', 'SAN-MCO'),
--    (25, 29, 30, '2024-05-24 11:30:00', '2024-05-24 14:45:00', '2024-05-24 11:40:00', '2024-05-24 14:50:00', 'DTW-MSP'),
--    (26, 31, 32, '2024-05-24 12:40:00', '2024-05-24 16:00:00', '2024-05-24 12:50:00', '2024-05-24 16:10:00', 'BCN-FLL'),
--    (27, 13, 14, '2024-05-24 13:50:00', '2024-05-24 18:05:00', '2024-05-24 13:55:00', '2024-05-24 18:10:00', 'PKX-ORD'),
--    (28, 15, 16, '2024-05-24 14:10:00', '2024-05-24 17:45:00', '2024-05-24 14:20:00', '2024-05-24 17:50:00', 'SFO-DEN'),
--    (29, 17, 18, '2024-05-24 15:30:00', '2024-05-24 18:45:00', '2024-05-24 15:40:00', '2024-05-24 18:50:00', 'MAD-AMS'),
--    (30, 19, 20, '2024-05-24 16:20:00', '2024-05-24 18:45:00', '2024-05-24 16:30:00', '2024-05-24 18:50:00', 'CAN-IST');

---- Additional Sample Flight Sensor Data
--INSERT INTO FlightSensorData (SensorID, FlightID, Timestamp, Altitude, Speed, FuelConsumption, EngineHealth)
--VALUES
--    (12, 7, '2024-05-23 17:35:00', 40000, 620, 1550, 93.0),
--    (13, 7, '2024-05-23 17:50:00', 40000, 630, 1530, 92.8),
--    (14, 8, '2024-05-23 19:10:00', 33000, 520, 1220, 91.3),
--    (15, 8, '2024-05-23 19:25:00', 33000, 530, 1190, 91.1),
--    (16, 9, '2024-05-23 20:40:00', 38000, 600, 1650, 94.2),
--    (17, 9, '2024-05-23 20:55:00', 38000, 610, 1620, 94.0),
--    (18, 10, '2024-05-23 22:10:00', 34000, 530, 1180, 91.5),
--    (19, 10, '2024-05-23 22:25:00', 34000, 540, 1150, 91.3),
--    (20, 11, '2024-05-23 23:40:00', 35000, 540, 1240, 91.9),
--    (21, 11, '2024-05-23 23:55:00', 35000, 550, 1210, 91.7),
--    (22, 12, '2024-05-24 01:10:00', 32000, 510, 1100, 90.5),
--    (23, 12, '2024-05-24 01:25:00', 32000, 520, 1080, 90.3),
--    (24, 13, '2024-05-24 02:40:00', 37000, 570, 1350, 92.7),
--    (25, 13, '2024-05-24 02:55:00', 37000, 580, 1330, 92.5),
--    (26, 14, '2024-05-24 04:10:00', 35000, 530, 1200, 91.2),
--    (27, 14, '2024-05-24 04:25:00', 35000, 540, 1170, 91.0),
--    (28, 15, '2024-05-24 05:40:00', 34000, 510, 1120, 90.8),
--    (29, 15, '2024-05-24 05:55:00', 34000, 520, 1090, 90.6),
--    (30, 16, '2024-05-24 07:10:00', 37000, 550, 1260, 91.4),
--    (31, 16, '2024-05-24 07:25:00', 37000, 560, 1230, 91.2);


-- Create table for flights scheduled
--CREATE TABLE ScheduledFlights (
--    FlightID INT PRIMARY KEY,
--    DepartureAirportID INT,
--    ArrivalAirportID INT,
--    ScheduledDepartureTime DATETIME,
--    ScheduledArrivalTime DATETIME,
--    Route NVARCHAR(200),
--    FOREIGN KEY (DepartureAirportID) REFERENCES Airport(AirportID),
--    FOREIGN KEY (ArrivalAirportID) REFERENCES Airport(AirportID)
--);

---- Insert data from AirTrafficData into ScheduledFlights
--INSERT INTO ScheduledFlights (FlightID, DepartureAirportID, ArrivalAirportID, ScheduledDepartureTime, ScheduledArrivalTime, Route)
--SELECT FlightID, DepartureAirportID, ArrivalAirportID, ScheduledDepartureTime, ScheduledArrivalTime, Route
--FROM AirTrafficData;

---- Create table for route information
--CREATE TABLE FlightRoutes (
--    RouteID INT PRIMARY KEY,
--    DepartureAirportID INT,
--    ArrivalAirportID INT,
--    Route NVARCHAR(200),
--    FOREIGN KEY (DepartureAirportID) REFERENCES Airport(AirportID),
--    FOREIGN KEY (ArrivalAirportID) REFERENCES Airport(AirportID)
--);

---- Insert unique routes into FlightRoutes
---- Insert routes from scheduled flights into FlightRoutes table
---- Insert routes from scheduled flights into FlightRoutes table
--INSERT INTO FlightRoutes (RouteID, DepartureAirportID, ArrivalAirportID, Route)
--SELECT ROW_NUMBER() OVER (ORDER BY DepartureAirportID, ArrivalAirportID) AS RouteID,
--       DepartureAirportID,
--       ArrivalAirportID,
--       Route
--FROM (
--    SELECT DISTINCT DepartureAirportID, ArrivalAirportID, Route
--    FROM ScheduledFlights
--) AS Routes;



select * from aircraftmodel
select * from airport
select * from airtrafficdata
select * from flightsensordata
select * from weatherreport
select * from ScheduledFlights
select * from FlightRoutes


CREATE PROCEDURE spGetFlightInfo
    @AirportCode NVARCHAR(3),  -- Specify the IATA code of the airport
    @FlightDate DATE           -- Specify the date for which you want flight information
AS
BEGIN
    SELECT
        f.FlightID,
        f.ScheduledDepartureTime,
        f.ScheduledArrivalTime,
        f.Route,
        fs.Altitude,
        fs.Speed,
        fs.FuelConsumption,
        fs.EngineHealth,
        wr.Temperature,
        wr.WindSpeed,
        wr.Visibility,
        wr.Humidity
    FROM AirTrafficData AS f
    INNER JOIN FlightSensorData AS fs ON f.FlightID = fs.FlightID
    INNER JOIN WeatherReport AS wr ON f.DepartureAirportID = wr.AirportID
    WHERE
        f.ScheduledDepartureTime >= @FlightDate
        AND f.Route LIKE '%' + @AirportCode + '%'  -- Adjust this condition based on your route format
    ORDER BY f.ScheduledDepartureTime;
END;
