-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2019 a las 01:10:15
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apsystem2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$wrBz.s/NUJ4Czcn3SqLEFOWaYat93jiLj9TSmmpf3yi7xOXxlnuj2', 'Brayam', 'Vera', 'thanossmile.jpg', '2019-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(106, 1, '2019-10-15', '21:14:29', 0, '22:54:55', 1.6666666666667),
(107, 25, '2019-10-15', '22:57:37', 0, '22:58:35', 12.283333333333),
(108, 26, '2019-10-15', '23:02:29', 0, '23:02:57', 11.283333333333),
(110, 26, '2019-10-16', '08:00:00', 1, '09:40:00', 1.6666666666667),
(113, 26, '2019-10-17', '12:10:04', 0, '12:10:15', 1.4166666666667);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(2, '2018-05-02', '1', 1000),
(3, '2018-05-02', '1', 1000),
(4, '2018-07-12', '5', 3500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'SSS', 100),
(5, 'tarde por gil', 500),
(6, 'tarde por q quiero', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `time_in`, `time_out`) VALUES
(5, '08:00:00', '10:45:00'),
(6, '09:40:00', '11:20:00'),
(8, '13:15:00', '14:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(5, '4', 283.33333333333, 3600, '2018-06-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestres`
--

CREATE TABLE `semestres` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `semestres`
--

INSERT INTO `semestres` (`id`, `description`, `rate`) VALUES
(1, 'I Semestre', 'calculo1'),
(2, 'II Semestre', 'algoritmo'),
(5, 'IV Semestre', 'taller 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(1, '1594403047', 'bray', 'vera', 'dahjdbklsljbdh', '1998-11-29', 'dhgsjbjnhj', 'male', 0, 6, '', '0000-00-00'),
(2, '1544403192', 'Jhoel Marcelino', 'CABELLO', 'jhoelito_y_14@gmail.com', '1993-09-08', '936545115', 'Mujer', 2, 1, '', '0000-00-00'),
(3, '1544403147', 'Edward Raúl', 'ESPIRITU', 'chinito_29_2008@hotmail.com', '1992-03-25', '938202768', 'Hombre', 1, 1, '', '0000-00-00'),
(4, '1644403103', 'Jean Donato', 'LIMAYLLA', 'jeanlimaylla@gmail.com', '1991-06-27', '938727844', 'Hombre', 3, 2, '', '0000-00-00'),
(5, '1544403165', 'Piero Alberth', 'LLANA ', 'piero_barza_10@hotmail.com', '1993-06-20', '938350521', 'Hombre', 1, 3, '', '0000-00-00'),
(6, '1694403021', 'Diego Josue', 'ROSALES', 'diego99_17@outlook.com', '1992-06-03', '938755645', 'Hombre', 1, 2, '', '0000-00-00'),
(7, '1544403110', 'Anthony Johan ', 'SANTIAGO', 'anthony_18_001@hotmail.com', '1994-06-07', '936520547', 'Mujer', 1, 4, '', '0000-00-00'),
(8, '1404402017', 'Rosi Mery', 'SOTO ', 'rouz_2497@hotmail.com', '1993-10-23', '936565656', 'Mujer', 3, 4, '', '0000-00-00'),
(9, '1544404019', 'Félix Rosendo', 'TICSE', 'ticsefelix@hotmail.com', '1991-10-13', '936752156', 'Mujer', 4, 4, '', '0000-00-00'),
(10, '1614403040', 'Kalev Edward', 'VALDES', 'valdes_arce_kalev_22@hotmail.com', '1993-05-13', '938300025', 'Hombre', 2, 4, '', '0000-00-00'),
(11, '1694403030', 'Kevin Brayan', 'YANAYACO', 'brayan_geminis_ggwp@hotmail.com', '1992-04-12', '938385567', 'Mujer', 3, 1, '', '0000-00-00'),
(12, '1644403121', 'Elvis Felix', 'ALCANTARA', 'elvis_u_98@hotmail.com', '1994-09-18', '937809812', 'Hombre', 4, 3, '', '0000-00-00'),
(13, '1294403094', 'Fabio Raul', 'ALIAGA', 'lokiro_akratosl@hotmail.es', '1989-06-21', '936520741', 'Hombre', 3, 4, '', '0000-00-00'),
(14, '1644403014', 'Miguel Sergio', 'ALMERCO ', 'angelito081098@gmail.com', '1984-03-04', '938202456', 'Hombre', 1, 3, '', '0000-00-00'),
(15, '1544403020', 'Stiven Jhulinho', 'ANDRES', 'k-Oz14k@hotmail.com', '1994-11-11', '938754554', 'Hombre', 3, 1, '', '0000-00-00'),
(16, '1644403032', 'Luis Enrique ', 'ATENCIO ', 'luis_css3@hotmail.com', '1992-07-24', '936875544', 'Hombre', 1, 1, '', '0000-00-00'),
(17, '1394403130', 'Jherson', 'AVELINO', 'j_avelino16@hotmail.com', '1993-01-25', '935880712', 'Mujer', 2, 2, '', '0000-00-00'),
(18, '1644402044', 'Kevin Brad', 'BASILIO  ', 'niltonquirozsalvador@gmailo.com', '1994-09-14', '936875255', 'Hombre', 4, 1, '', '0000-00-00'),
(19, '1644402035', 'Italo Leonel', 'BERNACHEA', 'ilbm_0000@hotmail.com', '1992-12-02', '936542775', 'Mujer', 3, 3, '', '0000-00-00'),
(20, '1354403118', 'Michael Jhordick', 'BRAVO', 'maikol_tauro@hotmail.com', '1992-03-31', '938773545', 'Hombre', 1, 2, '', '0000-00-00'),
(21, '1614403013', 'Bryam Edwin', 'CALDERON', 'xxbrycxx23@gmail.com', '1994-01-12', '938200022', 'Hombre', 3, 4, '', '0000-00-00'),
(22, '1644403088', 'Duglas Dayth', 'CAPCHA', 'dayth.love.forever.z@gmail.com', '1990-11-14', '936512545', 'Hombre', 3, 4, '', '0000-00-00'),
(23, '1694403040', 'Anderson Aldair', 'CHAGUA', 'aldairzitho98@gmail.com', '1993-07-05', '937785655', 'Hombre', 1, 2, '', '0000-00-00'),
(24, '1694402015', 'Carlos Daniel', 'CHÁVEZ', 'daniel06_99@hotmail.com', '1991-08-20', '938300385', 'Hombre', 3, 3, '', '0000-00-00'),
(25, '1594403048', 'Brayam', 'Cruz Vera', 'Av. proceres s/n', '0000-00-00', '988445337', 'Male', 1, 5, '', '2019-10-15'),
(26, '123', 'Steve ', 'Puente Blanco', 'av.proceres s/n', '0000-00-00', '988445337', 'Male', 1, 5, 'thanossmile.jpg', '2019-10-15'),
(27, '27', 'Kelvin', 'Sullca', 'sgvfabhkjn', '1992-06-24', '988445337', 'Male', 2, 5, '', '2019-10-15'),
(28, 'TIS415863097', 'Pedro', 'Monzon', 'dfvgydubhinjnbuvytc', '1999-12-13', '988445337', 'Male', 2, 5, '', '2019-10-15'),
(29, 'CXO627450381', 'brayam', 'Cruz Vera', 'Av. proceres s/n', '1992-08-22', '988445337', 'Male', 1, 5, '', '2019-10-16'),
(31, ' employee_id', ' firstname', ' lastname', ' address', '0000-00-00', ' contact_info', ' gender', 0, 0, ' photo', '0000-00-00'),
(32, '1444403055', 'Lonnie Daniel ', 'ESPINOZA', 'death.lem@gmail.com', '1994-03-29', '936541235', 'Mujer', 4, 4, '', '0000-00-00'),
(33, '1544403100', 'Rudecindo Yeferson', 'FERNANDEZ', 'nir_yefer@hotmail.com', '1982-09-22', '938204054', 'Hombre', 1, 3, '', '0000-00-00'),
(34, '1654403027', 'Melina Lisseth', 'GARCIA', 'pricila_2_4@hotmail.com', '1995-01-11', '936584541', 'Mujer', 2, 1, '', '0000-00-00'),
(35, '1694403059', 'Jeanpier Alexander', 'HUAMAN', 'jeanpierhuamansantos@gmail.com', '1994-01-21', '934111475', 'Mujer', 4, 2, '', '0000-00-00'),
(36, '1644402026', 'Ezzelin Iuri', 'HUAYNATE', 'ezzihuaynate@gmail.com', '1990-01-18', '935687444', 'Mujer', 1, 1, '', '0000-00-00'),
(37, '1654403018', 'Jordin Jeans ', 'HURTADO', 'jordin_tkmb@hotmail.com', '1990-06-11', '936658711', 'Mujer', 1, 4, '', '0000-00-00'),
(38, '1544403129', 'Precilio  ', 'LUIS', 'preslui_jv_tlv@hotmail.com', '1987-09-11', '938773941', 'Mujer', 2, 1, '', '0000-00-00'),
(39, '1424403049', 'Eder Yojan', 'MEDRANO', 'emedranocha@gmail.com', '1992-04-21', '938305295', 'Mujer', 4, 2, '', '0000-00-00'),
(40, '1644403140', 'Deysy Milagros', 'MENDOZA', 'deysymil12@gmail.com', '1994-07-30', '936524446', 'Hombre', 3, 3, '', '0000-00-00'),
(41, '1544403094', 'Adrian Ronald', 'MONAGO', 'monaguito09x100pre@gmail.com', '1992-01-29', '938305551', 'Hombre', 4, 2, '', '0000-00-00'),
(42, '1624403017', 'Jennry Alexander', 'ÑAUPA', 'lp_361@hotmail.com', '1988-12-21', '938206097', 'Hombre', 1, 3, '', '0000-00-00'),
(43, '1524403050', 'Jhordi bryan', 'OSORIO', 'Jbom_36@hotmail.com', '1994-05-29', '934500644', 'Mujer', 4, 1, '', '0000-00-00'),
(44, '1544403076', 'Jannet Mishell ', 'PEREZ', 'mishelita_p_m@hotmail.com', '1992-01-27', '938305594', 'Hombre', 2, 3, '', '0000-00-00'),
(45, '1544403030', 'Elvis Ivan', 'POMA', 'elvispr275@gmail.com', '1991-12-22', '938300422', 'Mujer', 2, 3, '', '0000-00-00'),
(46, '1624403035', 'Juan Jose', 'RAMOS', '-juanjoseramosca@gmail.com', '1987-07-25', '938350511', 'Hombre', 4, 1, '', '0000-00-00'),
(47, '1494403053', 'Brayan  Edwin ', 'REYES', '-brayan_rt9@hotmail.com', '1988-11-28', '938727589', 'Hombre', 4, 2, '', '0000-00-00'),
(48, '1244403130', 'Luiggi Renzo', 'REYNA', 'Lrenzo_chino@hotmail.com', '1992-11-27', '938208488', 'Mujer', 3, 4, '', '0000-00-00'),
(49, '1644403112', 'Franklin Antolin', 'RICALDI', 'franklin.rc.1992@hotmail.com', '1995-03-25', '938320587', 'Mujer', 1, 3, '', '0000-00-00'),
(50, '1444402020', 'Jhonatan  ', 'ROJAS', 'jhonatan.rojas.1997@gmail.com', '1975-11-10', '938203095', 'Mujer', 2, 1, '', '0000-00-00'),
(51, '1344401011', 'Jose Antonio', 'ROJAS', 'undac@undac.edu.pe', '1994-01-06', '934555455', 'Hombre', 1, 4, '', '0000-00-00'),
(52, '1644401010', 'Geraldine Betzabe', 'ROJAS', 'geral.rojas.2899@gmail.com', '1993-02-11', '938208502', 'Mujer', 4, 3, '', '0000-00-00'),
(53, '1404403014', 'Andrew', 'ROSALES', 'andrewrr78@gmail.com', '1988-06-09', '938205245', 'Mujer', 2, 3, '', '0000-00-00'),
(54, '1244403176', 'Milagros Tatiana', 'SALAZAR', 'taty_14_@hotmail.com', '1993-02-24', '938300374', 'Mujer', 1, 4, '', '0000-00-00'),
(55, '1694402042', 'Dassia Verania', 'SALDIVAR', 'dassiacristobal@gmail.com', '1992-09-10', '938305576', 'Mujer', 3, 3, '', '0000-00-00'),
(56, '1294403183', 'Ross Mar', 'SANCHEZ', 'rossmar_357@hotmail.com', '1994-10-29', '938208614', 'Hombre', 4, 2, '', '0000-00-00'),
(57, '1244403318', 'Eva Luz', 'SERENO', '95.sereno@gmail.com', '1993-10-21', '938770077', 'Hombre', 4, 1, '', '0000-00-00'),
(58, '1614403031', 'Emerson Adrian', 'SOLIS ', 'Emer_97@hotmail.com', '1993-06-13', '938200713', 'Hombre', 2, 4, '', '0000-00-00'),
(59, '1444403037', 'Jhon Kevin ', 'TAQUIRE', 'djjohnkevin07@gmail.com', '1989-04-07', '938270685', 'Hombre', 1, 2, '', '0000-00-00'),
(60, '1424403020', 'Jhosef Anthony', 'TICLAVILCA', 'thony_0807@outlook.com', '1994-11-18', '936021048', 'Hombre', 4, 2, '', '0000-00-00'),
(61, '1494403035', 'Joseph Yaret ', 'TIXE', 'Tixe_CR7_rm@hotmaqil.com', '1995-09-22', '938773933', 'Hombre', 2, 1, '', '0000-00-00'),
(62, '1494403044', 'Gerson William ', 'TRAVEZAÑO', 'aaa@undac.edu.pe', '1993-03-01', '938206766', 'Mujer', 3, 1, '', '0000-00-00'),
(63, '1594403029', 'Christian Juanito', 'TTITO', 'ctp_28_07@hotmail.com', '1994-08-01', '938305223', 'Mujer', 3, 4, '', '0000-00-00'),
(64, '1644403079', 'Alvaro Joao', 'VALENZUELA', 'alvaro.em_dc@hotmail.com', '1994-08-10', '938325565', 'Hombre', 3, 3, '', '0000-00-00'),
(65, '1424403058', 'Rubén Cristhian', 'VERA', 'crisver_95@hotmail.com', '1994-09-22', '936565448', 'Mujer', 2, 2, '', '0000-00-00'),
(66, '1644404011', 'Juan', 'VERASTEGUI', 'jhoor_ac_jk@hotmail.com', '1991-12-22', '938208360', 'Hombre', 2, 2, '', '0000-00-00'),
(67, '1544402023', 'Evelyn Catalina', 'VINGULA', 'vingulararaz@hotmail.com', '1993-11-14', '936549889', 'Hombre', 3, 1, '', '0000-00-00'),
(68, '1344403150', 'Jhonatan Fredy', 'ZARAVIA', 'jhona.sagitario@gmail.com', '1993-10-21', '938208677', 'Mujer', 3, 2, '', '0000-00-00'),
(69, '1444403091', 'Manuel Alex', 'ALVARADO', 'alexevol49@gmail.com', '1991-10-01', '938325558', 'Mujer', 2, 2, '', '0000-00-00'),
(70, '1544402014', 'Blanca Aurora', 'ASTO', 'blank12@outlook.es', '1992-10-31', '938360281', 'Mujer', 4, 2, '', '0000-00-00'),
(71, '1294403147', 'Jhon Cristián', 'BALDEÓN', 'aman.nikim@hotmail.com', '1992-03-23', '938208380', 'Mujer', 1, 1, '', '0000-00-00'),
(72, '1544403058', 'Lilibeth Paola', 'BASILIO', 'NELIEL_KATSUKA@HOTMAIL.COM', '1992-08-05', '938770878', 'Hombre', 4, 3, '', '0000-00-00'),
(73, '1504403026', 'Felix Alberto', 'BUJAICO', 'fexal6123_5ds_bc@hotmail.com', '1985-12-11', '936874511', 'Mujer', 3, 2, '', '0000-00-00'),
(74, '1344403105', 'Miyery Del Rosario', 'CALLUPE', 'miyery.mei@gmail.com', '1991-11-30', '936548745', 'Hombre', 1, 4, '', '0000-00-00'),
(75, '1544403049', 'Joshivin Arturo', 'CARHUAZ ', 'jokae_amor@hotmail.com', '1991-04-27', '938755512', 'Mujer', 2, 2, '', '0000-00-00'),
(76, '1494403026', 'Alexander Raphael ', 'CERRON', 'damiancito_96_22@hotmail.com', '1993-08-10', '938722096', 'Hombre', 4, 3, '', '0000-00-00'),
(77, '1454403016', 'Alexander Jesus', 'CHACON', 'alchaconz10@gmail.com', '1992-05-24', '934512544', 'Hombre', 3, 2, '', '0000-00-00'),
(78, '1524403041', 'Jose Miguel', 'CHAVEZ', 'lobo_na29@hotmail.com', '1991-03-27', '938205011', 'Mujer', 4, 3, '', '0000-00-00'),
(79, '1244403167', 'Katerine Yanela', 'CONDOR', 'katerin_12-95@hotmail.com', '1992-11-13', '938300864', 'Mujer', 2, 4, '', '0000-00-00'),
(80, '1294403209', 'Jhonatan Joel', 'CRISPIN', 'jhonatanjca@hotmail.com', '1994-09-12', '933256844', 'Hombre', 4, 2, '', '0000-00-00'),
(81, '1594403047', 'Brayam Angel', 'CRUZ', 'veraangelbrayam@hotmail.com', '1994-03-16', '936528779', 'Hombre', 4, 2, '', '0000-00-00'),
(82, '1544403138', 'Andres Jonathan', 'ESTRELLA', 'aaa@undac.edu.pe', '1990-09-19', '931021886', 'Hombre', 1, 2, '', '0000-00-00'),
(83, '1514403039', 'Victor Antony', 'HUANCA', 'rex_bar_16@hotmail.com', '1994-02-19', '936201457', 'Hombre', 4, 4, '', '0000-00-00'),
(84, '1344403132', 'Deybis Luis', 'HURTADO', 'deyvis_luis@hotmail.com', '1989-06-04', '938207515', 'Mujer', 4, 1, '', '0000-00-00'),
(85, '1124403176', 'Julio Cesar', 'LAUREANO', 'juliocesarlaureano08@gmail.com', '1993-10-25', '938208558', 'Hombre', 1, 4, '', '0000-00-00'),
(86, '1514403010', 'Jhonatan Edgardo', 'LOPEZ', 'jona9780@hotmail.com', '1991-10-13', '938300496', 'Mujer', 2, 1, '', '0000-00-00'),
(87, '1444403019', 'Herson Denys ', 'MANCILLA', '-xion_a17@hotmail.com', '1992-02-23', '930120545', 'Mujer', 1, 3, '', '0000-00-00'),
(88, '1324401014', 'Jorginho Waldir', 'MARTIN', 'brayan-1995-M-O@hotmail.com', '1993-03-03', '938207095', 'Hombre', 3, 2, '', '0000-00-00'),
(89, '1544403174', 'Stiuart Youssef', 'MAURICIO', 'yos_9830@outlook.com', '1990-10-01', '938300214', 'Mujer', 3, 2, '', '0000-00-00'),
(90, '954403050', 'Pedro Alejandro', 'MONZON', 'elindiscre@hotmail.com', '1992-09-30', '938727244', 'Hombre', 3, 1, '', '0000-00-00'),
(91, '1124403336', 'Susan', 'OSORIO', 'susan_katy@hotmail.com', '1992-07-11', '936565874', 'Hombre', 4, 1, '', '0000-00-00'),
(92, '1314403042', 'Romario Marco', 'ROJAS', 'romariomarco@hotmail.com', '1993-12-26', '938205782', 'Mujer', 1, 4, '', '0000-00-00'),
(93, '1024403075', 'Ricardo Cristian', 'ROSALES', 'crbhyung_leo@hotmail.es', '1992-08-24', '938305551', 'Hombre', 1, 4, '', '0000-00-00'),
(94, '1514403020', 'Flor Violeta', 'SANCHEZ ', 'FLORVIOLETA_LOVE@HOTMAIL.COM', '1988-02-13', '936577225', 'Hombre', 2, 3, '', '0000-00-00'),
(95, '1244403158', 'Brayan Raul', 'VARGAS', 'raulito.30@hotmail.com', '1992-02-04', '938773647', 'Mujer', 2, 3, '', '0000-00-00'),
(96, '1544403011', 'Erick Josmell', 'VICENTE', 'ervicaqu@gmail.com', '1992-09-23', '938208054', 'Mujer', 3, 2, '', '0000-00-00'),
(97, '1444403108', 'Kevin Carlos ', 'AMAYA', 'kev.amayas@gmail.com', '1989-08-10', '938208054', 'Hombre', 3, 2, '', '0000-00-00'),
(98, '1214403059', 'Luis Alberto', 'BALDEON', 'luis_albert93@hotmail.com', '1989-06-25', '930712563', 'Mujer', 3, 3, '', '0000-00-00'),
(99, '1304403030', 'Alessandra Nycol', 'BARDALES', 'ales.nycol@hotmail.com', '1988-10-13', '938204078', 'Mujer', 3, 4, '', '0000-00-00'),
(100, '1344403080', 'Evelyn Jhanina', 'BLAS', 'jesby29@gmail.com', '1990-10-01', '936871045', 'Mujer', 3, 1, '', '0000-00-00'),
(101, '44403061', 'Kaly Zulema', 'CRISTOBAL', '0044403061@undac.edu.pe', '1992-10-26', '938745211', 'Hombre', 3, 2, '', '0000-00-00'),
(102, '1194403019', 'Manuel', 'CRISTOBAL', 'amigo_525@hotmail.com', '1994-04-27', '938300065', 'Hombre', 2, 1, '', '0000-00-00'),
(103, '1244403111', 'Paola Pamela', 'CRUZ', 'launica-55@hotmail.com', '1994-08-18', '938208674', 'Hombre', 1, 1, '', '0000-00-00'),
(104, '1244403078', 'Marcell Boris Johnson', 'DE', 'marce_cp_25@hotmail.com', '1995-02-15', '930214054', 'Hombre', 4, 1, '', '0000-00-00'),
(105, '1244403256', 'Thalia Ruth', 'DE', 'GILIAN_RBD_25@hotmail.com', '1991-07-26', '936521404', 'Hombre', 2, 2, '', '0000-00-00'),
(106, '1444403082', 'Juan Carlos Enrique', 'ECHEVARRIA', 'juancarlosenrique103@gmail.com', '1991-04-29', '938350593', 'Mujer', 4, 2, '', '0000-00-00'),
(107, '1394403121', 'Stiwen Cristhofer', 'ESCOBEDO', 'stiwen_segal@hotmail.com', '1991-07-22', '939962045', 'Mujer', 2, 1, '', '0000-00-00'),
(108, '1294403058', 'Judith Encarnación', 'FERNÁNDEZ', 'chica_prinston_11_32@hotmail.com', '1988-09-01', '938755603', 'Mujer', 1, 1, '', '0000-00-00'),
(109, '1424403011', 'Jesus Jhulinho', 'FRETEL', 'FRODO_21_96@HOTMAIL.COM', '1994-08-18', '938305524', 'Hombre', 1, 1, '', '0000-00-00'),
(110, '1344403123', 'Diana Angela', 'GIRALDO', 'diana_angela18@hotmail.com', '1977-01-06', '936571974', 'Hombre', 3, 4, '', '0000-00-00'),
(111, '1394403050', 'Jhon Alexander', 'GUZMAN', 'el-solitario-19962011@hotmail.com', '1992-05-15', '938300036', 'Mujer', 2, 2, '', '0000-00-00'),
(112, '1444402011', 'Yessenia Eliana', 'HUAMAN', 'yessy160189@gmail.com', '1992-12-28', '936505455', 'Hombre', 3, 4, '', '0000-00-00'),
(113, '1394403023', 'Sharon Beatriz', 'HUAMAN', 'sharonb.huaman@gmail.com', '1985-06-22', '936587454', 'Hombre', 2, 3, '', '0000-00-00'),
(114, '1124403327', 'Frank Julian', 'HUAMÁN', 'julian01_02@hotmail.com', '1992-01-12', '938725845', 'Mujer', 1, 2, '', '0000-00-00'),
(115, '1124401019', 'Jhan Carlos', 'HUINCHO', 'jhancallin@hotmail.com', '1991-03-31', '938205730', 'Hombre', 1, 1, '', '0000-00-00'),
(116, '1414403027', 'Wilhelm Humberto', 'JANAMPA', 'wjc1619t@hotmail.com', '1993-10-23', '936828258', 'Hombre', 3, 4, '', '0000-00-00'),
(117, '1444403117', 'Moises Anibal ', 'LOYOLA', 'loyolaokk@gmail.com', '1985-04-11', '938300045', 'Mujer', 2, 2, '', '0000-00-00'),
(118, '1354403065', 'Meyda Alfonsa', 'MAMANI', 'mayit_025@hotmail.com', '1991-12-22', '936521452', 'Mujer', 1, 3, '', '0000-00-00'),
(119, '1244403247', 'Bush Crisanto', 'NAJERA', 'bush.najera@gmail.com', '1991-10-12', '938725885', 'Hombre', 2, 3, '', '0000-00-00'),
(120, '924403149', 'Junior Ruben', 'NAVARRO', 'taurusforever25@gmail.com', '1993-06-14', '938208303', 'Mujer', 4, 2, '', '0000-00-00'),
(121, '824403119', 'Emer Uzias', 'PABLO', 'loblondo@live.com', '1993-02-09', '938360213', 'Hombre', 1, 3, '', '0000-00-00'),
(122, '1444403028', 'José Luis ', 'PIJO', 'luispijogomez@gmail.com', '1993-03-19', '938320537', 'Hombre', 2, 3, '', '0000-00-00'),
(123, '1354403010', 'Xiomi Leslie', 'POMA', 'pax_15@hotmail.com', '1991-06-07', '938208054', 'Mujer', 2, 4, '', '0000-00-00'),
(124, '1344403114', 'Laura', 'PRADO', 'ARUAL_15@HOTMAIL.ES', '1988-02-02', '930712563', 'Mujer', 2, 3, '', '0000-00-00'),
(125, '1124403354', 'Steve Jesus', 'PUENTE', 'st_doo_pk@hotmail.com', '1994-09-20', '938204078', 'Hombre', 1, 4, '', '0000-00-00'),
(126, '1124403309', 'Waldir Brayan', 'RICAPA', 'waly1405@gmail.com', '1994-09-11', '936871045', 'Hombre', 2, 3, '', '0000-00-00'),
(127, '1244403309', 'Kenyi Jhosep', 'ROBLES', 'kenyirobles@gmail.com', '1990-10-12', '938745211', 'Hombre', 1, 3, '', '0000-00-00'),
(128, '1244403354', 'Waldir Hugo', 'SANTA', 'waldir_al_01@hotmail.com', '1993-03-09', '938300065', 'Hombre', 4, 4, '', '0000-00-00'),
(129, '1124403185', 'Jhoel Frances', 'SARMIENTO', 'potter_06_1994@hotmail.com', '1987-09-27', '938208674', 'Mujer', 3, 2, '', '0000-00-00'),
(130, '1394403041', 'Ricardo Jesus', 'SOLIS', 'ricardo_solis_alme@hotmail.com', '1989-03-18', '930214054', 'Mujer', 4, 4, '', '0000-00-00'),
(131, '1244403096', 'Wilmer Jhon', 'SOTO', 'jhon_92_W@hotmail.com', '1993-04-23', '936521404', 'Mujer', 3, 3, '', '0000-00-00'),
(132, '1124402052', 'Johan Kelvin', 'SULLCA', 'tu_diablo_travieso_666@hotmail.com', '1992-12-20', '938350593', 'Hombre', 1, 3, '', '0000-00-00'),
(133, '1354403047', 'Aldair Franck', 'TRAVEZAÑO', 'aldairf.lopez@gmail.com', '1992-10-22', '939962045', 'Mujer', 3, 4, '', '0000-00-00'),
(134, '1124403210', 'Edward Alfred', 'VALLE', 'cristianxtm@gmail.com', '1991-03-22', '938755603', 'Hombre', 4, 4, '', '0000-00-00'),
(135, '194403062', 'Christian Hobbes', 'CORDOVA', 'hobbeschris@hotmail.com', '1993-09-13', '938305524', 'Hombre', 4, 2, '', '0000-00-00'),
(136, '1324401023', 'Jasmin Leidy', 'ANAYA', 'jasminleidyanayamarcelo10@gmail.com', '1991-12-03', '936571974', 'Hombre', 1, 4, '', '0000-00-00'),
(137, '1124403247', 'Josmell Henry', 'ARTIAGA', 'jhat_4_hn@hotmail.com', '1992-10-05', '938300036', 'Hombre', 3, 4, '', '0000-00-00'),
(138, '1224403016', 'Yeling Daybe', 'ATENCIO', 'devatens@gmail.com', '1987-09-08', '936505455', 'Hombre', 3, 3, '', '0000-00-00'),
(139, '1244403031', 'Elias Samuel', 'BASILIO', 'hi_storymaker7@hotmail.com', '1993-07-27', '936587454', 'Mujer', 1, 4, '', '0000-00-00'),
(140, '924403040', 'Edinson Deivis', 'CARLOS', 'ed_kiddo@hotmail.com', '1990-09-10', '938725845', 'Hombre', 3, 2, '', '0000-00-00'),
(141, '1294403129', 'Frank Giovani', 'CASIMIRO', 'casgio.c@gmail.com', '1993-06-25', '938205730', 'Mujer', 2, 3, '', '0000-00-00'),
(142, '1254403035', 'Luis Enrique', 'CASTILLO', 'luis.enrique.1254@gmail.com', '1995-04-22', '936828258', 'Hombre', 4, 2, '', '0000-00-00'),
(143, '1244403050', 'Sandra Mishel', 'CELIS', 'sandrita.mishel.mina@gmail.com', '1993-03-16', '938300045', 'Hombre', 4, 3, '', '0000-00-00'),
(144, '1244403040', 'Jhony Brahyam', 'CHAMORRO', 'j.chamorro.reinoso@outlook.com', '1993-11-22', '936521452', 'Hombre', 3, 1, '', '0000-00-00'),
(145, '1214403030', 'Rivet Euclides', 'CHÁVEZ', 'locazo_92_ch@hotmail.com', '1992-11-06', '938725885', 'Hombre', 2, 2, '', '0000-00-00'),
(146, '1314403024', 'Julio Cesar', 'CONDOR', 'jc.condor.sistemas@gmail.com', '1992-04-15', '938208303', 'Hombre', 1, 2, '', '0000-00-00'),
(147, '924403194', 'Henry Herzen', 'CURI', 'henry1308ce@hotmail.com', '1991-07-03', '938360213', 'Mujer', 1, 2, '', '0000-00-00'),
(148, '1324403028', 'Yennyfer Reinalda', 'DELGADO', 'acuario_yenn@hotmail.com', '1990-07-03', '938320537', 'Hombre', 4, 3, '', '0000-00-00'),
(149, '1244403381', 'Daniel Elias', 'HUANCA', 'dhuancamacuri@gmail.com', '1991-06-09', '936565874', 'Hombre', 2, 2, '', '0000-00-00'),
(150, '1244403185', 'Lisseth Karina', 'HUAYNATE', 'huaynate.chavez@gmail.com', '1995-05-23', '938205782', 'Hombre', 3, 2, '', '0000-00-00'),
(151, '1314403033', 'Robert', 'MAMANI', 'robert_03_95@hotmail.com', '1992-12-19', '938305551', 'Hombre', 4, 4, '', '0000-00-00'),
(152, '1294403011', 'Cristhian Martín', 'MATIÁS', 'CRISTHIAN.MATIAS@ANGANITECH.com', '1994-05-31', '936577225', 'Hombre', 3, 1, '', '0000-00-00'),
(153, '1294403165', 'Roy Bryan', 'MIRANDA', 'roymirandanolasco@gmail.com', '1991-07-20', '938773647', 'Mujer', 1, 2, '', '0000-00-00'),
(154, '1224403052', 'Héctor Jaime', 'MORALES', 'hectorjaimejjj@gmail.com', '1992-12-19', '938208054', 'Mujer', 4, 2, '', '0000-00-00'),
(155, '1114403056', 'Flavio Luis', 'ORTEGA', 'eldragon_luis_61@hotmail.com', '1990-02-26', '938208054', 'Hombre', 1, 1, '', '0000-00-00'),
(156, '924402043', 'Cristhian Hammerly', 'PICOY', 'cristhian_6_92@hotmail.com', '1994-02-04', '930712563', 'Mujer', 3, 3, '', '0000-00-00'),
(157, '994403037', 'Juan Miguel', 'RIVERA', 'sony_27@hotmail.com', '1990-10-19', '938204078', 'Mujer', 2, 4, '', '0000-00-00'),
(158, '1394403103', 'Enoc Salomón', 'SALAZAR', 'salomon.sos.5@gmail.com', '1990-03-24', '936871045', 'Mujer', 4, 3, '', '0000-00-00'),
(159, '1114403029', 'Yarina Yessica', 'TIXE', 'laluz-2jtm@hotmail.com', '1992-11-21', '938745211', 'Mujer', 4, 2, '', '0000-00-00'),
(160, '1304403011', 'Neil Armstrong', 'VASQUEZ', 'neilvasquezfaustino.95@gmail.com', '1992-12-10', '938300065', 'Mujer', 4, 4, '', '0000-00-00'),
(161, '1244403194', 'Johannes Avílio', 'VICENTE', 'johannes_kalleoscura@hotmail.com', '1990-09-19', '938208674', 'Mujer', 1, 2, '', '0000-00-00'),
(162, '1254403142', 'Bryan Omar', 'YAURI', 'bryaf78@gmail.com', '1990-06-30', '930214054', 'Hombre', 3, 2, '', '0000-00-00'),
(163, '1054403011', 'Laura Verenice', 'ALANIA', 'vere_girls@hotmail.com', '1993-03-22', '936521404', 'Hombre', 2, 1, '', '0000-00-00'),
(164, '1024403182', 'Helen', 'ARIAS', 'mariana_246_4@hotmail.com', '1991-11-08', '938350593', 'Hombre', 2, 4, '', '0000-00-00'),
(165, '1124403292', 'Erika Lizbeth', 'CALLUPE', 'callupebarreto@gmail.com', '1994-03-27', '939962045', 'Mujer', 4, 1, '', '0000-00-00'),
(166, '1244403022', 'Erik Albert', 'CARLOS', 'counter628@hotmail.com', '1986-09-29', '938755603', 'Hombre', 4, 3, '', '0000-00-00'),
(167, '1124403120', 'Joé Johan', 'CHÁVEZ', 'johan_cx@hotmail.com', '1977-10-13', '938300065', 'Mujer', 1, 2, '', '0000-00-00'),
(168, '1094403025', 'Jhann William', 'CHÁVEZ', 'willych_m1@hotmail.com', '1991-06-05', '938208674', 'Hombre', 4, 4, '', '0000-00-00'),
(169, '1024403155', 'Edson Becker', 'COTRINA', 'beckher_5@hotmail.com', '1991-12-14', '930214054', 'Hombre', 3, 1, '', '0000-00-00'),
(170, '1024403084', 'Oswaldo', 'DE', 'xes.w3x@gmail.com', '1991-09-08', '936521404', 'Mujer', 2, 2, '', '0000-00-00'),
(171, '614403058', 'Juan Andres', 'ESPINOZA', 'radical_rsc@hotmail.com', '1994-08-18', '938350593', 'Mujer', 3, 3, '', '0000-00-00'),
(172, '1024403208', 'Katherine Jennyfer', 'ESPINOZA', 'hiferfresh@gmail.com', '1992-09-23', '939962045', 'Mujer', 1, 2, '', '0000-00-00'),
(173, '724402502', 'Diana Carolina', 'FLORES', 'dcfloresmartel@gmail.com', '1993-08-09', '938755603', 'Hombre', 2, 4, '', '0000-00-00'),
(174, '924409026', 'Rosa Pilar', 'GOMEZ', 'Jpilargc@hotmail.com', '1974-09-28', '938305524', 'Mujer', 3, 3, '', '0000-00-00'),
(175, '524402070', 'Jonathan Francisco', 'HILARIO', 'luc9876@hotmail.com', '1977-11-06', '936571974', 'Mujer', 1, 1, '', '0000-00-00'),
(176, '1154403014', 'Elena Lucero', 'JAPA', 'elena_lucero1993@hotmail.com', '1986-02-15', '938300036', 'Mujer', 2, 4, '', '0000-00-00'),
(177, '1054403058', 'Carlos Alberto', 'LEÓN', 'kalinleo@gmail.com', '1992-03-10', '936505455', 'Mujer', 2, 3, '', '0000-00-00'),
(178, '1024403191', 'Carlos Jhonatan', 'LLANOS', 'jhonatan17_10@hotmail.com', '1992-02-15', '936587454', 'Hombre', 1, 1, '', '0000-00-00'),
(179, '1124402016', 'Christian Aldair', 'LUCAS', 'lucas_22_94@hotmail.com', '1993-09-19', '938725845', 'Hombre', 4, 1, '', '0000-00-00'),
(180, '1094403052', 'Paul Jefferson', 'MALPARTIDA', 'poolrojasm@gmail.com', '1993-09-15', '938205730', 'Hombre', 1, 3, '', '0000-00-00'),
(181, '1204403037', 'Hector Luis', 'MEDRANO', 'hector_13_love@hotmail.com', '1994-04-09', '936828258', 'Hombre', 1, 1, '', '0000-00-00'),
(182, '1154403032', 'Anthony Marco', 'MELGAREJO', 'anthonyperu777@hotmail.com', '1992-02-17', '938300045', 'Hombre', 2, 1, '', '0000-00-00'),
(183, '1024409023', 'Ruth Esther', 'MORY', 'ruthemory@gmail.com', '1990-05-11', '936521452', 'Hombre', 2, 4, '', '0000-00-00'),
(184, '1024402022', 'Cristian Brayan', 'MUÑOZ', 'daniel_74_78@hotmail.com', '1991-05-12', '938725885', 'Mujer', 4, 2, '', '0000-00-00'),
(185, '1214403021', 'Tania', 'PALMA', 'amisha_25_94@HOTMAIL.COM', '1979-12-24', '938208303', 'Mujer', 3, 2, '', '0000-00-00'),
(187, '824403226', 'Juan Luis', 'PEREZ', 'j_l_pv2007@hotmail.com', '1992-02-15', '938320537', 'Mujer', 3, 3, '', '0000-00-00'),
(188, '1024403315', 'Katilín Roxana', 'PÉREZ', 'katy_forever92@hotmail.com', '1993-09-06', '938208054', 'Hombre', 2, 1, '', '0000-00-00'),
(189, '1124403130', 'Efrain Jesús', 'PÉREZ', 'jesus_56_love@hotmail.com', '1993-10-16', '930712563', 'Hombre', 2, 1, '', '0000-00-00'),
(190, '1024403146', 'Denis Abel', 'POMA', 'mdenizu14@gmail.com', '1993-11-13', '938204078', 'Mujer', 4, 2, '', '0000-00-00'),
(191, '1194403028', 'Dick Hamsell', 'RAMIREZ', 'dick_darkcloud@hotmail.com', '1994-12-19', '936871045', 'Mujer', 1, 2, '', '0000-00-00'),
(192, '1124403167', 'Liliana Madeleine', 'RAMÓN', 'madyrv_05_03@hotmail.com', '1992-10-25', '938745211', 'Mujer', 4, 4, '', '0000-00-00'),
(193, '924409017', 'Anthony Robilo', 'RAMOS', 'anthonyramos89@hotmail.com', '1991-08-05', '938300065', 'Mujer', 3, 4, '', '0000-00-00'),
(194, '924403078', 'William Gregory Albert', 'SAENZ', 'ALBERT18SB@HOTMAIL.COM', '1993-09-20', '938208674', 'Hombre', 2, 2, '', '0000-00-00'),
(195, '1294403030', 'Jharol', 'SALVADOR', 'horazeror12@hotmail.com', '1990-12-13', '930214054', 'Mujer', 1, 1, '', '0000-00-00'),
(196, '224402044', 'Henrry Leonel', 'SANCHEZ', 'HENRRY_LSH@YAHOO.COM', '1974-12-26', '938755645', 'Hombre', 1, 3, '', '0000-00-00'),
(197, '1054403067', 'Elí Daniel', 'SANCHEZ', 'JERRY324@hotmail.com', '1993-08-27', '936520547', 'Mujer', 1, 4, '', '0000-00-00'),
(198, '1054403049', 'Francisco Armando', 'SANTISTEBAN', 'fran_asm1929@hotmail.com', '1989-02-16', '936565656', 'Hombre', 4, 1, '', '0000-00-00'),
(199, 'dadasd', 'asdasd', 'asdasd', 'asdasd', '2019-10-16', 'asdasd', 'Male', 1, 6, '', '2019-10-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `semestres`
--
ALTER TABLE `semestres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
