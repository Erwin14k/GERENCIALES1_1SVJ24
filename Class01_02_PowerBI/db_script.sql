SHOW DATABASES;


CREATE DATABASE guate_tech;

USE guate_tech;

CREATE TABLE IF NOT EXISTS employee(
	employee_id BIGINT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    age BIGINT NOT NULL,
    title VARCHAR(150),
    date_of_hire DATE NOT NULL,
    daily_productivity BIGINT NOT NULL,
    hours_worked DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS product_sales(
	product_id BIGINT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    quantity_sold BIGINT NOT NULL,
    unit_price BIGINT NOT NULL,
    total_sale BIGINT NOT NULL,
    employee_id BIGINT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE
);
DROP TABLE product_sales;

CREATE TABLE IF NOT EXISTS evaluations(
	employee_id BIGINT PRIMARY KEY,
    monthly_evaluation DECIMAL(10,2) NOT NULL,
    annual_evaluation DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

SELECT product_name, quantity_sold from product_sales ORDER BY quantity_sold DESC LIMIT 5;
SELECT name, daily_productivity from employee ORDER BY daily_productivity DESC LIMIT 10;
SELECT * FROM employee;
SELECT * FROM product_sales;
SELECT * FROM evaluations;


-- Carga de empleados
INSERT INTO employee (employee_id, name, age, title, date_of_hire, daily_productivity, hours_worked) VALUES
	('101', 'John Smith', '30', 'Ingeniero de Ventas', '2015-05-15', '85', '8'),
	('102', 'Alice Johnson', '28', 'Asistente de Marketing', '2016-02-20', '75', '7'),
	('103', 'Michael Brown', '35', 'Gerente de Proyectos', '2014-09-10', '90', '9'),
	('104', 'Emily Davis', '32', 'Analista de Ventas', '2017-07-05', '80', '8.5'),
	('105', 'Robert Wilson', '29', 'Asistente Administrativo', '2018-03-12', '70', '6.5'),
	('106', 'Linda Miller', '31', 'Ingeniero de Ventas', '2019-01-18', '88', '8.5'),
	('107', 'William Jones', '26', 'Analista de Datos', '2020-11-22', '78', '7.5'),
	('108', 'Susan Martinez', '27', 'Asistente de Ventas', '2017-08-30', '82', '8'),
	('109', 'David Anderson', '33', 'Gerente de Marketing', '2015-06-25', '92', '9.5'),
	('110', 'Sarah Taylor', '30', 'Asistente de Proyectos', '2016-04-14', '76', '7.5'),
	('111', 'James Thomas', '29', 'Ingeniero de Ventas', '2016-08-05', '84', '8'),
	('112', 'Karen Hernandez', '28', 'Analista de Marketing', '2017-03-09', '80', '8'),
	('113', 'Charles White', '34', 'Gerente de Ventas', '2013-12-02', '88', '8.5'),
	('114', 'Amy Lee', '31', 'Asistente de Proyectos', '2018-10-17', '75', '7'),
	('115', 'Richard Walker', '27', 'Ingeniero de Ventas', '2019-09-08', '85', '8.5'),
	('116', 'Mary Clark', '32', 'Gerente de Proyectos', '2016-06-24', '90', '9'),
	('117', 'Joseph Rodriguez', '29', 'Analista de Ventas', '2017-05-11', '78', '7.5'),
	('118', 'Elizabeth Lewis', '28', 'Asistente Administrativo', '2018-02-28', '72', '7'),
	('119', 'Michael Hall', '34', 'Gerente de Ventas', '2019-11-15', '88', '8.5'),
	('120', 'Jennifer Allen', '31', 'Asistente de Marketing', '2020-07-23', '80', '8'),
	('121', 'Christopher Young', '33', 'Ingeniero de Ventas', '2015-11-09', '85', '8.5'),
	('122', 'Margaret Scott', '29', 'Gerente de Proyectos', '2016-10-14', '90', '9'),
	('123', 'Mark Green', '32', 'Analista de Ventas', '2017-08-28', '75', '7'),
	('124', 'Sophia Adams', '27', 'Asistente Administrativo', '2018-05-19', '72', '7'),
	('125', 'Thomas Baker', '31', 'Gerente de Marketing', '2019-04-05', '85', '8.5'),
	('126', 'Emma Carter', '28', 'Asistente de Proyectos', '2020-02-12', '75', '7'),
	('127', 'Josephine Hill', '34', 'Ingeniero de Ventas', '2015-12-08', '90', '9'),
	('128', 'William Turner', '31', 'Analista de Marketing', '2016-09-17', '80', '8'),
	('129', 'Olivia Murphy', '27', 'Gerente de Ventas', '2017-07-21', '78', '7.5'),
	('130', 'Matthew King', '30', 'Asistente de Marketing', '2018-04-30', '72', '7'),
	('131', 'Ella Peterson', '32', 'Ingeniero de Ventas', '2019-03-03', '85', '8.5'),
	('132', 'Andrew Morgan', '28', 'Analista de Datos', '2020-01-06', '80', '8'),
	('133', 'Ava Reed', '29', 'Asistente de Ventas', '2015-09-29', '78', '7.5'),
	('134', 'Noah Cooper', '31', 'Gerente de Proyectos', '2016-08-08', '88', '8.5'),
	('135', 'Grace Richardson', '27', 'Analista de Ventas', '2017-05-26', '75', '7'),
	('136', 'Liam Cox', '30', 'Asistente Administrativo', '2018-03-14', '72', '7'),
	('137', 'Chloe Howard', '28', 'Gerente de Marketing', '2019-01-22', '85', '8.5'),
	('138', 'Emily Gray', '32', 'Asistente de Proyectos', '2020-11-02', '75', '7'),
	('139', 'Logan Bell', '34', 'Ingeniero de Ventas', '2015-07-19', '90', '9'),
	('140', 'Avery Murphy', '31', 'Analista de Marketing', '2016-06-28', '80', '8'),
	('141', 'Sophia Turner', '29', 'Gerente de Ventas', '2017-05-14', '78', '7.5'),
	('142', 'Mason James', '28', 'Asistente de Marketing', '2018-04-21', '72', '7'),
	('143', 'Isabella Ross', '30', 'Ingeniero de Ventas', '2019-03-27', '85', '8.5'),
	('144', 'Ethan Watson', '32', 'Gerente de Proyectos', '2020-01-05', '90', '9'),
	('145', 'Alexis Cox', '28', 'Analista de Ventas', '2015-10-12', '75', '7'),
	('146', 'Aiden Howard', '30', 'Asistente Administrativo', '2016-09-20', '72', '7'),
	('147', 'Ella Gray', '29', 'Gerente de Marketing', '2017-08-28', '85', '8.5'),
	('148', 'James Reed', '31', 'Asistente de Proyectos', '2018-07-04', '80', '8'),
	('149', 'Mia Richardson', '27', 'Ingeniero de Ventas', '2019-06-10', '78', '7.5'),
	('150', 'Benjamin Hill', '32', 'Analista de Marketing', '2020-05-17', '72', '7');
    
    
    
 -- Carga de evaluaciones   
INSERT INTO evaluations (employee_Id, monthly_evaluation, annual_evaluation) VALUES
	('101', '8.5', '8.9'),
	('102', '8.8', '9.2'),
	('103', '7.2', '7.5'),
	('104', '9.0', '9.5'),
	('105', '7.8', '8.0'),
	('106', '8.2', '8.6'),
	('107', '6.2', '6.5'),
	('108', '7.5', '8.1'),
	('109', '8.8', '9.0'),
	('110', '7.0', '7.4'),
	('111', '8.3', '8.7'),
	('112', '7.8', '8.2'),
	('113', '7.5', '8.0'),
	('114', '8.1', '8.5'),
	('115', '7.9', '8.3'),
	('116', '8.6', '9.0'),
	('117', '7.0', '7.5'),
	('118', '8.4', '8.8'),
	('119', '7.2', '7.8'),
	('120', '8.0', '8.4'),
	('121', '8.7', '9.1'),
	('122', '7.6', '8.0'),
	('123', '7.8', '8.2'),
	('124', '8.3', '8.7'),
	('125', '7.9', '8.5'),
	('126', '8.2', '8.8'),
	('127', '7.5', '8.1'),
	('128', '7.7', '8.3'),
	('129', '8.9', '9.3'),
	('130', '7.3', '7.9'),
	('131', '8.6', '9.0'),
	('132', '8.1', '8.6'),
	('133', '7.5', '8.1'),
	('134', '8.3', '8.8'),
	('135', '7.9', '8.3'),
	('136', '8.2', '8.7'),
	('137', '7.6', '8.0'),
	('138', '7.8', '8.2'),
	('139', '8.4', '8.9'),
	('140', '7.2', '7.8'),
	('141', '8.0', '8.4'),
	('142', '8.7', '9.1'),
	('143', '7.5', '8.0'),
	('144', '7.7', '8.2'),
	('145', '8.5', '9.0'),
	('146', '7.4', '7.9'),
	('147', '8.8', '9.2'),
	('148', '7.3', '7.9'),
	('149', '8.6', '9.0'),
	('150', '8.1', '8.6');
    
-- Carga de productos
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('1', 'Laptop Dell XPS 13', '50', '1200', '60000', '101');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('2', 'Monitor LG 27"', '30', '350', '10500', '102');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('3', 'Teclado Logitech', '100', '40', '4000', '105');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('4', 'Mochila Ejecutiva', '70', '50', '3500', '106');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('5', 'Mouse Inalámbrico', '120', '25', '3000', '108');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('6', 'Smartphone Samsung Galaxy S21', '40', '800', '32000', '110');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('7', 'Audífonos Inalámbricos Sony', '90', '80', '7200', '112');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('8', 'Impresora Multifuncional HP', '25', '200', '5000', '114');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('9', 'Tablet Lenovo Tab M10', '60', '150', '9000', '116');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('10', 'Reloj Inteligente Fitbit', '80', '100', '8000', '118');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('11', 'Proyector Epson HD', '15', '400', '6000', '121');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('12', 'Escáner Canon LiDE', '35', '70', '2450', '124');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('13', 'Cámara DSLR Nikon', '20', '600', '12000', '127');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('14', 'Disco Duro Externo 1TB', '50', '90', '4500', '130');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('15', 'Memoria USB Kingston 32GB', '100', '20', '2000', '133');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('16', 'Teclado y Mouse Inalámbrico Logitech', '70', '60', '4200', '135');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('17', 'Monitor Dell 24"', '40', '300', '12000', '137');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('18', 'Ratón Gaming Razer', '55', '50', '2750', '140');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('19', 'Auriculares Gaming HyperX', '65', '75', '4875', '143');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('20', 'Router WiFi TP-Link', '30', '100', '3000', '146');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('21', 'Laptop Lenovo ThinkPad', '55', '900', '49500', '149');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('22', 'Monitor ASUS 32"', '25', '400', '10000', '102');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('23', 'Teclado Mecánico Redragon', '80', '50', '4000', '105');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('24', 'Cámara de Seguridad IP', '120', '70', '8400', '108');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('25', 'Smart TV Samsung 55"', '40', '1200', '48000', '111');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('26', 'Impresora láser Brother', '30', '180', '5400', '114');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('27', 'Audífonos Bluetooth JBL', '50', '60', '3000', '117');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('28', 'Tablet Huawei MediaPad', '65', '130', '8450', '120');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('29', 'Ratón Inalámbrico HP', '85', '30', '2550', '123');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('30', 'Auriculares Inalámbricos Apple', '90', '120', '10800', '126');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('31', 'Ruteador Gaming ASUS', '40', '150', '6000', '129');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('32', 'Teclado Ergonómico Microsoft', '70', '80', '5600', '132');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('33', 'Monitor Acer 27"', '55', '250', '13750', '135');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('34', 'Disco Duro SSD 500GB', '20', '100', '2000', '138');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('35', 'Memoria MicroSD SanDisk 64GB', '120', '25', '3000', '141');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('36', 'Webcam Logitech HD', '30', '50', '1500', '144');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('37', 'Altavoces Bluetooth Bose', '40', '200', '8000', '147');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('39', 'Audífonos Inalámbricos Beats', '50', '180', '9000', '103');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('40', 'Tablet Samsung Galaxy Tab A', '60', '140', '8400', '106');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('41', 'Monitor BenQ 24"', '90', '120', '10800', '109');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('42', 'Ratón Ergonómico Evoluent', '70', '90', '6300', '112');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('43', 'Cámara Deportiva GoPro', '40', '300', '12000', '115');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('44', 'Laptop HP Pavilion', '35', '800', '28000', '118');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('45', 'Impresora Epson EcoTank', '80', '150', '12000', '121');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('46', 'Smart TV LG 43"', '60', '500', '30000', '124');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('47', 'Teclado Retroiluminado Razer', '40', '70', '2800', '127');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('48', 'Disco Duro Externo 2TB', '50', '120', '6000', '130');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('49', 'Microfono USB Blue Yeti', '30', '200', '6000', '133');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('50', 'Cámara Réflex Canon', '25', '800', '20000', '136');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('51', 'Monitor Curvo Samsung 32"', '45', '350', '15750', '139');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('52', 'Audífonos Inalámbricos Sennheiser', '60', '100', '6000', '142');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('55', 'Smartphone Xiaomi Redmi Note 9', '100', '180', '18000', '101');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('56', 'Tablet Amazon Fire', '45', '80', '3600', '104');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('57', 'Ratón Gamer Logitech G502', '70', '90', '6300', '107');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('58', 'Audífonos Inalámbricos Skullcandy', '50', '70', '3500', '110');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('59', 'Monitor LG 24"', '80', '200', '16000', '113');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('60', 'Teclado Inalámbrico Apple', '30', '120', '3600', '116');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('61', 'Cámara de Seguridad CCTV', '90', '60', '5400', '119');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('62', 'Laptop Acer Aspire', '40', '700', '28000', '122');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('63', 'Impresora láser Samsung', '55', '250', '13750', '125');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('64', 'Smart TV Sony 50"', '25', '600', '15000', '128');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('65', 'Ratón Inalámbrico Logitech M590', '70', '40', '2800', '131');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('66', 'Auriculares Inalámbricos Jabra', '60', '80', '4800', '134');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('67', 'Tablet Lenovo Yoga', '80', '140', '11200', '137');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('68', 'Monitor HP 27"', '30', '300', '9000', '140');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('69', 'Disco Duro Externo 4TB', '40', '150', '6000', '143');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('70', 'Memoria USB SanDisk 128GB', '50', '30', '1500', '146');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('71', 'Webcam Microsoft LifeCam', '25', '50', '1250', '149');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('72', 'Altavoces Bluetooth JBL Flip', '70', '100', '7000', '102');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('73', 'Smartphone Google Pixel 4a', '80', '200', '16000', '105');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('74', 'Audífonos Inalámbricos JBL Free', '45', '80', '3600', '108');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('75', 'Tablet Huawei MatePad', '30', '180', '5400', '111');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('76', 'Monitor ASUS 24"', '90', '150', '13500', '114');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('77', 'Teclado Mecánico SteelSeries', '55', '70', '3850', '117');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('78', 'Cámara Deportiva SJCAM', '40', '120', '4800', '120');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('79', 'Laptop Microsoft Surface', '25', '900', '22500', '123');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('80', 'Impresora Canon PIXMA', '60', '80', '4800', '126');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('81', 'Smart TV TCL 55"', '70', '400', '28000', '129');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('82', 'Ratón Gaming Corsair', '80', '60', '4800', '132');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('83', 'Auriculares Inalámbricos Sony WH', '50', '250', '12500', '135');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('84', 'Router WiFi Linksys', '100', '80', '8000', '138');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('85', 'Teclado y Mouse Microsoft', '30', '100', '3000', '141');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('86', 'Monitor Dell 21"', '70', '200', '14000', '144');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('87', 'Disco Duro Externo 1TB Seagate', '60', '90', '5400', '147');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('88', 'Microfono USB Samson Go', '45', '50', '2250', '150');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('89', 'Cámara Compacta Sony', '40', '300', '12000', '103');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('90', 'Laptop ASUS ROG', '70', '1000', '70000', '106');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('91', 'Impresora HP DeskJet', '80', '120', '9600', '109');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('92', 'Smart TV Panasonic 40"', '30', '500', '15000', '112');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('93', 'Ratón Inalámbrico Microsoft', '25', '30', '750', '115');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('94', 'Auriculares Gaming SteelSeries', '55', '80', '4400', '118');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('95', 'Tablet Xiaomi Mi Pad', '60', '140', '8400', '121');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('96', 'Monitor AOC 27"', '40', '250', '10000', '124');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('97', 'Teclado Inalámbrico Logitech K780', '50', '120', '6000', '127');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('98', 'Cámara Réflex Nikon', '25', '700', '17500', '130');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('99', 'Smartphone OnePlus 9', '80', '300', '24000', '133');
INSERT INTO product_sales (product_id, product_name, quantity_sold, unit_price, total_sale, employee_Id) VALUES ('100', 'Altavoces Bluetooth Sony', '70', '200', '14000', '136');







-- <>

select * from employee;
select * from evaluations;
-- Horas trabajadas, productividad diaria y las evaluaciones (mensual y anual) , cálculo del performance simulado en base de datos

SELECT 
P.employee_id,
P.name,
P.age,
P.title,
P.date_of_hire,
P.daily_productivity,
P.hours_worked,
P.monthly_evaluation,
P.annual_evaluation,
P.performance,
TS.total_sales_ammount
FROM
	(SELECT
		e.employee_id,
        SUM(ps.total_sale) AS total_sales_ammount
	FROM
		employee e
	JOIN
		product_sales ps ON e.employee_id= ps.employee_id
	GROUP BY
		e.employee_id
) AS TS
JOIN ( SELECT
		E.employee_id,
        E.name,
        E.age,
        E.title,
        E.date_of_hire,
        E.daily_productivity,
        E.hours_worked,
        EV.monthly_evaluation,
        EV.annual_evaluation,
        (0.3* E.daily_productivity+0.2* E.hours_worked+0.25*EV.monthly_evaluation+0.25* EV.annual_evaluation) AS performance
	FROM 
		Employee E
	JOIN
		evaluations EV ON E.employee_id = EV.employee_id
) AS P ON TS.employee_id= P.employee_id
ORDER BY
	
	P.performance DESC,
    TS.total_sales_ammount DESC
	LIMIT 5;
        


/* Cálculo de un percentil
Percentil_25 = 
    PERCENTILEX.INC(
    FILTER('guate_tech employee' , 'guate_tech employee'[name]<>"" ),
    'guate_tech employee'[daily_productivity],0.25
    )
*/

/* Cálculo de performance en power bi
Nota: Se creó una nueva columna
Performance = 
0.3*'guate_tech employee'[daily_productivity]+
0.2* 'guate_tech employee'[hours_worked]+
0.25 * RELATED('guate_tech evaluations'[monthly_evaluation])+
0.25 * RELATED('guate_tech evaluations'[annual_evaluation])


*/


/* Total de ventas por empleado (Modo medida)
TotalVentasPorEmpleado = SUM('guate_tech product_sales'[total_sale])
*/


/* Total de ventas por empleado (Modo nueva columna)
Total_Sales_Amount = 
CALCULATE(
    SUM('guate_tech product_sales'[total_sale]),
    FILTER('guate_tech product_sales','guate_tech product_sales'[employee_id]='guate_tech employee'[employee_id] ))
*/
