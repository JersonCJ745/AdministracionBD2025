-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 11:30:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodegabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, 'Juan Pérez', 'Av. Central 123', '555-1234'),
(2, 'María López', 'Calle Norte 456', '555-5678'),
(3, 'Carlos Gómez', 'Av. Sur 789', '555-8765'),
(4, 'Ana Torres', 'Calle 10 #45', '555-4321'),
(5, 'Luis Fernández', 'Av. Libertad 100', '555-3456'),
(6, 'Lucía Ramírez', 'Calle Este 210', '555-6543'),
(7, 'Miguel Sánchez', 'Av. Oeste 300', '555-1111'),
(8, 'Laura Vargas', 'Calle Nueva 22', '555-2222'),
(9, 'Andrés Herrera', 'Av. Reforma 10', '555-3333'),
(10, 'Elena Castro', 'Calle 5 #12', '555-4444'),
(11, 'Pedro Medina', 'Calle Real 200', '555-5555'),
(12, 'Verónica Díaz', 'Av. Las Palmas 345', '555-6666'),
(13, 'Fernando Rojas', 'Calle Uno 100', '555-7777'),
(14, 'Carmen Morales', 'Av. Jardines 88', '555-8888'),
(15, 'Javier Soto', 'Calle Rosa 17', '555-9999'),
(16, 'Daniela Paredes', 'Av. Verde 50', '555-1212'),
(17, 'Sofía Martínez', 'Calle Azul 23', '555-1313'),
(18, 'Oscar Navarro', 'Av. Amarilla 44', '555-1414'),
(19, 'Patricia Guzmán', 'Calle Sol 101', '555-1515'),
(20, 'Emilio Salazar', 'Av. Nieve 18', '555-1616'),
(21, 'Silvia Ortega', 'Calle Lomas 3', '555-1717'),
(22, 'Diego Molina', 'Av. Prado 4', '555-1818'),
(23, 'Natalia Cordero', 'Calle Olivo 9', '555-1919'),
(24, 'Roberto Ponce', 'Av. Cedros 111', '555-2020'),
(25, 'Isabel Vega', 'Calle Cedro 89', '555-2121'),
(26, 'Ricardo Cruz', 'Av. Central 150', '555-2223'),
(27, 'Carla Mendoza', 'Calle Norte 70', '555-2323'),
(28, 'Esteban Reyes', 'Av. Sur 205', '555-2424'),
(29, 'Paola Camacho', 'Calle 8 #88', '555-2525'),
(30, 'Marco León', 'Av. Libertad 230', '555-2626'),
(31, 'Valeria Acosta', 'Calle Este 99', '555-2727'),
(32, 'Fabián Bravo', 'Av. Oeste 66', '555-2828'),
(33, 'Sandra Núñez', 'Calle Nueva 55', '555-2929'),
(34, 'Héctor Peña', 'Av. Reforma 120', '555-3030'),
(35, 'Jimena Fuentes', 'Calle 7 #77', '555-3131'),
(36, 'Tomás Ibáñez', 'Calle Real 300', '555-3232'),
(37, 'Brenda Paredes', 'Av. Las Palmas 400', '555-3334'),
(38, 'Adrián Silva', 'Calle Uno 45', '555-3434'),
(39, 'Marina Duarte', 'Av. Jardines 78', '555-3535'),
(40, 'Ernesto Aguilar', 'Calle Rosa 10', '555-3636'),
(41, 'Lorena Ríos', 'Av. Verde 61', '555-3737'),
(42, 'Alonso Castaño', 'Calle Azul 33', '555-3838'),
(43, 'Bárbara Galindo', 'Av. Amarilla 77', '555-3939'),
(44, 'Santiago Lara', 'Calle Sol 210', '555-4040'),
(45, 'Claudia Serrano', 'Av. Nieve 92', '555-4141'),
(46, 'Iván Lozano', 'Calle Lomas 56', '555-4242'),
(47, 'Tatiana Beltrán', 'Av. Prado 72', '555-4343'),
(48, 'Arturo Becerra', 'Calle Olivo 29', '555-4445'),
(49, 'Melissa Del Valle', 'Av. Cedros 59', '555-4545'),
(50, 'Cristian Meza', 'Calle Cedro 77', '555-4646'),
(51, 'Juliana Solís', 'Av. Central 301', '555-4747'),
(52, 'Ángel Quezada', 'Calle Norte 402', '555-4848'),
(53, 'Bianca Torres', 'Av. Sur 105', '555-4949'),
(54, 'Mauricio Parra', 'Calle 11 #11', '555-5050'),
(55, 'Gabriela Landa', 'Av. Libertad 301', '555-5151'),
(56, 'Sebastián Ayala', 'Calle Este 150', '555-5252'),
(57, 'Regina Mora', 'Av. Oeste 199', '555-5353'),
(58, 'Gustavo Palma', 'Calle Nueva 60', '555-5454'),
(59, 'Yesenia Ávila', 'Av. Reforma 35', '555-5556'),
(60, 'Ramiro Blanco', 'Calle 6 #6', '555-5656'),
(61, 'Angélica Espinoza', 'Calle Real 155', '555-5757'),
(62, 'Nicolás Rivera', 'Av. Las Palmas 290', '555-5858'),
(63, 'Camila Bustos', 'Calle Uno 99', '555-5959'),
(64, 'Kevin Duarte', 'Av. Jardines 305', '555-6060'),
(65, 'Daniela Barrios', 'Calle Rosa 66', '555-6161'),
(66, 'Rodrigo Sepúlveda', 'Av. Verde 45', '555-6262'),
(67, 'Florencia Benítez', 'Calle Azul 80', '555-6363'),
(68, 'Joel Márquez', 'Av. Amarilla 92', '555-6464'),
(69, 'Martina Sandoval', 'Calle Sol 74', '555-6565'),
(70, 'Bruno Correa', 'Av. Nieve 65', '555-6667'),
(71, 'Renata Rivas', 'Calle Lomas 37', '555-6767'),
(72, 'Francisco Cuellar', 'Av. Prado 85', '555-6868'),
(73, 'Leticia Orozco', 'Calle Olivo 31', '555-6969'),
(74, 'Raúl Montoya', 'Av. Cedros 123', '555-7070'),
(75, 'Ximena Valenzuela', 'Calle Cedro 43', '555-7171'),
(76, 'Ignacio Cortés', 'Av. Central 78', '555-7272'),
(77, 'Celeste Navarro', 'Calle Norte 65', '555-7373'),
(78, 'Gerardo Pizarro', 'Av. Sur 49', '555-7474'),
(79, 'Monserrat Guerra', 'Calle 3 #3', '555-7575'),
(80, 'Enrique Báez', 'Av. Libertad 401', '555-7676'),
(81, 'Alma Godoy', 'Calle Este 222', '555-7778');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idDetalles` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `IdProductos` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idDetalles`, `idFactura`, `IdProductos`, `cantidad`, `total`) VALUES
(1, 1, 411, 1, 123.45),
(2, 1, 412, 2, 179.98),
(3, 1, 413, 1, 59.50),
(4, 2, 414, 1, 250.00),
(5, 2, 415, 1, 399.99),
(6, 2, 416, 3, 47.97),
(7, 3, 417, 2, 45.00),
(8, 3, 418, 1, 45.00),
(9, 3, 419, 1, 180.00),
(10, 4, 420, 1, 99.99),
(11, 4, 421, 2, 150.00),
(12, 4, 422, 1, 300.00),
(13, 5, 423, 1, 850.00),
(14, 5, 424, 4, 11.96),
(15, 5, 425, 2, 17.00),
(16, 6, 426, 1, 120.00),
(17, 6, 427, 1, 65.00),
(18, 6, 428, 1, 240.00),
(19, 7, 429, 1, 510.00),
(20, 7, 430, 3, 10.47),
(21, 7, 431, 1, 25.00),
(22, 8, 432, 2, 29.50),
(23, 8, 433, 1, 7.99),
(24, 8, 434, 1, 980.00),
(25, 9, 435, 2, 79.80),
(26, 9, 436, 1, 60.00),
(27, 9, 437, 3, 17.97),
(28, 10, 438, 1, 310.00),
(29, 10, 439, 2, 22.00),
(30, 10, 440, 1, 6.75),
(31, 11, 441, 1, 130.00),
(32, 11, 442, 1, 42.00),
(33, 11, 443, 3, 31.50),
(34, 12, 444, 1, 555.55),
(35, 12, 445, 1, 77.77),
(36, 12, 446, 2, 39.98),
(37, 13, 447, 1, 860.00),
(38, 13, 448, 1, 480.00),
(39, 13, 449, 2, 25.98),
(40, 14, 450, 4, 15.96),
(41, 14, 451, 3, 81.00),
(42, 14, 452, 2, 3.00),
(43, 15, 453, 1, 68.00),
(44, 15, 454, 1, 129.99),
(45, 15, 455, 1, 34.99),
(46, 16, 456, 1, 499.00),
(47, 16, 457, 3, 89.70),
(48, 16, 458, 1, 16.25),
(49, 17, 459, 1, 84.00),
(50, 17, 460, 2, 46.80),
(51, 17, 461, 1, 51.25),
(52, 18, 462, 1, 370.00),
(53, 18, 463, 4, 31.20),
(54, 18, 464, 2, 8.40),
(55, 19, 465, 1, 13.30),
(56, 19, 466, 3, 63.00),
(57, 19, 467, 2, 19.98),
(58, 20, 468, 1, 300.00),
(59, 20, 469, 1, 65.99),
(60, 20, 470, 1, 280.00),
(61, 21, 471, 3, 112.80),
(62, 21, 472, 1, 14.50),
(63, 21, 473, 2, 10.98),
(64, 22, 474, 1, 88.88),
(65, 22, 475, 3, 24.60),
(66, 22, 476, 2, 21.98),
(67, 23, 477, 1, 6.40),
(68, 23, 478, 1, 73.00),
(69, 23, 479, 2, 5.98),
(70, 24, 480, 1, 39.99),
(71, 24, 481, 3, 42.60),
(72, 24, 482, 1, 22.99),
(73, 25, 483, 1, 780.00),
(74, 25, 484, 1, 33.33),
(75, 25, 485, 1, 19.50),
(76, 26, 486, 1, 150.00),
(77, 26, 487, 2, 99.98),
(78, 26, 488, 1, 55.55),
(79, 27, 489, 1, 299.99),
(80, 27, 490, 1, 17.25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `idCiente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `idCiente`, `Fecha`, `Total`) VALUES
(1, 1, '2023-01-15', 150.75),
(2, 2, '2023-02-10', 325.00),
(3, 3, '2023-03-05', 89.99),
(4, 4, '2023-04-12', 430.40),
(5, 5, '2023-05-08', 1200.00),
(6, 6, '2023-06-18', 999.99),
(7, 7, '2023-07-02', 250.00),
(8, 8, '2023-07-15', 775.45),
(9, 9, '2023-08-01', 98.00),
(10, 10, '2023-09-25', 340.10),
(11, 11, '2023-10-10', 580.50),
(12, 12, '2023-11-05', 430.75),
(13, 13, '2023-12-01', 220.30),
(14, 14, '2024-01-15', 760.00),
(15, 15, '2024-02-20', 310.45),
(16, 16, '2024-03-10', 125.90),
(17, 17, '2024-04-05', 670.15),
(18, 18, '2024-05-25', 410.00),
(19, 19, '2024-06-18', 330.75),
(20, 20, '2024-07-09', 240.40),
(21, 21, '2024-08-12', 950.00),
(22, 22, '2024-09-30', 180.25),
(23, 23, '2024-10-15', 610.60),
(24, 24, '2024-11-21', 275.75),
(25, 25, '2024-12-05', 430.00),
(26, 26, '2025-01-18', 520.90),
(27, 27, '2025-02-25', 670.45),
(28, 28, '2025-03-11', 115.30),
(29, 29, '2025-04-20', 980.80),
(30, 30, '2025-05-14', 410.15),
(31, 31, '2025-06-07', 370.55),
(32, 32, '2025-07-22', 420.60),
(33, 33, '2025-08-10', 690.70),
(34, 34, '2025-09-14', 280.80),
(35, 35, '2025-10-01', 530.90),
(36, 36, '2025-10-29', 115.15),
(37, 37, '2025-11-16', 745.35),
(38, 38, '2025-12-05', 625.20),
(39, 39, '2026-01-10', 320.45),
(40, 40, '2026-02-20', 410.25),
(41, 41, '2026-03-15', 255.35),
(42, 42, '2026-04-07', 580.00),
(43, 43, '2026-05-12', 750.15),
(44, 44, '2026-06-18', 320.50),
(45, 45, '2026-07-25', 390.75),
(46, 46, '2026-08-30', 110.85),
(47, 47, '2026-09-17', 675.40),
(48, 48, '2026-10-11', 495.65),
(49, 49, '2026-11-03', 215.55),
(50, 50, '2026-11-27', 525.45),
(51, 51, '2026-12-15', 430.30),
(52, 52, '2027-01-10', 390.75),
(53, 53, '2027-02-05', 610.20),
(54, 54, '2027-03-22', 720.85),
(55, 55, '2027-04-18', 830.90),
(56, 56, '2027-05-14', 120.40),
(57, 57, '2027-06-09', 640.15),
(58, 58, '2027-07-30', 550.25),
(59, 59, '2027-08-12', 410.75),
(60, 60, '2027-09-05', 320.55),
(61, 61, '2027-09-28', 455.40),
(62, 62, '2027-10-18', 370.65),
(63, 63, '2027-11-07', 210.55),
(64, 64, '2027-12-01', 690.80),
(65, 65, '2028-01-10', 560.75),
(66, 66, '2028-02-20', 430.95),
(67, 67, '2028-03-15', 270.40),
(68, 68, '2028-04-10', 395.50),
(69, 69, '2028-05-05', 325.65),
(70, 70, '2028-06-22', 480.30),
(71, 71, '2028-07-11', 520.80),
(72, 72, '2028-08-06', 620.55),
(73, 73, '2028-09-19', 300.75),
(74, 74, '2028-10-15', 450.95),
(75, 75, '2028-11-11', 385.60),
(76, 76, '2028-12-05', 410.25),
(77, 77, '2029-01-20', 555.45),
(78, 78, '2029-02-10', 475.90),
(79, 79, '2029-03-01', 300.15),
(80, 80, '2029-03-25', 720.40),
(81, 81, '2029-04-18', 610.75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `PrecioVenta` decimal(10,2) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `PrecioVenta`, `Nombre`) VALUES
(411, 123.45, 'Teclado Mecánico'),
(412, 89.99, 'Mouse Inalámbrico'),
(413, 59.50, 'Webcam HD'),
(414, 250.00, 'Monitor 24 pulgadas'),
(415, 399.99, 'Impresora Multifunción'),
(416, 15.99, 'Cable HDMI 2m'),
(417, 22.50, 'Lámpara LED Escritorio'),
(418, 45.00, 'Auriculares Bluetooth'),
(419, 180.00, 'Disco Duro Externo 1TB'),
(420, 99.99, 'Router Wi-Fi'),
(421, 75.00, 'Altavoces Estéreo'),
(422, 300.00, 'Tablet Android'),
(423, 850.00, 'Laptop 14 pulgadas'),
(424, 2.99, 'Baterías AA Pack x4'),
(425, 8.50, 'Funda para Smartphone'),
(426, 120.00, 'Smartwatch Deportivo'),
(427, 65.00, 'Teclado Inalámbrico'),
(428, 240.00, 'Monitor Curvo 27\"'),
(429, 510.00, 'Proyector Full HD'),
(430, 3.49, 'Adaptador USB-C'),
(431, 25.00, 'Base Refrigerante'),
(432, 14.75, 'Mousepad XL'),
(433, 7.99, 'Cable USB 3.0'),
(434, 980.00, 'PC de Escritorio Gamer'),
(435, 39.90, 'Micrófono de Solapa'),
(436, 60.00, 'SSD 256GB'),
(437, 5.99, 'Limpia Pantallas'),
(438, 310.00, 'Silla Ergonómica'),
(439, 11.00, 'Soporte Celular Escritorio'),
(440, 6.75, 'Tapete Antideslizante'),
(441, 130.00, 'Fuente de Poder 600W'),
(442, 42.00, 'Hub USB 4 Puertos'),
(443, 10.50, 'Almohadilla para Muñeca'),
(444, 555.55, 'Monitor 4K 32\"'),
(445, 77.77, 'Gamepad Inalámbrico'),
(446, 19.99, 'Cargador Rápido 65W'),
(447, 860.00, 'Laptop Ultraliviana'),
(448, 480.00, 'Impresora Láser'),
(449, 12.99, 'Filtro de Privacidad'),
(450, 3.99, 'Clip Organizador de Cables'),
(451, 27.00, 'Soporte para Monitor'),
(452, 1.50, 'Toallitas Limpieza'),
(453, 68.00, 'Memoria RAM 8GB'),
(454, 129.99, 'Placa Madre ATX'),
(455, 34.99, 'Cámara de Seguridad Wi-Fi'),
(456, 499.00, 'Smart TV 40 pulgadas'),
(457, 29.90, 'Antena Digital HD'),
(458, 16.25, 'Soporte Pared TV'),
(459, 84.00, 'Ventilador de Torre'),
(460, 23.40, 'Extensor de Red WiFi'),
(461, 51.25, 'Power Bank 20000mAh'),
(462, 370.00, 'Consola de Videojuegos'),
(463, 7.80, 'Cinta LED USB'),
(464, 4.20, 'Porta Laptop Plegable'),
(465, 13.30, 'Mini Ventilador USB'),
(466, 21.00, 'Estuche Disco Duro'),
(467, 9.99, 'Cargador de Auto'),
(468, 300.00, 'Tablet 10 pulgadas'),
(469, 65.99, 'Parlante Bluetooth'),
(470, 280.00, 'Silla Gamer'),
(471, 37.60, 'Luces RGB'),
(472, 14.50, 'Base Antideslizante'),
(473, 5.49, 'Organizador Escritorio'),
(474, 88.88, 'Disco SSD 512GB'),
(475, 8.20, 'Protector Pantalla'),
(476, 10.99, 'Cable Lightning'),
(477, 6.40, 'Tarjeta MicroSD 32GB'),
(478, 73.00, 'Soporte Monitor Dual'),
(479, 2.99, 'Adaptador HDMI a VGA'),
(480, 39.99, 'Mouse Gamer RGB'),
(481, 14.20, 'Cable Ethernet 10m'),
(482, 22.99, 'Adaptador Bluetooth USB'),
(483, 780.00, 'Mini PC Compacta'),
(484, 33.33, 'Estabilizador de Voltaje'),
(485, 19.50, 'Bocina Portátil'),
(486, 150.00, 'Tarjeta Gráfica 4GB'),
(487, 49.99, 'Teclado Gamer RGB'),
(488, 55.55, 'Mousepad con Carga Inalámbrica'),
(489, 299.99, 'Monitor Gaming 144Hz'),
(490, 17.25, 'Soporte para Audífonos'),
(491, 12.00, 'Limpiador de Teclado'),
(492, 640.00, 'Impresora 3D Compacta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDetalles`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `IdProductos` (`IdProductos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `idCiente` (`idCiente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDetalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`IdProductos`) REFERENCES `productos` (`idProductos`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idCiente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
