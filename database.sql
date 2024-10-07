CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    user_type VARCHAR(50) NOT NULL,  
    password VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);

CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY,
    user_id INT,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year_created INT NOT NULL,
    vin VARCHAR(50) NOT NULL,
    current_mileage DECIMAL(10, 2) NOT NULL,
    last_service_date DATE
);

CREATE TABLE Component_Sensors (
    sensor_id INT PRIMARY KEY,
    vehicle_id INT,
    component_type VARCHAR(50) NOT NULL,  
    sensor_data DECIMAL(10, 2) NOT NULL,
    data_timestamp DATETIME NOT NULL
);

CREATE TABLE Failure_Predictions (
    prediction_id INT PRIMARY KEY,
    vehicle_id INT,
    component_type VARCHAR(50) NOT NULL,  
    failure_probability DECIMAL(3, 2),
    predicted_failure_date DATE,
    suggested_action VARCHAR(255)
);

CREATE TABLE Diagnostic_Reports (
    report_id INT PRIMARY KEY,
    vehicle_id INT,
    report_date DATE NOT NULL,
    component_status TEXT NOT NULL,  
    overall_health_score DECIMAL(5, 2),
    maintenance_suggestions TEXT
);


INSERT INTO Users (user_id, name, email, phone_number, user_type, password, location)
VALUES 
(1, 'Robert Batongbakal', 'Robertpogi@gmail.com', '0976542845', 'Customer', 'incorrect', '241 - High street, Disney land tondo'),
(2, 'Malupiton Kups', 'bossing@gmail.com', '0998654371', 'Mechanic', 'kupalkapalaboss', 'kupal street, Boston'),
(3, 'Diwata Pares Overload', 'friedsiken@gmail.com', '0954625151', 'Customer', 'DiwataSiken', 'Ohio calabarzon'),
(4, 'Apolo quiboloy', 'Quiboloy@gmail.com', '0987657542', 'Mechanic', 'Hanapinnyoako', 'KOJC underground mindanao'),
(5, 'Alice Guo', 'Pogo@gmail.com', '0997646432', 'Customer', 'awisayo', 'Pogo hub, bamban'),
(6, 'Bentong kalamares', 'bentong@gmail.com', '0997653412', 'Mechanic', 'bentongpogi123', 'Turon, Etivac'),
(7, 'Robert Guo', 'hahahaha@gmail.com', '0976234125', 'Customer', 'hahahaha', 'Pogo hub, bamban'),
(8, 'Shiela Guo', 'Pugo1@gmail.com', '0935467812', 'Mechanic', 'umaysayo', 'Pogo hub, bamban'),
(9, 'Sandra Ong', 'Pogu2@gmail.com', '0953441734', 'Customer', 'Garamonaman', 'Pogo hub, bamban'),
(10, 'Harry roque', 'ilovedu30@gmail.com', '0919785358', 'Customer', 'duterteglazer', 'Kangkungan, USA');


INSERT INTO Vehicles (vehicle_id, user_id, manufacturer, model, year_created, vin, current_mileage, last_service_date)
VALUES
(1, 1, 'Toyota', 'Corolla', 2015, '1NXBR12E3YZ123456', 58000.75, '2023-07-15'),
(2, 2, 'Honda', 'Civic', 2018, '2HGEJ6670WH564732', 32000.50, '2023-03-10'),
(3, 3, 'Ford', 'F-150', 2017, '1FTEX1E54KFA12357', 74000.20, '2022-11-22'),
(4, 4, 'Chevrolet', 'Malibu', 2016, '1G1ZT54836F123789', 51000.85, '2023-01-28'),
(5, 5, 'BMW', 'X5', 2020, 'WBANW53567C123890', 22000.30, '2023-05-05'),
(6, 6, 'Nissan', 'Altima', 2019, '1N4AL11D75C123321', 34000.60, '2023-06-15'),
(7, 7, 'Kia', 'Sorento', 2021, '5XYKT3A19BG123456', 15000.00, '2023-04-25'),
(8, 8, 'Hyundai', 'Elantra', 2015, 'KMHDH4AE3EU123456', 60000.45, '2023-02-17'),
(9, 9, 'Tesla', 'Model 3', 2022, '5YJ3E1EA8MF123456', 12000.80, '2023-08-03'),
(10, 10, 'Jeep', 'Grand Cherokee', 2016, '1J4RR6GT5BC123456', 67000.95, '2022-09-18'),
(11, 3, 'Ford', 'Explorer', 2018, '1FM5K8D86JGA123456', 41000.55, '2023-06-02'),
(12, 1, 'Toyota', 'Camry', 2019, '4T1BE46K47U123456', 29000.65, '2023-04-01'),
(13, 2, 'Chevrolet', 'Impala', 2017, '2G1WT58K381234567', 52000.95, '2022-12-10'),
(14, 5, 'Mercedes-Benz', 'C-Class', 2020, 'WDDGF81X88F123456', 24000.35, '2023-03-19'),
(15, 6, 'Honda', 'Accord', 2021, '1HGCM82633A123456', 18000.20, '2023-05-25'),
(16, 7, 'Subaru', 'Outback', 2019, '4S4BSBNC9K3334567', 39000.85, '2023-02-28'),
(17, 8, 'Mazda', 'CX-5', 2017, 'JM3KFBBM3J1234567', 46000.75, '2023-07-11'),
(18, 9, 'Volkswagen', 'Passat', 2016, '1VWBN7A3XFC123456', 57000.90, '2023-01-15'),
(19, 10, 'Audi', 'Q7', 2022, 'WA1DGAFE0FD123456', 13000.10, '2023-08-30'),
(20, 4, 'Lexus', 'RX 350', 2020, '2T2BZMCA3KC123456', 21000.55, '2023-04-20');


INSERT INTO Component_Sensors (sensor_id, vehicle_id, component_type, sensor_data, data_timestamp)
VALUES
(1, 5, 'Engine Temperature', 95.45, '2023-09-01 08:15:22'),
(2, 8, 'Oil Pressure', 45.32, '2023-09-01 09:22:18'),
(3, 12, 'Tire Pressure', 32.50, '2023-09-02 10:10:10'),
(4, 7, 'Battery Voltage', 12.50, '2023-09-02 11:33:45'),
(5, 15, 'Coolant Temperature', 85.10, '2023-09-03 12:55:32'),
(6, 3, 'Fuel Level', 57.80, '2023-09-04 14:12:20'),
(7, 20, 'Brake Pad Wear', 78.40, '2023-09-05 15:45:10'),
(8, 9, 'Transmission Fluid Temperature', 90.35, '2023-09-05 16:17:45'),
(9, 1, 'Engine RPM', 3200.00, '2023-09-06 17:05:12'),
(10, 14, 'Oil Pressure', 48.60, '2023-09-06 18:11:33'),
(11, 6, 'Tire Pressure', 30.25, '2023-09-07 08:22:01'),
(12, 18, 'Fuel Level', 65.90, '2023-09-07 09:43:50'),
(13, 11, 'Battery Voltage', 12.80, '2023-09-08 10:50:30'),
(14, 4, 'Coolant Temperature', 89.00, '2023-09-08 11:10:45'),
(15, 17, 'Transmission Fluid Temperature', 92.15, '2023-09-09 12:37:12'),
(16, 2, 'Brake Pad Wear', 70.40, '2023-09-09 13:47:58'),
(17, 19, 'Engine Temperature', 100.25, '2023-09-10 14:28:32'),
(18, 13, 'Tire Pressure', 33.10, '2023-09-11 15:58:20'),
(19, 10, 'Fuel Level', 52.50, '2023-09-12 17:14:03'),
(20, 16, 'Engine RPM', 2800.00, '2023-09-13 18:45:55');

INSERT INTO Failure_Predictions (prediction_id, vehicle_id, component_type, failure_probability, predicted_failure_date, suggested_action)
VALUES
(1, 15, 'Engine Temperature Sensor', 0.75, '2023-10-15', 'Replace the engine temperature sensor and check for leaks.'),
(2, 3, 'Oil Pressure Sensor', 0.60, '2023-11-01', 'Check oil level and replace oil pressure sensor.'),
(3, 8, 'Tire Pressure Sensor', 0.40, '2023-10-20', 'Inspect tire pressure and replace sensor if necessary.'),
(4, 6, 'Battery', 0.50, '2023-10-25', 'Test battery and replace if charge is below 50%.'),
(5, 1, 'Coolant Temperature Sensor', 0.80, '2023-11-10', 'Flush the cooling system and replace the sensor.'),
(6, 20, 'Fuel Level Sensor', 0.55, '2023-10-30', 'Inspect fuel system and replace sensor if reading is inconsistent.'),
(7, 12, 'Brake Pad Sensor', 0.65, '2023-11-05', 'Replace brake pads and inspect sensor.'),
(8, 10, 'Transmission Fluid Temperature Sensor', 0.70, '2023-11-15', 'Check transmission fluid level and replace sensor.'),
(9, 18, 'Engine RPM Sensor', 0.45, '2023-10-18', 'Calibrate engine RPM sensor and check engine performance.'),
(10, 13, 'Oil Pressure Sensor', 0.60, '2023-10-28', 'Inspect oil pressure and replace sensor if necessary.'),
(11, 7, 'Tire Pressure Sensor', 0.50, '2023-10-22', 'Inspect and calibrate tire pressure sensor.'),
(12, 14, 'Fuel Level Sensor', 0.65, '2023-11-02', 'Replace fuel level sensor and inspect fuel system.'),
(13, 5, 'Battery', 0.55, '2023-10-12', 'Replace battery if charge is below 60%.'),
(14, 17, 'Coolant Temperature Sensor', 0.70, '2023-10-30', 'Flush coolant system and replace sensor.'),
(15, 4, 'Transmission Fluid Temperature Sensor', 0.75, '2023-11-12', 'Check fluid levels and replace sensor.'),
(16, 2, 'Brake Pad Sensor', 0.80, '2023-11-20', 'Replace brake pads and inspect sensor.'),
(17, 19, 'Engine Temperature Sensor', 0.60, '2023-11-05', 'Replace engine temperature sensor and check for leaks.'),
(18, 9, 'Tire Pressure Sensor', 0.55, '2023-10-27', 'Inspect tire pressure and replace sensor.'),
(19, 16, 'Fuel Level Sensor', 0.45, '2023-10-15', 'Replace fuel level sensor and check fuel system.'),
(20, 11, 'Battery', 0.50, '2023-11-01', 'Test and replace battery if charge is below 50%.');


INSERT INTO Diagnostic_Reports (report_id, vehicle_id, report_date, component_status, overall_health_score, maintenance_suggestions)
VALUES
(1, 7, '2023-09-15', 'Engine Temperature Sensor: OK', 87.50, 'Regular maintenance advised.'),
(2, 4, '2023-09-20', 'Oil Pressure Sensor: Needs Replacement', 82.00, 'Replace oil pressure sensor and check oil levels.'),
(3, 15, '2023-09-22', 'Tire Pressure Sensor: OK', 90.00, 'Check tire pressures regularly.'),
(4, 6, '2023-09-25', 'Battery: Low Voltage', 78.00, 'Consider replacing the battery.'),
(5, 5, '2023-09-28', 'Coolant Temperature Sensor: OK', 85.00, 'Coolant system in good condition.'),
(6, 8, '2023-10-01', 'Fuel Level Sensor: Needs Calibration', 80.00, 'Calibrate fuel level sensor and inspect fuel system.'),
(7, 13, '2023-10-03', 'Brake Pad Sensor: OK', 88.00, 'Brake pads are in good condition.'),
(8, 16, '2023-10-07', 'Transmission Fluid Temperature Sensor: OK', 84.00, 'Transmission fluid levels are good.'),
(9, 2, '2023-10-10', 'Engine RPM Sensor: Needs Calibration', 81.00, 'Calibrate engine RPM sensor.'),
(10, 14, '2023-10-12', 'Oil Pressure Sensor: OK', 83.00, 'Oil pressure is normal.'),
(11, 11, '2023-10-15', 'Tire Pressure Sensor: OK', 89.00, 'Tire pressures are within normal range.'),
(12, 18, '2023-10-18', 'Fuel Level Sensor: OK', 82.50, 'Fuel system is functioning normally.'),
(13, 1, '2023-10-20', 'Battery: OK', 86.00, 'Battery health is good.'),
(14, 12, '2023-10-22', 'Coolant Temperature Sensor: Needs Replacement', 77.00, 'Replace coolant temperature sensor.'),
(15, 19, '2023-10-25', 'Transmission Fluid Temperature Sensor: OK', 83.50, 'Transmission fluid is at proper levels.'),
(16, 10, '2023-10-28', 'Brake Pad Sensor: Needs Inspection', 80.00, 'Inspect brake pads for wear.'),
(17, 17, '2023-10-30', 'Engine Temperature Sensor: OK', 84.00, 'Engine temperature is within normal range.'),
(18, 9, '2023-11-02', 'Tire Pressure Sensor: Needs Calibration', 79.00, 'Calibrate tire pressure sensor.'),
(19, 20, '2023-11-05', 'Fuel Level Sensor: OK', 85.00, 'Fuel level sensor is working properly.'),
(20, 3, '2023-11-07', 'Battery: OK', 82.00, 'Battery health is satisfactory.');
