-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2023 a las 00:48:12
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `cantidad` int(11) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `id_medicamento` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`cantidad`, `subtotal`, `id_medicamento`, `id_venta`) VALUES
(3, 74.97, 1, 1),
(2, 26.98, 2, 2),
(4, 59.96, 3, 3),
(1, 9.99, 4, 4),
(2, 29.98, 5, 5),
(3, 22.47, 6, 6),
(1, 22.99, 7, 7),
(4, 47.96, 8, 8),
(2, 17.58, 9, 9),
(3, 35.97, 10, 10),
(1, 11.99, 11, 11),
(2, 29.58, 12, 12),
(3, 44.97, 13, 13),
(1, 9.99, 14, 14),
(2, 29.98, 15, 15),
(3, 22.47, 16, 16),
(1, 22.99, 17, 17),
(4, 47.96, 18, 18),
(2, 17.58, 19, 19),
(3, 35.97, 20, 20),
(1, 11.99, 21, 21),
(2, 29.58, 22, 22),
(3, 44.97, 23, 23),
(1, 9.99, 24, 24),
(2, 29.98, 25, 25),
(3, 22.47, 26, 26),
(1, 22.99, 27, 27),
(4, 47.96, 28, 28),
(2, 17.58, 29, 29),
(3, 35.97, 30, 30),
(1, 11.99, 31, 31),
(2, 29.58, 32, 32),
(3, 44.97, 33, 33),
(1, 9.99, 34, 34),
(2, 29.98, 35, 35),
(3, 22.47, 36, 36),
(1, 22.99, 37, 37),
(4, 47.96, 38, 38),
(2, 17.58, 39, 39),
(3, 35.97, 40, 40),
(1, 11.99, 41, 41),
(2, 29.58, 42, 42),
(3, 44.97, 43, 43),
(1, 9.99, 44, 44),
(2, 29.98, 45, 45),
(3, 22.47, 46, 46),
(1, 22.99, 47, 47),
(4, 47.96, 48, 48),
(2, 17.58, 49, 49),
(3, 35.97, 50, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(1) NOT NULL,
  `direccion` varchar(550) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `edad`, `genero`, `direccion`, `correo`, `created_at`, `updated_at`) VALUES
(1, 'Ana García', 28, 'F', 'Calle 123, Ciudad Ejemplo', 'ana.garcia@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Luis Rodríguez', 35, 'M', 'Av. Principal, Pueblo Nuevo', 'luis.rodriguez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'María Martínez', 42, 'F', 'Carrera 45, Villa Bella', 'maria.martinez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Juan Pérez', 30, 'M', 'Calle 67, Urbanización Central', 'juan.perez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Laura López', 25, 'F', 'Calle 9, Barrio Primavera', 'laura.lopez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Carlos González', 38, 'M', 'Av. Libertad, Los Pinos', 'carlos.gonzalez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Andrea Sánchez', 29, 'F', 'Calle 22, Colonia Verde', 'andrea.sanchez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Pedro Ramírez', 45, 'M', 'Carrera 12, Ciudad Vieja', 'pedro.ramirez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Marta Torres', 31, 'F', 'Av. Central, Los Robles', 'marta.torres@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Alejandro Díaz', 27, 'M', 'Calle 34, Residencial Aurora', 'alejandro.diaz@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Laura Rodríguez', 33, 'F', 'Carrera 8, Barrio San José', 'laura.rodriguez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Manuel Vargas', 40, 'M', 'Av. Primavera, Villa Nueva', 'manuel.vargas@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Claudia Martínez', 26, 'F', 'Calle 56, Nuevo Horizonte', 'claudia.martinez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Diego Soto', 37, 'M', 'Carrera 30, Los Alamos', 'diego.soto@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Patricia Pérez', 23, 'F', 'Av. Libertad, Las Flores', 'patricia.perez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'José López', 32, 'M', 'Calle 15, Los Pájaros', 'jose.lopez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Isabel García', 48, 'F', 'Carrera 14, Los Laureles', 'isabel.garcia@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Sergio Ramírez', 29, 'M', 'Av. Principal, El Bosque', 'sergio.ramirez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Carmen Fernández', 39, 'F', 'Calle 20, Ciudad Jardín', 'carmen.fernandez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Raúl González', 34, 'M', 'Carrera 5, Villa Blanca', 'raul.gonzalez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Ana María Torres', 28, 'F', 'Av. Central, Los Pinos', 'ana.torres@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Javier Pérez', 44, 'M', 'Calle 11, Barrio Residencial', 'javier.perez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Laura Rodríguez', 31, 'F', 'Carrera 18, El Carmen', 'laura.rodriguez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Manuel Martínez', 36, 'M', 'Av. Primavera, Villa Bella', 'manuel.martinez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Carolina López', 27, 'F', 'Calle 25, Colonia Aurora', 'carolina.lopez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Juan Ramírez', 41, 'M', 'Carrera 40, Los Robles', 'juan.ramirez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Claudia Sánchez', 30, 'F', 'Av. Libertad, Ciudad Nueva', 'claudia.sanchez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Eduardo Díaz', 24, 'M', 'Calle 7, Los Pájaros', 'eduardo.diaz@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Ana González', 42, 'F', 'Carrera 33, Villa Nueva', 'ana.gonzalez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Roberto Pérez', 35, 'M', 'Av. Central, Los Laureles', 'roberto.perez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Laura Rodríguez', 29, 'F', 'Calle 19, El Bosque', 'laura.rodriguez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Francisco Martínez', 37, 'M', 'Carrera 10, Ciudad Jardín', 'francisco.martinez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Adriana Soto', 26, 'F', 'Av. Principal, Los Alamos', 'adriana.soto@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Carlos López', 43, 'M', 'Calle 21, Las Flores', 'carlos.lopez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'María Fernández', 33, 'F', 'Carrera 16, Nuevo Horizonte', 'maria.fernandez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Pedro Torres', 46, 'M', 'Av. Libertad, Villa Blanca', 'pedro.torres@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Andrea Pérez', 28, 'F', 'Calle 10, Ciudad Ejemplo', 'andrea.perez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Luis Martínez', 39, 'M', 'Carrera 25, Pueblo Nuevo', 'luis.martinez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Isabel Rodríguez', 30, 'F', 'Av. Primavera, Villa Bella', 'isabel.rodriguez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Juan García', 47, 'M', 'Calle 16, Urbanización Central', 'juan.garcia@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Claudia Ramírez', 25, 'F', 'Carrera 31, Barrio Primavera', 'claudia.ramirez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'David Sánchez', 38, 'M', 'Av. Central, Los Pinos', 'david.sanchez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Laura Pérez', 32, 'F', 'Calle 13, Colonia Verde', 'laura.perez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'José González', 27, 'M', 'Carrera 20, Ciudad Vieja', 'jose.gonzalez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ana Martínez', 44, 'F', 'Av. Libertad, Los Robles', 'ana.martinez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Luis Torres', 29, 'M', 'Calle 12, Residencial Aurora', 'luis.torres@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'María Rodríguez', 37, 'F', 'Carrera 7, Barrio San José', 'maria.rodriguez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Daniel Vargas', 31, 'M', 'Av. Principal, Villa Nueva', 'daniel.vargas@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Carolina Sánchez', 24, 'F', 'Calle 35, Nuevo Horizonte', 'carolina.sanchez@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Jorge Díaz', 40, 'M', 'Carrera 11, Los Alamos', 'jorge.diaz@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE `medicamento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `tipo` varchar(191) NOT NULL,
  `dosis` double(8,2) NOT NULL,
  `precio` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medicamento`
--

INSERT INTO `medicamento` (`id`, `nombre`, `tipo`, `dosis`, `precio`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Aspirina', 'Analgésico', 100.00, 5.99, 500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Ibuprofeno', 'Antiinflamatorio', 200.00, 7.49, 300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Paracetamol', 'Analgésico', 500.00, 4.99, 800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Amoxicilina', 'Antibiótico', 250.00, 9.99, 200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Omeprazol', 'Antiácido', 20.00, 6.79, 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Atorvastatina', 'Estatina', 10.00, 12.99, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Losartán', 'Antihipertensivo', 50.00, 8.49, 250, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Loratadina', 'Antihistamínico', 10.00, 6.29, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Metformina', 'Antidiabético', 500.00, 7.99, 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Ciprofloxacino', 'Antibiótico', 500.00, 11.99, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Risperidona', 'Antipsicótico', 2.00, 15.49, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Sertralina', 'Antidepresivo', 50.00, 14.79, 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Gabapentina', 'Antiepiléptico', 300.00, 10.99, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Fluoxetina', 'Antidepresivo', 20.00, 9.79, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Diazepam', 'Ansiolítico', 5.00, 8.99, 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Codeína', 'Analgésico', 30.00, 11.99, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Metoprolol', 'Beta-bloqueante', 50.00, 7.49, 180, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Prednisona', 'Corticoesteroide', 10.00, 6.99, 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Escitalopram', 'Antidepresivo', 10.00, 14.99, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Clonazepam', 'Ansiolítico', 1.00, 12.29, 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Furosemida', 'Diurético', 40.00, 6.99, 200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Metoclopramida', 'Antiemético', 10.00, 5.49, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Amlodipino', 'Antihipertensivo', 5.00, 8.79, 220, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Simvastatina', 'Estatina', 20.00, 10.49, 110, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tramadol', 'Analgésico', 50.00, 13.99, 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Lisinopril', 'Antihipertensivo', 10.00, 7.99, 180, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Metronidazol', 'Antibiótico', 250.00, 6.29, 160, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Lorazepam', 'Ansiolítico', 2.00, 9.99, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Valsartán', 'Antihipertensivo', 80.00, 11.29, 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Ranitidina', 'Antiácido', 150.00, 5.99, 250, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Atenolol', 'Beta-bloqueante', 25.00, 6.79, 200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Cetirizina', 'Antihistamínico', 10.00, 5.49, 300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Levotiroxina', 'Hormona Tiroidea', 100.00, 9.99, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Warfarina', 'Anticoagulante', 5.00, 8.49, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Enalapril', 'Antihipertensivo', 10.00, 7.49, 180, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Prednisolona', 'Corticoesteroide', 5.00, 7.29, 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Cefuroxima', 'Antibiótico', 250.00, 11.99, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Alprazolam', 'Ansiolítico', 0.50, 12.99, 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Aripiprazol', 'Antipsicótico', 10.00, 14.99, 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Escitalopram', 'Antidepresivo', 20.00, 16.99, 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Metilfenidato', 'Estimulante', 10.00, 17.49, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Acetaminofén', 'Analgésico', 500.00, 5.49, 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Fluconazol', 'Antifúngico', 150.00, 9.99, 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Lisinopril', 'Antihipertensivo', 20.00, 8.79, 220, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Rabeprazol', 'Antiácido', 20.00, 7.79, 180, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tamsulosina', 'Bloqueador Alfa', 0.40, 6.99, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Metformina', 'Antidiabético', 1000.00, 11.49, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Tadalafilo', 'Inhibidor PDE5', 20.00, 14.99, 80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Amoxicilina', 'Antibiótico', 500.00, 9.99, 160, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Atorvastatina', 'Estatina', 40.00, 15.49, 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Metoprolol', 'Beta-bloqueante', 100.00, 11.99, 90, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_09_15_034514_create_medicamento_table', 1),
(11, '2023_09_15_071149_create_cliente_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utf8`
--

CREATE TABLE `utf8` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `utf8`
--

INSERT INTO `utf8` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2023_09_15_034514_create_medicamento_table', 1),
(19, '2023_09_15_071149_create_cliente_table', 1),
(20, '2023_09_15_203709_create_venta_table', 2),
(21, '2023_09_15_221147_create_carrito_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha_venta` datetime NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `total` double(8,2) NOT NULL,
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `fecha_venta`, `metodo_pago`, `total`, `id_cliente`, `created_at`, `updated_at`) VALUES
(1, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 24.99, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '0000-00-00 00:00:00', 'Efectivo', 13.49, 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 17.99, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '0000-00-00 00:00:00', 'Efectivo', 9.79, 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 14.99, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '0000-00-00 00:00:00', 'Efectivo', 7.49, 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 22.99, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '0000-00-00 00:00:00', 'Efectivo', 11.99, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 8.79, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '0000-00-00 00:00:00', 'Efectivo', 16.29, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 23.49, 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '0000-00-00 00:00:00', 'Efectivo', 18.99, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 12.99, 34, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '0000-00-00 00:00:00', 'Efectivo', 9.99, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 15.99, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '0000-00-00 00:00:00', 'Efectivo', 11.79, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 19.49, 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '0000-00-00 00:00:00', 'Efectivo', 8.49, 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 14.29, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '0000-00-00 00:00:00', 'Efectivo', 10.99, 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 25.99, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '0000-00-00 00:00:00', 'Efectivo', 12.49, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 13.99, 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '0000-00-00 00:00:00', 'Efectivo', 7.99, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 18.49, 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '0000-00-00 00:00:00', 'Efectivo', 10.79, 36, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 22.99, 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '0000-00-00 00:00:00', 'Efectivo', 13.49, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 9.99, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '0000-00-00 00:00:00', 'Efectivo', 17.29, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 24.99, 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '0000-00-00 00:00:00', 'Efectivo', 13.49, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 17.99, 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '0000-00-00 00:00:00', 'Efectivo', 9.79, 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 14.99, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '0000-00-00 00:00:00', 'Efectivo', 7.49, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 22.99, 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '0000-00-00 00:00:00', 'Efectivo', 11.99, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 8.79, 38, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '0000-00-00 00:00:00', 'Efectivo', 16.29, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 23.49, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '0000-00-00 00:00:00', 'Efectivo', 18.99, 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 12.99, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '0000-00-00 00:00:00', 'Efectivo', 9.99, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 15.99, 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '0000-00-00 00:00:00', 'Efectivo', 11.79, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 19.49, 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '0000-00-00 00:00:00', 'Efectivo', 8.49, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '0000-00-00 00:00:00', 'Tarjeta de Débito/Crédito', 14.29, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '0000-00-00 00:00:00', 'Efectivo', 10.99, 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD KEY `carrito_id_medicamento_foreign` (`id_medicamento`),
  ADD KEY `carrito_id_venta_foreign` (`id_venta`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `utf8`
--
ALTER TABLE `utf8`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id_cliente_foreign` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `utf8`
--
ALTER TABLE `utf8`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_id_medicamento_foreign` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamento` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carrito_id_venta_foreign` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
