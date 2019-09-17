-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-09-2019 a las 13:04:54
-- Versión del servidor: 5.7.27-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_books`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AccessToken`
--

CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `AccessToken`
--

INSERT INTO `AccessToken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('0S8fT5jDcgG3V7MdN8OFx4vbLtmlqXiQZ9HKc3Av5cZlDXkjLYbL58YWrWTArdxA', 1209600, NULL, '2019-09-10 13:21:35', 2),
('1umHCuyY4YRLTsASwAMXYDMsGoag8zfx61AXAKP8MC3ARO516oXHhQ1MCvg0VliR', 1209600, NULL, '2019-09-10 17:16:26', 5),
('7fCObhtvmo8VeZPCoO1Xo9KdHWpzpqXGw9Trl7QcGme3HeZAfQLc9xoy7HLup5dy', 1209600, NULL, '2019-09-17 15:23:49', 3),
('7s8hjMvfEq1yY0MQJaoN0NwmZGvU3tFlWChlcy41iIXGYh4xa7rWSVczrdnnpw81', 1209600, NULL, '2019-09-16 13:02:17', 3),
('BC2VVoTzmOyOH6j3CkRxspj8Oa58HPYx8byOxvdN5Gu7E3bxnK5FHq4w0UcnT7JK', 1209600, NULL, '2019-09-15 14:02:17', 3),
('BCeBwFXbD2Q7zBtriInk5IaxoH43WgjZGPg3ygTJpJ6ua9rC1F052lSFGiOntldo', 1209600, NULL, '2019-09-09 16:33:36', 1),
('BSNXY5gCb9gltTZKqUdZL6x9RqlJxgT0UmUZlLpWqpssZTvCDIB8pVt6ZGzuaar7', 1209600, NULL, '2019-09-10 13:20:55', 2),
('CaD3RkFL83IMgyk8CYMsnRIvck832rnrEnhlUXCuTkMzrDHuKwNIGkf3aLoiTByw', 1209600, NULL, '2019-09-10 15:07:24', 3),
('k0B2Ez60HqsW5wDLN96d2ZDc00ZLeQfD2hAlFFish1ZALdGmQcSH2drF7RDcxAjS', 1209600, NULL, '2019-09-17 14:13:31', 3),
('n3HN643ldOPvD9vnb1Dd8iAFvUDiUOLqAu8znw2dvjXIzubB6bu9dfDAwGv6A3Vn', 1209600, NULL, '2019-09-16 17:57:04', 3),
('OTvZSqsoxYiNpg6gB6GE879OtMVEINtfHOSFeze4MZiBEniHgEDIpt8zTzU7nx2N', 1209600, NULL, '2019-09-16 12:08:16', 3),
('Pdn1jrKAYDiuI86qS9ggS6wJUedPOlAGvRBaXntUNWnntiPeIISYdbtrhDh0rnEd', 1209600, NULL, '2019-09-10 17:08:31', 2),
('S5JZja9H2jkuPcQrbGt916BO2Utfxzf0kNQGBCGgEenWQarTfpZ4LAs2EGoKDvJz', 1209600, NULL, '2019-09-10 15:08:13', 3),
('vQOKC9s2VybPV9QUUcSLi0PqXmEytX6HBIeLWSc27nFc5mXD7Ezod7iSFxGHVjHl', 1209600, NULL, '2019-09-10 17:16:09', 5),
('w5y2apFCiLqgOhpZmdbQ3ghCT2igAlNsTyWu0OLlvteyUEeevPaRc1eMSZFeSEgJ', 1209600, NULL, '2019-09-16 13:13:44', 3),
('xHiMLpfJpTFED1ajK4EEvD0vyRT84P42RlP4UUvnyIP8a18fVeuTY4TDQZrbAmxh', 1209600, NULL, '2019-09-10 17:06:53', 5),
('XHmNTYnEHdFTxfv7885oA9GqR4WgHZEgASkh1OJX8YKBM90dFjL6CYXK3q2QF3jG', 1209600, NULL, '2019-09-10 17:07:46', 5),
('xtDK8AWpEfn3J26UxzUDPHGlsppy35HfdrBdoZVviFiS2HJMiHVt2hlPD9f2tcIE', 1209600, NULL, '2019-09-10 17:22:20', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ACL`
--

CREATE TABLE `ACL` (
  `id` int(11) NOT NULL,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `titulo` varchar(512) NOT NULL,
  `idioma` varchar(512) NOT NULL,
  `descripcion` varchar(512) NOT NULL,
  `portada` varchar(512) NOT NULL,
  `precio` varchar(512) NOT NULL,
  `link_amazon` varchar(512) NOT NULL,
  `autor` varchar(512) NOT NULL,
  `oferta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `book`
--

INSERT INTO `book` (`id`, `titulo`, `idioma`, `descripcion`, `portada`, `precio`, `link_amazon`, `autor`, `oferta`) VALUES
(3, 'Java Desde Cero', 'Español', 'La sopa de mani es un plato tipico de bolivia que tiene como ingredientes una gran variedad de vegetales y especias de la region ademas de  representar la cultura de nuestro pais', 'https://images-na.ssl-images-amazon.com/images/I/618YQosPQTL.jpg', '36.99', 'https://www.amazon.es/mobile-apps/b?ie=UTF8&node=1661649031', 'Pepito', 1),
(4, 'Android', 'Castellano', 'EL libro de principiantes', 'https://www.kingdomsalvation.org/es/wp-content/uploads/BCA011-3-1.jpg', '100', 'a@azom.vom', 'Shak Robinson', 0),
(5, 'PHP desde cero', 'Castellano', 'Es el libro mas vendido de la historia ', 'https://www.kingdomsalvation.org/es/wp-content/uploads/BCA011-3-1.jpg', '200', 'a@azom.vom', 'Shak Robinson', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Role`
--

CREATE TABLE `Role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RoleMapping`
--

CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `realm`, `username`, `password`, `email`, `emailVerified`, `verificationToken`) VALUES
(1, NULL, 'alex', '$2a$10$hGu03/DAveAKHOvbARPJW.aBq5bz69xTYCZbewftaxOWPJPSYzQZC', 'me@gmail.com', NULL, NULL),
(2, NULL, NULL, '$2a$10$TL1iht5.EL4mJhUR8Vtd7.bVMUL7ZXi5FdKmia1SlveMIUF4hIfdy', 'alex@gmail.com', NULL, NULL),
(3, NULL, 'rex', '$2a$10$bkm47uVlYR7PGtTZ.gLn7.GLpVgt3KCtEqEkZodKGRfJo0im0cMx2', 'rex@gmail.com', NULL, NULL),
(4, NULL, NULL, '$2a$10$Dzqlu1LHkkb/E1P2XwdT/uPufM1cGOZt3O4i1LF6BWwGz29bk9Fe.', 'lola@localhost', NULL, NULL),
(5, NULL, 'mayda', '$2a$10$DwOmczp4HLbWPuzr9lxTQOG3CAVWmuekgfMB3vTcRi4xQ7km8XfTG', 'mayda@localhost', NULL, NULL),
(6, NULL, 'abcd', '$2a$10$SlJMBLbu8VX60sNymkWVU..qZurtak6SCTl75j2x2IuE5cXAI8TKS', 'abcd@localhost', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ACL`
--
ALTER TABLE `ACL`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `RoleMapping`
--
ALTER TABLE `RoleMapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ACL`
--
ALTER TABLE `ACL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `RoleMapping`
--
ALTER TABLE `RoleMapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
