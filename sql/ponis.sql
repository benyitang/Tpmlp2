-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2024 a las 20:23:57
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ponis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponis`
--

CREATE TABLE `ponis` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ponis`
--

INSERT INTO `ponis` (`id`, `nombre`, `imagen`, `descripcion`) VALUES
(1, 'Twilight Sparkle', 'src/twilight.png', 'La princesa de la amistad y una gran estudiosa.'),
(2, 'Rainbow Dash', 'src/rainbowdash.png', 'La poni más rápida de Equestria, una experta en acrobacias aéreas.'),
(3, 'Pinkie Pie', 'src/pinkiepie.png', 'La poni más divertida y enérgica de Equestria.'),
(4, 'Applejack', 'src/applejack.png', 'Una poni terrestre fuerte y honesta, dedicada a su granja.'),
(5, 'Rarity', 'src/rarity.png', 'Una unicornio elegante y vanidosa, con un gusto exquisito por la moda.'),
(6, 'Fluttershy', 'src/fluttershy.png', 'Una poni terrestre tímida y gentil, con un amor profundo por los animales.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ponis`
--
ALTER TABLE `ponis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ponis`
--
ALTER TABLE `ponis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
