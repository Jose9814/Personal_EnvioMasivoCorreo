-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2022 a las 04:48:44
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `joseh_masivocorreos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_n` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `prod_precion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `prod_preciod` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `prod_url` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `prod_img` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `prod_cupon` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `prod_descrip` varchar(900) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_n`, `prod_precion`, `prod_preciod`, `prod_url`, `prod_img`, `prod_cupon`, `prod_descrip`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(5, 'Laptop Dell Inspiron 3515', '$11,909.00', '$11,369.00', 'https://www.cyberpuerta.mx/Computadoras/Laptops/Laptop-DELL-Inspiron-3515-15-6-HD-AMD-Ryzen-5-3450U-2-10GHz-8GB-256GB-SSD-Windows-11-Home-64-bit-Espanol-Plata.html', 'https://www.cyberpuerta.mx/img/product/XL/CP-DELL-I3515_R58256SWNXHs_HD_522-b2b7ae.jpg', '0', 'AMD Ryzen 5 3450U 2.10GHz, 8GB, 256GB SSD, Windows 11 Home 64-bit, EspaÃ±ol, Plata', '2022-05-01 18:40:34', NULL, NULL, 1),
(6, 'Procesador Intel Core i7-11700 Intel UHD Graphics 750', '$7,939.00', '$7,519.00', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Procesadores/Procesadores-para-PC/Procesador-Intel-Core-i7-11700-Intel-UHD-Graphics-750-S-1200-2-50GHz-8-Core-16MB-Smart-Cache-11va-Generacion-Rocket-Lake.html', 'https://www.cyberpuerta.mx/img/product/M/CP-INTEL-BX8070811700-1.jpg', '0', 'S-1200, 2.50GHz, 8-Core, 16MB Smart Cache (11va GeneraciÃ³n - Rocket Lake)', '2022-05-01 18:42:59', NULL, NULL, 1),
(7, 'Tarjeta de Video Palit NVIDIA GeForce RTX 3060 Ti DUAL', '$15,289.00', '$14,119.00', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Tarjetas-de-Video/Tarjeta-de-Video-Palit-NVIDIA-GeForce-RTX-3060-Ti-DUAL-8GB-256-bit-GDDR6-PCI-Express-4-0.html', 'https://www.cyberpuerta.mx/img/product/M/CP-PALIT-NE6306T019P2-190AD-8b85e1.jpg', '0', '8GB 256-bit GDDR6, PCI Express 4.0', '2022-05-01 18:44:28', NULL, NULL, 1),
(8, 'Gabinete NZXT H510 con Ventana', '$2,829.00', '$2,609.00', 'https://www.cyberpuerta.mx/Computo-Hardware/Componentes/Gabinetes/Gabinete-NZXT-H510-con-Ventana-Midi-Tower-ATX-Micro-ATX-Mini-ATX-USB-3-1-sin-Fuente-Blanco.html', 'https://www.cyberpuerta.mx/img/product/M/CP-NZXT-CA-H510B-W1-1.jpg', '0', 'Midi-Tower, ATX,Micro-ATX,Mini-ATX, USB 3.1, sin Fuente, Blanco', '2022-05-01 18:45:55', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_apep` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_apem` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` datetime NOT NULL,
  `rol_id` int(11) NOT NULL,
  `usu_pass` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_img` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `usu_apep`, `usu_apem`, `usu_correo`, `fech_crea`, `rol_id`, `usu_pass`, `usu_img`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Jose Enrique', 'Gonzalez', 'Vazquez', 'eglez863@gmail.com', '2022-04-29 11:30:31', 2, '123456', 'user1.jpg', NULL, NULL, 1),
(2, 'Miguel Angel', 'Gonzalez', 'Licona', 'glez37464@gmail.com', '2022-04-29 11:33:18', 1, NULL, NULL, NULL, NULL, 1),
(12, NULL, NULL, NULL, 'manchester1198@hotmail.com', '2022-05-01 21:26:22', 1, NULL, NULL, NULL, NULL, 1),
(13, NULL, NULL, NULL, 'isabelglez9504@gmail.com', '2022-05-01 21:28:15', 1, NULL, NULL, NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
