-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-02-2017 a las 17:44:00
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `fundoelm_doblerama`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `idareas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_areas` int(10) unsigned NOT NULL,
  `idestado` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `pvr` decimal(10,2) NOT NULL,
  `pvp` varchar(50) NOT NULL,
  `video` varchar(100) NOT NULL,
  `tags` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `frecuencia` varchar(150) NOT NULL,
  `horario` varchar(150) NOT NULL,
  `horas` varchar(50) NOT NULL,
  PRIMARY KEY (`idareas`),
  KEY `inmuebles_FKIndex4` (`idestado`),
  KEY `productos_FKIndex2` (`idcategoria_areas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`idareas`, `idcategoria_areas`, `idestado`, `title`, `keyword`, `description`, `nombre`, `titulo`, `seo`, `codigo`, `sumilla`, `descripcion`, `pvr`, `pvp`, `video`, `tags`, `orden`, `idprimera_hoja`, `idsw`, `fecha`, `frecuencia`, `horario`, `horas`) VALUES
(2, 2, 0, 'Actividades productivas', 'Actividades productivas', 'Actividades productivas', 'Patrimonio cultural', '', 'Patrimonio-cultural', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 4, 1, 1, '0000-00-00', '', '', ''),
(3, 2, 0, 'Conservación del patrimonio natural', 'Conservación del patrimonio natural', 'Conservación del patrimonio natural', 'Conservación del patrimonio natural', '', 'Conservacion-del-patrimonio-natural', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 3, 1, 1, '0000-00-00', '', '', ''),
(4, 2, 0, 'Infraestructura', 'Infraestructura', 'Infraestructura', 'Infraestructura', '', 'Infraestructura', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 2, 1, 1, '0000-00-00', '', '', ''),
(5, 2, 0, 'Actividades productivas', 'Actividades productivas', 'Actividades productivas', 'Actividades productivas', '', 'Actividades-productivas', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 1, 1, 1, '0000-00-00', '', '', ''),
(9, 3, 0, 'Desarrollo de capacidades', 'Desarrollo de capacidades', 'Desarrollo de capacidades', 'Desarrollo de capacidades', '', 'Desarrollo-de-capacidades', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 1, 1, 1, '0000-00-00', '', '', ''),
(10, 3, 0, 'Asesoría para la gestión de casos', 'Asesoría para la gestión de casos', 'Asesoría para la gestión de casos', 'Asesoría para la gestión de casos', '', 'Asesoria-para-la-gestion-de-casos', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 2, 1, 1, '0000-00-00', '', '', ''),
(11, 3, 0, 'Fortalecimiento institucional', 'Fortalecimiento institucional', 'Fortalecimiento institucional', 'Fortalecimiento institucional', '', 'Fortalecimiento-institucional', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 3, 1, 1, '0000-00-00', '', '', ''),
(12, 3, 0, 'Consultoría', 'Consultoría', 'Consultoría', 'Consultoría', '', 'Consultoria', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500 sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsums.', '0.00', '', '', '', 4, 1, 1, '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_imagenes`
--

CREATE TABLE IF NOT EXISTS `areas_imagenes` (
  `idareas_imagenes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idareas` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_foto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idareas_imagenes`),
  KEY `productos_imagenes_FKIndex1` (`idareas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `areas_imagenes`
--

INSERT INTO `areas_imagenes` (`idareas_imagenes`, `idareas`, `title`, `keyword`, `description`, `nombre`, `seo`, `sumilla`, `descripcion`, `imagen`, `link`, `orden`, `idsw`, `idprimera_foto`) VALUES
(1, 5, '', '', '', '', '', '', '', 'areas_imagenes_5_lUUSI.jpg', '', 1, 0, 1),
(2, 4, '', '', '', '', '', '', '', 'areas_imagenes_4_JoAdL.jpg', '', 1, 0, 1),
(3, 3, '', '', '', '', '', '', '', 'areas_imagenes_3_BS2Jl.jpg', '', 1, 0, 1),
(4, 2, '', '', '', '', '', '', '', 'areas_imagenes_2_EJ1gK.jpg', '', 1, 0, 1),
(5, 12, '', '', '', '', '', '', '', 'areas_imagenes_12_jr29A.jpg', '', 1, 0, 1),
(6, 11, '', '', '', '', '', '', '', 'areas_imagenes_11_XZzKo.jpg', '', 1, 0, 1),
(7, 10, '', '', '', '', '', '', '', 'areas_imagenes_10_NFSC1.jpg', '', 1, 0, 1),
(8, 9, '', '', '', '', '', '', '', 'areas_imagenes_9_zO1JU.jpg', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE IF NOT EXISTS `articulos` (
  `idarticulos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `autor` varchar(150) NOT NULL,
  `sumilla_facebook` text NOT NULL,
  `contador` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idyoutube` varchar(100) NOT NULL,
  PRIMARY KEY (`idarticulos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`idarticulos`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `sumilla`, `descripcion`, `imagen`, `idsw`, `idprimera_hoja`, `fecha`, `autor`, `sumilla_facebook`, `contador`, `padre_id`, `orden`, `idyoutube`) VALUES
(2, 'DEFINING FEES WITHIN A STABLE VALUE FUND 2', 'DEFINING FEES WITHIN A STABLE VALUE FUND 2', 'DEFINING FEES WITHIN A STABLE VALUE FUND 2', 'DEFINING FEES WITHIN A STABLE VALUE FUND 2', 'DEFINING-FEES-WITHIN-A-STABLE-VALUE-FUND-2', '', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities.', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities. Dramatically evisculate holistic innovation rather than client-centric data. Progressively maintain extensive infomediaries via extensible niches. Dramatically disseminate standardized metrics after resource-leveling processes. Objectively pursue diverse catalysts for change for interoperable meta-services.', 'articulos_2_TwPSR.jpg', 1, 1, '2016-04-12', 'Admin', 'jojojojo', 0, 0, 0, 'FwA1OsY4Hw0'),
(3, 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING-FEES-WITHIN-A-STABLE-VALUE-FUND-3', '', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities.', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities. Dramatically evisculate holistic innovation rather than client-centric data. Progressively maintain extensive infomediaries via extensible niches. Dramatically disseminate standardized metrics after resource-leveling processes. Objectively pursue diverse catalysts for change for interoperable meta-services.', 'articulos_3_tdMPw.jpg', 1, 2, '2016-05-07', 'Angel', 'jijijiji', 0, 0, 0, ''),
(4, 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING-FEES-WITHIN-A-STABLE-VALUE-FUND-4', '', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities.&nbsp;', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities. Dramatically evisculate holistic innovation rather than client-centric data. Progressively maintain extensive infomediaries via extensible niches. Dramatically disseminate standardized metrics after resource-leveling processes. Objectively pursue diverse catalysts for change for interoperable meta-services.', 'articulos_4_W9Ytt.jpg', 1, 2, '2016-06-12', 'angel', 'jujujujuju', 0, 0, 0, 'veYcRPQNnkc'),
(5, 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING-FEES-WITHIN-A-STABLE-VALUE-FUND-5', '', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities. Dramatically evisculate holistic innovation rather than client-centric data. Progressively maintain extensive infomediaries via extensible niches. Dramatically disseminate standardized metrics after resource-leveling processes. Objectively pursue diverse catalysts for change for interoperable meta-services.', 'articulos_5_0Iavw.jpg', 1, 2, '2016-06-12', 'angel', 'jujujujuju', 0, 0, 0, 'veYcRPQNnkc'),
(6, 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING FEES WITHIN A STABLE VALUE FUND', 'DEFINING-FEES-WITHIN-A-STABLE-VALUE-FUND-6', '', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities.', 'Dynamically target high-payoff intellectual capital for customized technologies. Objectively integrate emerging core competencies before process-centric communities. Dramatically evisculate holistic innovation rather than client-centric data. Progressively maintain extensive infomediaries via extensible niches. Dramatically disseminate standardized metrics after resource-leveling processes. Objectively pursue diverse catalysts for change for interoperable meta-services.', 'articulos_6_HVATM.jpg', 1, 2, '2016-06-12', 'angel', 'jujujujuju', 0, 0, 0, 'veYcRPQNnkc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos`
--

CREATE TABLE IF NOT EXISTS `atributos` (
  `idatributos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idatributos`),
  KEY `atributos_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `atributos`
--

INSERT INTO `atributos` (`idatributos`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'Tema 01', 'Tema 01', 'Tema 01', 'Tema 01', 'Tema-01', 'Tema 01', 0, 5, 1, '', 'atributos_1_mLCxC.png', 0, 1),
(2, 1, 'Tema 02', 'Tema 02', 'Tema 02', 'Tema 02', 'Tema-02', 'Tema 02', 0, 5, 2, '', 'atributos_2_QNhbJ.png', 0, 1),
(3, 1, 'Tema 03', 'Tema 03', 'Tema 03', 'Tema 03', 'Tema-03', 'Tema 03', 0, 5, 3, '', 'atributos_3_DluI1.png', 0, 1),
(5, 1, 'Cat Tema 01', 'Cat Tema 01', 'Cat Tema 01', 'Cat Tema 01', 'Cat-Tema-01', 'Cat Tema 01', 0, 0, 10, '', 'atributos_5_Pedwc.png', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `idbanners` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_banners` int(10) unsigned NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `link` varchar(100) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `alt` varchar(150) NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idbanners`),
  KEY `banners_FKIndex1` (`idcategoria_banners`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`idbanners`, `idcategoria_banners`, `nombre`, `link`, `sumilla`, `descripcion`, `imagen`, `orden`, `alt`, `idsw`) VALUES
(1, 1, 'BANNER BANNER BANNER 01', '#', '&nbsp;', '', '1.jpg', 1, '', 1),
(2, 1, 'BANNER BANNER BANNER 02', '#', '&nbsp;', '', '2.jpg', 2, '', 1),
(3, 1, 'BANNER BANNER BANNER 03', '#', '&nbsp;', '', '3.jpg', 3, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletin`
--

CREATE TABLE IF NOT EXISTS `boletin` (
  `idboletin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`idboletin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `boletin`
--

INSERT INTO `boletin` (`idboletin`, `email`, `fecha`) VALUES
(1, 'yassercalle@hotmail.com', '2016-05-30 21:08:48'),
(2, 'julio_jc2002@hotmail.com', '2017-02-17 16:52:31'),
(3, 'julio_jc2002@hotmail.com', '2017-02-17 16:52:57'),
(4, 'julioquevedog@gmail.com', '2017-02-17 16:54:04'),
(5, 'julio_jc2002@hotmail.com', '2017-02-22 15:56:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsa`
--

CREATE TABLE IF NOT EXISTS `bolsa` (
  `idbolsa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `empresa` varchar(150) NOT NULL,
  `contacto` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `requerimiento` text NOT NULL,
  `contador` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idbolsa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bolsa`
--

INSERT INTO `bolsa` (`idbolsa`, `titulo`, `empresa`, `contacto`, `email`, `telefono`, `fecha`, `requerimiento`, `contador`, `idsw`, `idprimera_hoja`) VALUES
(1, 'Se necesita Programador Senior', 'Innova Logic SAC', 'Yasser Calle Ramos', 'yassercalle@hotmail.com', '898989898', '2016-03-17', 'Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado.', 0, 1, 0),
(2, 'Se Necesita Ing. de Sistema', 'Serpost', 'William Varlverde', 'wil@serpost.pe', '', '2016-03-23', 'Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado.', 0, 1, 0),
(3, 'Especialista en LINUX', 'Pisopak', 'Jorge Mendez', 'jmendez@hotmail.com', '989898989', '2016-03-24', 'Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado. Se necesita Programador Senior, con m&aacute;s de 5 a&ntilde;os de experiencia comprobado.', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_areas`
--

CREATE TABLE IF NOT EXISTS `categoria_areas` (
  `idcategoria_areas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_areas`),
  KEY `categoria_ubicacion_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `categoria_areas`
--

INSERT INTO `categoria_areas` (`idcategoria_areas`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Áreas de Intervención', 'Areas-de-Intervencion', 'Áreas de Intervención', 0, 0, 1, '<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)</p>', '', 0, 1),
(2, 1, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Gestión Ambiental Privada', 'Gestion-Ambiental-Privada', 'Gestión Ambiental Privada', 0, 1, 1, '<p>&nbsp;Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)</p>', 'categoria_areas_2_HFnZ0.jpg', 1, 1),
(3, 1, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Gestión Ambiental Pública', 'Gestion-Ambiental-Publica', 'Gestión Ambiental Pública', 0, 1, 2, '<p>&nbsp;Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)</p>', 'categoria_areas_3_TuvpV.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_banners`
--

CREATE TABLE IF NOT EXISTS `categoria_banners` (
  `idcategoria_banners` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_banners`),
  KEY `categoria_banners_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Aqui se registraran las conferencias y los seminarios' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `categoria_banners`
--

INSERT INTO `categoria_banners` (`idcategoria_banners`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, '', '', '', 'slide', 'slide', 0, 0, 1, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_clientes`
--

CREATE TABLE IF NOT EXISTS `categoria_clientes` (
  `idcategoria_clientes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_clientes`),
  KEY `categoria_clientes_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_cursos`
--

CREATE TABLE IF NOT EXISTS `categoria_cursos` (
  `idcategoria_cursos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_cursos`),
  KEY `categoria_ubicacion_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `categoria_cursos`
--

INSERT INTO `categoria_cursos` (`idcategoria_cursos`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Categoria Curso 01', 'Categoria-Curso-01', 'Categoria Curso 01', 0, 0, 1, '<p>&nbsp;Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor</p>', 'categoria_cursos_1_Xuhjy.png', 0, 1),
(2, 1, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Categoria Curso 02', 'Categoria-Curso-02', 'Categoria Curso 02', 0, 0, 2, '<p>&nbsp;Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor</p>', 'categoria_cursos_2_zjcVq.png', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_mapas`
--

CREATE TABLE IF NOT EXISTS `categoria_mapas` (
  `idcategoria_mapas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `seo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_mapas`),
  KEY `categoria_mapas_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `categoria_mapas`
--

INSERT INTO `categoria_mapas` (`idcategoria_mapas`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'Lima', 'Lima', 'Lima', 'Lima', 'Lima', 'Lima', 0, 0, 1, '', 'categoria_mapas_1_hecfA.png', 1, 1),
(3, 1, 'Arequipa', 'Arequipa', 'Arequipa', 'Arequipa', 'Arequipa', 'Arequipa', 0, 0, 2, '', '', 0, 1),
(4, 1, 'Trujillo', 'Trujillo', 'Trujillo', 'Trujillo', 'Trujillo', 'Trujillo', 0, 0, 3, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_preguntas`
--

CREATE TABLE IF NOT EXISTS `categoria_preguntas` (
  `idcategoria_preguntas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_preguntas`),
  KEY `categoria_ubicacion_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categoria_preguntas`
--

INSERT INTO `categoria_preguntas` (`idcategoria_preguntas`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'Categoria Pregunta 01', 'Categoria Pregunta 01', 'Categoria Pregunta 01', 'Categoria Pregunta 01', 'Categoria-Pregunta-01', '', 0, 0, 1, '', '', 0, 1),
(3, 1, 'Categoria Pregunta 02', 'Categoria Pregunta 02', 'Categoria Pregunta 02', 'Categoria Pregunta 02', 'Categoria-Pregunta-02', '', 0, 0, 2, '', '', 0, 1),
(4, 1, 'Categoria Pregunta 03', 'Categoria Pregunta 03', 'Categoria Pregunta 03', 'Categoria Pregunta 03', 'Categoria-Pregunta-03', '', 0, 0, 3, '', '', 0, 1),
(5, 1, 'Categoria Pregunta 04', 'Categoria Pregunta 04', 'Categoria Pregunta 04', 'Categoria Pregunta 04', 'Categoria-Pregunta-04', '', 0, 0, 4, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_productos`
--

CREATE TABLE IF NOT EXISTS `categoria_productos` (
  `idcategoria_productos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_productos`),
  KEY `categoria_ubicacion_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `categoria_productos`
--

INSERT INTO `categoria_productos` (`idcategoria_productos`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Purificadores', 'Purificadores', 'Purificadores', 0, 0, 1, '<p>&nbsp;Lorss ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim nunc sed</p>', 'categoria_productos_1_3zvhs.png', 0, 1),
(2, 1, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Velas', 'Velas', 'Velas', 0, 0, 2, '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim nunc sed</p>', 'categoria_productos_2_909zk.png', 0, 1),
(3, 1, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Accesorios', 'Accesorios', 'Accesorios', 0, 0, 3, '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim nunc sed</p>', 'categoria_productos_3_aVYgt.png', 0, 1),
(4, 1, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Respuestos', 'Respuestos', 'Respuestos', 0, 0, 4, '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim nunc sed</p>', 'categoria_productos_4_JWVj6.png', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_servicios`
--

CREATE TABLE IF NOT EXISTS `categoria_servicios` (
  `idcategoria_servicios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `nivel` int(10) unsigned NOT NULL,
  `padre_id` int(10) unsigned NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `sumilla` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcategoria_servicios`),
  KEY `categoria_ubicacion_FKIndex1` (`idtipo_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `categoria_servicios`
--

INSERT INTO `categoria_servicios` (`idcategoria_servicios`, `idtipo_categoria`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `nivel`, `padre_id`, `orden`, `sumilla`, `imagen`, `idprimera_hoja`, `idsw`) VALUES
(1, 1, 'Servicios', 'Servicios', 'Servicios', 'Servicios', 'Servicios', 'Servicios', 0, 0, 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idclientes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_clientes` int(10) unsigned NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `link` varchar(100) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `alt` varchar(150) NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) NOT NULL,
  PRIMARY KEY (`idclientes`),
  KEY `clientes_FKIndex1` (`idcategoria_clientes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idclientes`, `idcategoria_clientes`, `nombre`, `link`, `sumilla`, `descripcion`, `imagen`, `orden`, `alt`, `idsw`, `idprimera_hoja`) VALUES
(1, 0, 'Cliente 01', '', '', '', 'clientes_1_HYiIF.jpg', 100, '', 1, 1),
(2, 0, 'Cliente 02', '', '', '', 'clientes_2_LR014.jpg', 100, '', 1, 1),
(3, 0, 'Cliente 03', '', '', '', 'clientes_3_eiePN.png', 100, '', 1, 1),
(4, 0, 'Cliente 04', '', '', '', 'clientes_4_kvhx9.jpg', 100, '', 1, 1),
(5, 0, 'Cliente 05', '', '', '', 'clientes_5_ojMtG.jpg', 100, '', 1, 1),
(6, 0, 'Cliente 06', '', '', '', 'clientes_6_LRQVD.png', 100, '', 1, 1),
(7, 0, 'Cliente 07', '', '', '', 'clientes_7_iT4Xk.png', 100, '', 1, 1),
(8, 0, 'Cliente 08', '', '', '', 'clientes_8_ZVU92.gif', 100, '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `idcursos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_cursos` int(10) unsigned NOT NULL,
  `idestado` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `pvr` decimal(10,2) NOT NULL,
  `pvp` varchar(50) NOT NULL,
  `video` varchar(100) NOT NULL,
  `tags` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `frecuencia` varchar(150) NOT NULL,
  `horario` varchar(150) NOT NULL,
  `horas` varchar(50) NOT NULL,
  `modalidad` text NOT NULL,
  `duracion` text NOT NULL,
  `programacion` text NOT NULL,
  PRIMARY KEY (`idcursos`),
  KEY `inmuebles_FKIndex4` (`idestado`),
  KEY `productos_FKIndex2` (`idcategoria_cursos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idcursos`, `idcategoria_cursos`, `idestado`, `title`, `keyword`, `description`, `nombre`, `seo`, `codigo`, `sumilla`, `descripcion`, `pvr`, `pvp`, `video`, `tags`, `orden`, `idprimera_hoja`, `idsw`, `fecha`, `frecuencia`, `horario`, `horas`, `modalidad`, `duracion`, `programacion`) VALUES
(1, 1, 0, 'Curso 01', 'Curso 01', 'Curso 01', 'Curso 01', 'Curso-01', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32.<br />\r\n<br />\r\n<br />\r\nAl contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32.&nbsp;', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 1, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(2, 1, 0, 'Curso 02', 'Curso 02', 'Curso 02', 'Curso 02', 'Curso-02', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32.<br />\r\n<br />\r\nAl contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32<br type="_moz" />', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 2, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(3, 1, 0, 'Curso 03', 'Curso 03', 'Curso 03', 'Curso 03', 'Curso-03', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32&nbsp;', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 3, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(4, 1, 0, 'Curso 04', 'Curso 04', 'Curso 04', 'Curso 04', 'Curso-04', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32&nbsp;', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 4, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(5, 1, 0, 'Curso 05', 'Curso 05', 'Curso 05', 'Curso 05', 'Curso-05', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32&nbsp;', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 5, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(6, 1, 0, 'Curso 06', 'Curso 06', 'Curso 06', 'Curso 06', 'Curso-06', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32&nbsp;', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 6, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(7, 1, 0, 'Curso 07', 'Curso 07', 'Curso 07', 'Curso 07', 'Curso-07', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32&nbsp;', '0.00', 'S/. 100.00', '', 'java, curso de java, java programmer', 7, 0, 1, '0000-00-00', 'Solo sábados de', '3:00pm a 8:00pm', '40', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_imagenes`
--

CREATE TABLE IF NOT EXISTS `cursos_imagenes` (
  `idcursos_imagenes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcursos` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_foto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcursos_imagenes`),
  KEY `cursos_imagenes_FKIndex1` (`idcursos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `cursos_imagenes`
--

INSERT INTO `cursos_imagenes` (`idcursos_imagenes`, `idcursos`, `title`, `keyword`, `description`, `nombre`, `seo`, `sumilla`, `descripcion`, `imagen`, `link`, `orden`, `idsw`, `idprimera_foto`) VALUES
(2, 1, '', '', '', '', '', '', '', 'cursos_imagenes_1_eOXJS.jpg', '', 1, 0, 1),
(3, 2, '', '', '', '', '', '', '', 'cursos_imagenes_2_NNUCF.jpg', '', 1, 0, 1),
(4, 3, '', '', '', '', '', '', '', 'cursos_imagenes_3_Ij4rF.jpg', '', 1, 0, 1),
(5, 4, '', '', '', '', '', '', '', 'cursos_imagenes_4_AAWrd.jpg', '', 1, 0, 1),
(6, 5, '', '', '', '', '', '', '', 'cursos_imagenes_5_mYgsF.jpg', '', 1, 0, 1),
(7, 6, '', '', '', '', '', '', '', 'cursos_imagenes_6_HRxIy.jpg', '', 1, 0, 1),
(8, 7, '', '', '', '', '', '', '', 'cursos_imagenes_7_Fvd3F.jpg', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_pdf`
--

CREATE TABLE IF NOT EXISTS `cursos_pdf` (
  `idcursos_pdf` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcursos` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_foto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcursos_pdf`),
  KEY `cursos_imagenes_FKIndex1` (`idcursos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `cursos_pdf`
--

INSERT INTO `cursos_pdf` (`idcursos_pdf`, `idcursos`, `title`, `keyword`, `description`, `nombre`, `seo`, `sumilla`, `descripcion`, `imagen`, `link`, `orden`, `idsw`, `idprimera_foto`) VALUES
(3, 7, '', '', '', '', '', '', '', 'DL_N_1127.pdf', '', 0, 0, 0),
(4, 6, '', '', '', 'Curso 06', '', '', '', 'Curso_06.pdf', '', 1, 0, 0),
(5, 5, '', '', '', 'Curso 05', '', '', '', 'Curso_05.pdf', '', 1, 0, 0),
(6, 4, '', '', '', 'Curso 04', '', '', '', 'Curso_04.pdf', '', 1, 0, 0),
(7, 3, '', '', '', 'Curso 03', '', '', '', 'Curso_03.pdf', '', 1, 0, 0),
(8, 2, '', '', '', 'Curso 02', '', '', '', 'Curso_02.pdf', '', 1, 0, 0),
(9, 1, '', '', '', 'Curso 01', '', '', '', 'Curso_01.pdf', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_word`
--

CREATE TABLE IF NOT EXISTS `cursos_word` (
  `idcursos_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcursos` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_foto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcursos_word`),
  KEY `cursos_imagenes_FKIndex1` (`idcursos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `cursos_word`
--

INSERT INTO `cursos_word` (`idcursos_word`, `idcursos`, `title`, `keyword`, `description`, `nombre`, `seo`, `sumilla`, `descripcion`, `imagen`, `link`, `orden`, `idsw`, `idprimera_foto`) VALUES
(3, 7, '', '', '', 'Curso 07', '', '', '', 'Curso_07.docx', '', 1, 0, 0),
(4, 6, '', '', '', 'Curso 06', '', '', '', 'Curso_06.docx', '', 1, 0, 0),
(5, 5, '', '', '', 'Curso 05', '', '', '', 'Curso_05.docx', '', 1, 0, 0),
(6, 4, '', '', '', 'Curso 04', '', '', '', 'Curso_04.docx', '', 1, 0, 0),
(7, 3, '', '', '', 'Curso 03', '', '', '', 'Curso_03.docx', '', 1, 0, 0),
(8, 2, '', '', '', 'Curso 02', '', '', '', 'Curso_02.docx', '', 1, 0, 0),
(9, 1, '', '', '', 'Curso 01', '', '', '', 'Curso_01.docx', '', 1, 0, 0),
(10, 7, '', '', '', '', '', '', '', 'PRUEBA.docx', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `idemails` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `de` varchar(150) NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `inicio` text NOT NULL,
  `final` text NOT NULL,
  PRIMARY KEY (`idemails`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='el nombre es la descripcion de lo que se trata el email, por ejemplo :  Email al registrarse un cliente' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `idestado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `nombre`) VALUES
(1, 'Ninguno'),
(2, 'EN CONSTRUCCIÓN'),
(3, 'EN PLANOS'),
(4, 'ESTRENO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa`
--

CREATE TABLE IF NOT EXISTS `mapa` (
  `idmapa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `latitud_centro` varchar(100) DEFAULT NULL,
  `longitud_centro` varchar(100) DEFAULT NULL,
  `latitud_punto` varchar(100) DEFAULT NULL,
  `longitud_punto` varchar(100) DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  `tipomapa` varchar(20) DEFAULT NULL,
  `idsw` int(11) DEFAULT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`idmapa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `mapa`
--

INSERT INTO `mapa` (`idmapa`, `nombre`, `latitud_centro`, `longitud_centro`, `latitud_punto`, `longitud_punto`, `zoom`, `tipomapa`, `idsw`, `direccion`, `telefono`, `celular`, `seo`, `keyword`, `description`, `title`) VALUES
(1, 'Sucursal 1', '-12.078584185350424', ' -77.03912628360591', '-12.07873106373308', ' -77.0382036037048', 16, 'roadmap', NULL, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 258-9631', '51 999-999999', 'Sucursal-1', 'Sucursal 1', 'Sucursal 1', 'Sucursal 1'),
(2, 'Sucursal 2', '-12.078584185350424', ' -77.03912628360591', '-12.07873106373308', ' -77.0382036037048', 16, 'roadmap', NULL, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 258-9631', '51 999-999999', 'Sucursal-2', 'Sucursal 2', 'Sucursal 2', 'Sucursal 2'),
(3, 'Sucursal 3', '-12.078584185350424', ' -77.03912628360591', '-12.07873106373308', ' -77.0382036037048', 16, 'roadmap', NULL, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 258-9631', '51 999-999999', 'Sucursal-3', 'Sucursal 3', 'Sucursal 3', 'Sucursal 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapas`
--

CREATE TABLE IF NOT EXISTS `mapas` (
  `idmapas` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria_mapas` int(10) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `latitud_centro` varchar(100) DEFAULT NULL,
  `longitud_centro` varchar(100) DEFAULT NULL,
  `latitud_punto` varchar(100) DEFAULT NULL,
  `longitud_punto` varchar(100) DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  `tipomapa` varchar(20) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `idsw` int(11) DEFAULT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`idmapas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `mapas`
--

INSERT INTO `mapas` (`idmapas`, `idcategoria_mapas`, `nombre`, `latitud_centro`, `longitud_centro`, `latitud_punto`, `longitud_punto`, `zoom`, `tipomapa`, `orden`, `idsw`, `direccion`, `telefono`, `celular`, `seo`, `keyword`, `description`, `title`) VALUES
(1, 1, 'Sucursal 1', '-12.078584185350424', ' -77.03912628360591', '-12.07873106373308', ' -77.0382036037048', 16, 'roadmap', 3, 1, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 258-9631', '51 999-999999', 'Sucursal-1', 'Sucursal 1', 'Sucursal 1', 'Sucursal 1'),
(2, 1, 'Sucursal 2', '-12.078584185350424', ' -77.03912628360591', '-12.07873106373308', ' -77.0382036037048', 16, 'roadmap', 1, 1, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 258-9631', '51 999-999999', 'Sucursal-2', 'Sucursal 2', 'Sucursal 2', 'Sucursal 2'),
(3, 1, 'Sucursal 3', '-12.081081106897221', ' -77.04037082858882', '-12.079654297436306', ' -77.03919065662228', 16, 'roadmap', 1, 1, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 258-9631', '51 999-999999', 'Sucursal-3', 'Sucursal 3', 'Sucursal 3', 'Sucursal 3'),
(5, 3, 'Sucursal Arequipa 01', '-16.408198361524487', '-71.53624189563594', '-16.40834244791462', '-71.53701437183224', NULL, NULL, 1, 1, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 333-3333', '9999-99999', 'Sucursal-Arequipa-01', 'Sucursal Arequipa 01', 'Sucursal Arequipa 01', 'Sucursal Arequipa 01'),
(6, 3, 'Sucursal Arequipa 02', '-16.40601646886276', '-71.53795850940547', '-16.40601646886276', '-71.53795850940547', NULL, NULL, 2, 1, 'Av. Salaverry 3456 - San Isidro - Ofi 345', '01 333-3333', '9999-99999', 'Sucursal-Arequipa-02', 'Sucursal Arequipa 02', 'Sucursal Arequipa 02', 'Sucursal Arequipa 02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE IF NOT EXISTS `mensajes` (
  `idmensajes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `mensaje` text,
  `fecha` datetime NOT NULL,
  `estado` int(10) unsigned NOT NULL,
  `link` varchar(150) NOT NULL,
  PRIMARY KEY (`idmensajes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`idmensajes`, `nombre`, `correo`, `telefono`, `asunto`, `mensaje`, `fecha`, `estado`, `link`) VALUES
(1, 'julio', 'julio@hotmail.com', '9999', 'prueba', '', '2017-02-17 15:37:43', 0, 'http://www.fundoelmilagro.pe/doblerama/contacto'),
(2, 'julio', 'julio@hotmail.com', '9999', 'kkk', 'lolo', '2017-02-17 15:45:22', 0, 'http://www.fundoelmilagro.pe/doblerama/contacto'),
(3, 'julio2', 'julio_jc2002@hotmail', '999999', 'pregunta', 'pregunta', '2017-02-17 15:48:09', 0, 'http://www.fundoelmilagro.pe/doblerama/We-are-Awesome-03/'),
(4, 'Yasser', 'ycalle@solucionesajax.com', '77878787', 'sin asunto pss', 'Este es un mensaje de prueba', '2017-02-22 14:42:18', 0, 'http://www.fundoelmilagro.pe/doblerama/We-are-Awesome-05/'),
(5, 'prueba', 'julio_jc2002@hotmail', '992852798', 'Mensaje de prueba', 'prueba', '2017-02-22 15:08:21', 0, 'http://www.fundoelmilagro.pe/doblerama/Filtro-Classic/'),
(6, 'julio', 'julio_jc2002@hotmail', '992852798', 'Mensaje de julio', 'ededwedwedw', '2017-02-22 15:48:33', 0, 'http://www.fundoelmilagro.pe/doblerama/Filtro-Classic/'),
(7, 'julio quevedo', 'julio_jc2002@hotmail.com', '992852798', 'informe', 'menaje de preba', '2017-02-22 15:52:58', 0, 'http://www.fundoelmilagro.pe/doblerama/contacto'),
(8, 'julio quevedo', 'julio_jc2002@hotmail', '992852798', 'aca', 'ujujujujju', '2017-02-22 15:53:46', 0, 'http://www.fundoelmilagro.pe/doblerama/contacto'),
(9, 'julio', 'julio_jc2002@hotmail', '992852798', 'Mensaje de julio', 'ujujj', '2017-02-22 15:54:09', 0, 'http://www.fundoelmilagro.pe/doblerama/Filtro-Classic/'),
(10, 'Yasser', 'yassercalle@gmail.com', '77878787', 'Mensaje de Yasser', 'Hola como estas', '2017-02-22 21:28:33', 0, 'http://www.fundoelmilagro.pe/doblerama/We-are-Awesome-02/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normas`
--

CREATE TABLE IF NOT EXISTS `normas` (
  `idnormas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `autor` varchar(150) NOT NULL,
  `sumilla_facebook` text NOT NULL,
  `contador` int(10) unsigned NOT NULL,
  `idyoutube` varchar(100) NOT NULL,
  PRIMARY KEY (`idnormas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `normas`
--

INSERT INTO `normas` (`idnormas`, `title`, `keyword`, `description`, `nombre`, `seo`, `titulo`, `sumilla`, `descripcion`, `imagen`, `idsw`, `idprimera_hoja`, `fecha`, `autor`, `sumilla_facebook`, `contador`, `idyoutube`) VALUES
(1, 'Esta es la norma número 01', 'Esta es la norma número 01', 'Esta es la norma número 01', 'Esta es la norma número 01', 'Esta-es-la-norma-numero-01', '', '', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto.', 'normas_1_hBWGJ.pdf', 1, 0, '2016-08-01', '', '', 0, ''),
(2, 'Esta es la norma número 02', 'Esta es la norma número 02', 'Esta es la norma número 02', 'Esta es la norma número 02', 'Esta-es-la-norma-numero-02', '', '', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto.', 'normas_2_EA0bK.pdf', 1, 0, '2016-08-02', '', '', 0, ''),
(3, 'Esta es la norma número 03', 'Esta es la norma número 03', 'Esta es la norma número 03', 'Esta es la norma número 03', 'Esta-es-la-norma-numero-03', '', '', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto.', 'normas_3_aFBEK.pdf', 1, 0, '2016-08-11', '', '', 0, ''),
(4, 'Esta es la norma número 04', 'Esta es la norma número 04', 'Esta es la norma número 04', 'Esta es la norma número 04', 'Esta-es-la-norma-numero-04', '', '', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto.', 'normas_4_Jryh5.pdf', 1, 0, '2016-08-15', '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
  `idparametros` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `llave` varchar(150) NOT NULL,
  `valor` text NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idparametros`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`idparametros`, `llave`, `valor`, `descripcion`, `orden`, `idsw`) VALUES
(1, 'be_elementos_x_pagina', '20', '', 0, 1),
(2, 'telefono_frontis', '(01) 3654598', '', 0, 1),
(3, 'celular_frontis', '999 528 854', '', 0, 1),
(4, 'link_linkeding', 'https://www.linkedin.com/', '', 0, 1),
(5, 'link_youtube', 'http://www.youtube.com/', '', 0, 1),
(6, 'link_facebook', 'https://www.facebook.com/', '', 0, 1),
(7, 'whatsapp', '987400556', '', 0, 0),
(8, 'link_twitter', 'http://www.twitter.com', '', 0, 1),
(9, 'ip_prueba', '', 'Ip de prueba, borrrarlo en producción', 0, 0),
(10, 'correo_contacto', 'ycalle@solucionesajax.com', 'Correo al que llega los mensajes del formulario de contacto', 0, 1),
(11, 'copia_correo_contacto', 'yassercalle@hotmail.com', 'Correo al que llega una copia del formulario de contacto', 0, 1),
(13, 'direccion', ' Av. 28 de julio N 1282, Lima, Perú', '', 0, 1),
(14, 'fe_elementos_x_pagina', '3', '', 0, 1),
(15, 'proyectos_realizados', '2034', '', 0, 0),
(16, 'empleados_trabajando', '65', '', 0, 0),
(17, 'reconocimientos', '35', '', 0, 0),
(20, 'franja_naranja', 'EXPERTOS DE INGENIERÍA EN SEGURIDAD INDUSTRIAL, VIAL, EPP Y ROPA INDUSTRIAL', '', 0, 0),
(21, 'horario', 'L-V 9am a 6pm', '', 0, 1),
(22, 'atencion-D', 'Domingo / Cerrado', '', 0, 0),
(23, 'distrito', 'Miraflores', '', 0, 1),
(24, 'latitud_mapa', '-12.111124', '', 0, 1),
(25, 'longitud_mapa', '-77.041433', '', 0, 1),
(26, 'titulo_bienvenida', 'BIENVENIDOS DOBLE RAMA', '', 0, 1),
(27, 'mensaje_bienvenida', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '', 0, 1),
(28, 'texto_footer', 'Footer ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '', 0, 1),
(29, 'texto_mayor_info', 'PARA MAYOR INFORMACIÓN SOBRE NUESTROS PRODUCTOS', '', 0, 1),
(30, 'titulo_cliente_ini', 'CLIENTES', '', 0, 1),
(31, 'texto_cliente_ini', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam prueba', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `idpreguntas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_preguntas` int(10) unsigned NOT NULL,
  `idestado` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta` text NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idpreguntas`),
  KEY `inmuebles_FKIndex4` (`idestado`),
  KEY `productos_FKIndex2` (`idcategoria_preguntas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpreguntas`, `idcategoria_preguntas`, `idestado`, `title`, `keyword`, `description`, `seo`, `codigo`, `pregunta`, `respuesta`, `orden`, `idprimera_hoja`, `idsw`) VALUES
(4, 4, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(5, 4, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(6, 4, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(7, 3, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(8, 3, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(9, 3, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(10, 1, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(11, 1, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1),
(12, 1, 0, '', '', '', '', '', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt.', 'Lorem ipsum dolor sit amet, ius ut inani option nonumes. Eum ut semper invidunt. Mea in aliquid imperdiet signiferumque. Iuvaret alienum eum eu. Qui ut eius graece, rebum probatus corrumpit mei et.<br />\r\n<br />\r\nVivendo signiferumque vix ad. In quando oratio sea, assum iusto sed ne. Mei an vitae homero patrioque. Usu quod decore soluta at, ea partem inermis pri. Est semper admodum ne, usu id dolore tibique signiferumque, vix et atqui efficiantur.<br />\r\n<br />\r\nUt justo primis scaevola usu. Animal accusam eligendi sed ei. Nam ad legere postulant. Sed an justo libris, fastidii detraxit pri ne. Est ad porro consulatu percipitur, modo qualisque consequuntur te est. Pro ex voluptua appareat, eum eu eruditi scripserit.<br />\r\n<br />\r\nTempor vocibus vel cu, malis appellantur sed no, ne vim aliquid quaerendum. Accusam deseruisse omittantur in vix, eu vix saepe admodum evertitur. Id vis mucius timeam. Cu rationibus definitionem vel, eos delectus intellegat ex, omnes virtute nam at. No sea aeterno albucius conceptam, eu facer alienum mel.', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `primera_hoja`
--

CREATE TABLE IF NOT EXISTS `primera_hoja` (
  `idprimera_hoja` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idprimera_hoja`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `primera_hoja`
--

INSERT INTO `primera_hoja` (`idprimera_hoja`, `nombre`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idproductos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_productos` int(10) unsigned NOT NULL,
  `idestado` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `pvr` decimal(10,2) NOT NULL,
  `pvp` varchar(50) NOT NULL,
  `video` varchar(100) NOT NULL,
  `tags` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `frecuencia` varchar(150) NOT NULL,
  `horario` varchar(150) NOT NULL,
  `horas` varchar(50) NOT NULL,
  PRIMARY KEY (`idproductos`),
  KEY `inmuebles_FKIndex4` (`idestado`),
  KEY `productos_FKIndex2` (`idcategoria_productos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproductos`, `idcategoria_productos`, `idestado`, `title`, `keyword`, `description`, `nombre`, `titulo`, `seo`, `codigo`, `sumilla`, `descripcion`, `pvr`, `pvp`, `video`, `tags`, `orden`, `idprimera_hoja`, `idsw`, `fecha`, `frecuencia`, `horario`, `horas`) VALUES
(1, 1, 0, 'Filtro Classic', 'Filtro Classic', 'Filtro Classic', 'Filtro Classic', '', 'Purificador-Filtro-Classic', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 1, 1, 1, '0000-00-00', '', '', ''),
(2, 1, 0, 'We are Awesome 02', 'We are Awesome 02', 'We are Awesome 02', 'We are Awesome 02', '', 'We-are-Awesome-02', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 2, 1, 1, '0000-00-00', '', '', ''),
(3, 1, 0, 'We are Awesome 03', 'We are Awesome 03', 'We are Awesome 03', 'We are Awesome 03', '', 'We-are-Awesome-03', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 3, 1, 1, '0000-00-00', '', '', ''),
(4, 1, 0, 'We are Awesome 04', 'We are Awesome 04', 'We are Awesome 04', 'We are Awesome 04', '', 'We-are-Awesome-04', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 4, 1, 1, '0000-00-00', '', '', ''),
(5, 1, 0, 'We are Awesome 05', 'We are Awesome 05', 'We are Awesome 05', 'We are Awesome 05', '', 'We-are-Awesome-05', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 5, 1, 1, '0000-00-00', '', '', ''),
(6, 1, 0, 'We are Awesome 06', 'We are Awesome 06', 'We are Awesome 06', 'We are Awesome 06', '', 'We-are-Awesome-06', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 6, 1, 1, '0000-00-00', '', '', ''),
(7, 2, 0, 'We are Awesome 07', 'We are Awesome 07', 'We are Awesome 07', 'We are Awesome 07', '', 'We-are-Awesome-07', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 7, 1, 1, '0000-00-00', '', '', ''),
(8, 2, 0, 'We are Awesome 08', 'We are Awesome 08', 'We are Awesome 08', 'We are Awesome 08', '', 'We-are-Awesome-08', '', 'Lorem ipsum dolor sit consectetur adipisicing elit, sed do eiusmod tempor incididunt .', '<strong>Filtro Classic</strong> <br />\r\nBeber agua nunca ha sido tan agradable.<br />\r\n<br />\r\n<strong>Caracter&iacute;sticas:</strong><br />\r\nToda la tradici&oacute;n de m&aacute;s de 65 a&ntilde;os de la Cer&acirc;mica Stefani est&aacute; en las caracter&iacute;sticas y en la tecnolog&iacute;a  aplicada al filtro Classic.<br />\r\nEquipado con Vela Cer&aacute;mica Esterilizante (Triple Acci&oacute;n), con pared filtrante de material cer&aacute;mico microporoso, que retiene part&iacute;culas s&oacute;lidas e impurezas, carb&oacute;n activado, que reduce el cloro, olores y sabores presentes en el agua, y plata coloidal, eliminando bacterias. Todo eso sin ninguna adici&oacute;n qu&iacute;mica.<br />\r\nAliado al sistema de Flotador, que duplica la capacidad del filtro y evita derrames. <br />\r\n<br />\r\n<strong>Capacidad:</strong><br />\r\n6 Litros y 1 Vela<br />\r\n8 Litros y 2 Velas<br />', '0.00', '', '', '', 8, 1, 1, '0000-00-00', '', '', ''),
(13, 1, 0, 'Purificador xxxx00001', 'Purificador xxxx00001', 'Purificador xxxx00001', 'Purificador xxxx00001', '', 'Purificador-xxxx00001', '', '', '', '0.00', '', '', '', 1, 1, 1, '0000-00-00', '', '', ''),
(14, 1, 0, 'Purificador 000002', 'Purificador 000002', 'Purificador 000002', 'Purificador 000002', '', 'Purificador-000002', '', '', '', '0.00', '', '', '', 1, 1, 1, '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_atributos`
--

CREATE TABLE IF NOT EXISTS `productos_atributos` (
  `idproductos_atributos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproductos` int(10) unsigned NOT NULL,
  `idatributos` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idproductos_atributos`),
  KEY `productos_atributos_FKIndex1` (`idatributos`),
  KEY `productos_atributos_FKIndex2` (`idproductos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `productos_atributos`
--

INSERT INTO `productos_atributos` (`idproductos_atributos`, `idproductos`, `idatributos`) VALUES
(3, 1, 1),
(4, 2, 1),
(5, 3, 1),
(6, 4, 1),
(7, 12, 1),
(8, 13, 1),
(9, 14, 1),
(10, 16, 1),
(11, 5, 2),
(12, 6, 2),
(13, 7, 2),
(14, 8, 2),
(15, 9, 2),
(16, 10, 2),
(17, 11, 2),
(18, 12, 3),
(19, 13, 3),
(20, 14, 3),
(21, 16, 4),
(22, 15, 4),
(24, 17, 2),
(25, 17, 4),
(26, 17, 3),
(27, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_comentarios`
--

CREATE TABLE IF NOT EXISTS `productos_comentarios` (
  `idproductos_comentarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproductos` int(10) unsigned NOT NULL,
  `comentario` text NOT NULL,
  `autor` varchar(150) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idproductos_comentarios`),
  KEY `productos_comentarios_FKIndex1` (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_imagenes`
--

CREATE TABLE IF NOT EXISTS `productos_imagenes` (
  `idproductos_imagenes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idproductos` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_foto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idproductos_imagenes`),
  KEY `productos_imagenes_FKIndex1` (`idproductos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `productos_imagenes`
--

INSERT INTO `productos_imagenes` (`idproductos_imagenes`, `idproductos`, `title`, `keyword`, `description`, `nombre`, `seo`, `sumilla`, `descripcion`, `imagen`, `link`, `orden`, `idsw`, `idprimera_foto`) VALUES
(1, 8, '', '', '', '', '', '', '', 'productos_imagenes_8_0TskM.png', '', 1, 0, 1),
(2, 7, '', '', '', '', '', '', '', 'productos_imagenes_7_MmYBd.png', '', 1, 0, 1),
(3, 6, '', '', '', '', '', '', '', 'productos_imagenes_6_XQLnt.png', '', 1, 0, 1),
(4, 5, '', '', '', '', '', '', '', 'productos_imagenes_5_EdrpS.png', '', 1, 0, 1),
(5, 4, '', '', '', '', '', '', '', 'productos_imagenes_4_CAHnZ.png', '', 1, 0, 1),
(6, 3, '', '', '', '', '', '', '', 'productos_imagenes_3_acTcB.png', '', 1, 0, 1),
(7, 2, '', '', '', '', '', '', '', 'productos_imagenes_2_WyMiy.png', '', 1, 0, 1),
(8, 1, '', '', '', '', '', '', '', 'productos_imagenes_1_DK6tB.png', '', 1, 0, 1),
(9, 2, '', '', '', '', '', '', '', 'productos_imagenes_2_ze30T.png', '', 0, 0, 0),
(10, 1, '', '', '', '', '', '', '', 'productos_imagenes_1_v92hk.png', '', 0, 0, 0),
(11, 1, '', '', '', '', '', '', '', 'productos_imagenes_1_dskKH.png', '', 0, 0, 0),
(12, 3, '', '', '', '', '', '', '', 'productos_imagenes_3_EFh3o.png', '', 0, 0, 0),
(13, 4, '', '', '', '', '', '', '', 'productos_imagenes_4_cbtS4.png', '', 0, 0, 0),
(14, 5, '', '', '', '', '', '', '', 'productos_imagenes_5_Q5tGT.png', '', 0, 0, 0),
(15, 6, '', '', '', '', '', '', '', 'productos_imagenes_6_KlVJg.png', '', 0, 0, 0),
(16, 7, '', '', '', '', '', '', '', 'productos_imagenes_7_g5bEo.png', '', 0, 0, 0),
(17, 8, '', '', '', '', '', '', '', 'productos_imagenes_8_2IWBC.png', '', 0, 0, 0),
(18, 13, '', '', '', '', '', '', '', 'productos_imagenes_13_W3KMD.jpg', '', 0, 0, 2),
(19, 13, '', '', '', '', '', '', '', 'productos_imagenes_13_gFetf.jpg', '', 0, 0, 1),
(20, 14, '', '', '', '', '', '', '', 'productos_imagenes_14_BhU2A.png', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE IF NOT EXISTS `secciones` (
  `idsecciones` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idsecciones`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='La diferencia entre el nombre y el titulo es que al titulo se le puede meter el nombre pero etiquetas html    Sumilla es lo que mostrara en el index y descripcion  lo que se mostrara al ingresar a cada seccion' AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`idsecciones`, `title`, `keyword`, `description`, `nombre`, `titulo`, `seo`, `sumilla`, `descripcion`, `imagen`, `idprimera_hoja`) VALUES
(1, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'inicio', '', '', '', 1),
(2, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'BIENVENIDOS A', 'ADA ALEGRE CONSULTORES', 'inicio-bienvenida', '&nbsp;', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '', 1),
(3, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Nosotros', 'Nosotros', 'nosotros', '&nbsp;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien ante, sagittis at posuere ut, fermentum eget nunc. Proin vestibulum purus purus, eget suscipit eros euismod non. Vivamus vehicula malesuada ante eu bibendum.<br />\r\n<br />\r\n<strong>Misi&oacute;n</strong><br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien ante, sagittis at posuere ut, fermentum eget nunc. Proin vestibulum purus purus, eget suscipit eros euismod non. Vivamus vehicula malesuada ante eu bibendum.<br />\r\n<br type="_moz" />\r\n<strong>Visi&oacute;n</strong><br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien ante, sagittis at posuere ut, fermentum eget nunc. Proin vestibulum purus purus, eget suscipit eros euismod non. Vivamus vehicula malesuada ante eu bibendum.<br />\r\n<br type="_moz" />\r\n<strong>Objetivos</strong><br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien ante, sagittis at posuere ut, fermentum eget nunc. Proin vestibulum purus purus, eget suscipit eros euismod non. Vivamus vehicula malesuada ante eu bibendum.<br />\r\n<br type="_moz" />\r\n<strong>Valores</strong><br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien ante, sagittis at posuere ut, fermentum eget nunc. Proin vestibulum purus purus, eget suscipit eros euismod non. Vivamus vehicula malesuada ante eu bibendum.<br />\r\n<br type="_moz" />', 'secciones_3_87CtV.png', 1),
(6, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Categorías', 'Categorías', 'Categorias', '&nbsp;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien ante, sagittis at posuere ut, fermentum eget nunc. Proin vestibulum purus purus, eget suscipit eros euismod non. Vivamus vehicula malesuada ante eu bibendum. Sed vel lorem orci. Etiam condimentum orci neque, sed ultricies eros sollicitudin ut.', '', 1),
(7, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Preguntas Frecuentes', 'Preguntas Frecuentes', 'preguntas', '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.</p>', '', 1),
(18, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Sucursales', 'Sucursales', 'Sucursales', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years .', '', 1),
(23, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Blogs', 'Blogs', 'Blogs', '', '&nbsp;', '', 1),
(24, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Clientes', 'Clientes', 'Clientes', '', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor.&nbsp;', '', 1),
(25, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Contacto', 'Contáctenos', 'contacto', '', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor&nbsp;', '', 1),
(26, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Mensaje', 'Mensaje', 'mensaje', '', '&nbsp;', '', 1),
(28, 'DOBLE RAMA', 'DOBLE RAMA', 'DOBLE RAMA', 'Envio de Boletín', 'Envio de Boletín', 'gracias', '', '&nbsp;Se registro correctamente su informaci&oacute;n para los env&iacute;os de boletines  informativos', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `idservicios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcategoria_servicios` int(10) unsigned NOT NULL,
  `idestado` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `pvr` decimal(10,2) NOT NULL,
  `pvp` varchar(50) NOT NULL,
  `video` varchar(100) NOT NULL,
  `tags` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `frecuencia` varchar(150) NOT NULL,
  `horario` varchar(150) NOT NULL,
  `horas` varchar(50) NOT NULL,
  PRIMARY KEY (`idservicios`),
  KEY `inmuebles_FKIndex4` (`idestado`),
  KEY `productos_FKIndex2` (`idcategoria_servicios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`idservicios`, `idcategoria_servicios`, `idestado`, `title`, `keyword`, `description`, `nombre`, `titulo`, `seo`, `codigo`, `sumilla`, `descripcion`, `pvr`, `pvp`, `video`, `tags`, `orden`, `idprimera_hoja`, `idsw`, `fecha`, `frecuencia`, `horario`, `horas`) VALUES
(1, 1, 0, 'Asesoría de proyectos', 'Asesoría de proyectos', 'Asesoría de proyectos', 'Asesoría de proyectos', '', 'Asesoria-de-proyectos', '', '&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also', '&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also', '0.00', '', 'https://www.youtube.com/embed/QMgnyKuK7ns', '', 1, 0, 1, '0000-00-00', '', '', ''),
(2, 1, 0, 'Análisis de casos y estrategias legales', 'Análisis de casos y estrategias legales', 'Análisis de casos y estrategias legales', 'Análisis de casos y estrategias legales', '', 'Analisis-de-casos-y-estrategias-legales', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also&nbsp;', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also <br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also&nbsp;', '0.00', '', 'https://www.youtube.com/embed/QMgnyKuK7ns', '', 2, 0, 1, '0000-00-00', '', '', ''),
(3, 1, 0, 'Procedimientos administrativos', 'Procedimientos administrativos', 'Procedimientos administrativos', 'Procedimientos administrativos', '', 'Procedimientos-administrativos', '', '&nbsp;Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 3, 0, 1, '0000-00-00', '', '', ''),
(4, 1, 0, 'Cumplimiento de requisitos legales', 'Cumplimiento de requisitos legales', 'Cumplimiento de requisitos legales', 'Cumplimiento de requisitos legales', '', 'Cumplimiento-de-requisitos-legales', '', 'Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen.', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 4, 0, 1, '0000-00-00', '', '', ''),
(5, 0, 0, 'Estrategias y normas para el sector público', 'Estrategias y normas para el sector público', 'Estrategias y normas para el sector público', 'Estrategias y normas para el sector público', '', 'Estrategias-y-normas-para-el-sector-publico', '', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia.&nbsp;', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 5, 0, 1, '0000-00-00', '', '', ''),
(6, 0, 0, 'Consultoría', 'Consultoría', 'Consultoría', 'Consultoría', '', 'Consultoría', '', 'Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 6, 0, 1, '0000-00-00', '', '', ''),
(7, 0, 0, 'Capacitación', 'Capacitación', 'Capacitación', 'Capacitación', '', 'Capacitacion', '', 'Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 7, 0, 1, '0000-00-00', '', '', ''),
(8, 0, 0, 'Participación ciudadana', 'Participación ciudadana', 'Participación ciudadana', 'Participación ciudadana', '', 'Participacion-ciudadana', '', 'Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 8, 0, 1, '0000-00-00', '', '', ''),
(9, 0, 0, 'Revisión previa de estudios ambientales', 'Revisión previa de estudios ambientales', 'Revisión previa de estudios ambientales', 'Revisión previa de estudios ambientales', '', 'Revision-previa-de-estudios-ambientales', '', 'Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.&nbsp;', '0.00', '', '', '', 9, 0, 1, '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_imagenes`
--

CREATE TABLE IF NOT EXISTS `servicios_imagenes` (
  `idservicios_imagenes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idservicios` int(10) unsigned NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_foto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idservicios_imagenes`),
  KEY `productos_imagenes_FKIndex1` (`idservicios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `servicios_imagenes`
--

INSERT INTO `servicios_imagenes` (`idservicios_imagenes`, `idservicios`, `title`, `keyword`, `description`, `nombre`, `seo`, `sumilla`, `descripcion`, `imagen`, `link`, `orden`, `idsw`, `idprimera_foto`) VALUES
(2, 2, '', '', '', '', '', '', '', 'servicios_imagenes_2_LIucP.jpg', '', 1, 0, 1),
(3, 1, '', '', '', '', '', '', '', 'servicios_imagenes_1_H86s4.jpg', '', 1, 0, 1),
(4, 4, '', '', '', '', '', '', '', 'servicios_imagenes_4_J070k.jpg', '', 1, 0, 1),
(5, 3, '', '', '', '', '', '', '', 'servicios_imagenes_3_JvGna.jpg', '', 1, 0, 1),
(7, 5, '', '', '', '', '', '', '', 'servicios_imagenes_5_zLnGe.jpg', '', 1, 0, 1),
(8, 6, '', '', '', '', '', '', '', 'servicios_imagenes_6_wjJr8.jpg', '', 1, 0, 1),
(9, 7, '', '', '', '', '', '', '', 'servicios_imagenes_7_HiKvV.jpg', '', 1, 0, 1),
(10, 8, '', '', '', '', '', '', '', 'servicios_imagenes_8_wspN4.jpg', '', 1, 0, 1),
(11, 9, '', '', '', '', '', '', '', 'servicios_imagenes_9_z64Rq.jpg', '', 1, 0, 1),
(12, 9, '', '', '', '', '', '', '', 'servicios_imagenes_9_j2QZ7.jpg', '', 0, 0, 0),
(13, 9, '', '', '', '', '', '', '', 'servicios_imagenes_9_7b28R.jpg', '', 0, 0, 0),
(14, 9, '', '', '', '', '', '', '', 'servicios_imagenes_9_kG2IF.jpg', '', 0, 0, 0),
(15, 9, '', '', '', '', '', '', '', 'servicios_imagenes_9_N81dv.jpg', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sw`
--

CREATE TABLE IF NOT EXISTS `sw` (
  `idsw` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idsw`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='1 ES SI  2 ES NO' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sw`
--

INSERT INTO `sw` (`idsw`, `nombre`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sw_promociones`
--

CREATE TABLE IF NOT EXISTS `sw_promociones` (
  `idsw_promociones` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idsw_promociones`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sw_promociones`
--

INSERT INTO `sw_promociones` (`idsw_promociones`, `nombre`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sw_terminos`
--

CREATE TABLE IF NOT EXISTS `sw_terminos` (
  `idsw_terminos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idsw_terminos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sw_terminos`
--

INSERT INTO `sw_terminos` (`idsw_terminos`, `nombre`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE IF NOT EXISTS `testimonios` (
  `idtestimonios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contacto` varchar(150) NOT NULL,
  `cargo` varchar(150) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `empresa` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `youtube` text NOT NULL,
  PRIMARY KEY (`idtestimonios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`idtestimonios`, `contacto`, `cargo`, `dni`, `empresa`, `sumilla`, `descripcion`, `imagen`, `fecha`, `orden`, `idsw`, `idprimera_hoja`, `youtube`) VALUES
(1, 'Dr. Joaquin Puccio sandoval', 'Director Gerente', '07636077', 'Innova Logic', 'Dramatically maintain clicks-and-mortar solutions without functional solutions. Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate.', '', 'testimonios_1_KOm1F.jpg', '2015-12-25', 100, 1, 1, ''),
(2, 'Lic. Rebeca Chavez', 'Gerenta General', '102874444', 'Adiestra', 'Dramatically maintain clicks-and-mortar solutions without functional solutions. Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate.', '', 'testimonios_2_gb5z4.jpg', '2015-10-25', 100, 1, 1, ''),
(3, 'Gerente General: Antonio Perez', 'Programador', '87878787', 'Interbank', 'Dramatically maintain clicks-and-mortar solutions without functional solutions. Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate.', '', 'testimonios_3_z2StK.jpg', '2016-01-26', 100, 1, 1, ''),
(4, 'Grerente Comercial: Sandro Rios', 'Gerenta General', '', 'Frecuencia Primera', 'Dramatically maintain clicks-and-mortar solutions without functional solutions. Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate.', '', 'testimonios_4_CEouT.jpg', '2016-05-25', 100, 1, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_categoria`
--

CREATE TABLE IF NOT EXISTS `tipo_categoria` (
  `idtipo_categoria` int(10) unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='1 ES CATEGORIA  2 ES SECCION';

--
-- Volcado de datos para la tabla `tipo_categoria`
--

INSERT INTO `tipo_categoria` (`idtipo_categoria`, `nombre`) VALUES
(1, 'Categoría'),
(2, 'Sección'),
(3, 'Especial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE IF NOT EXISTS `tipo_usuarios` (
  `idtipo_usuarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo_usuarios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Pueden ser de 2 tipos: Administrador y Operadores' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`idtipo_usuarios`, `nombre`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuarios` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idtipo_usuarios` int(10) unsigned NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idusuarios`),
  KEY `usuarios_FKIndex1` (`idtipo_usuarios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `idtipo_usuarios`, `fullname`, `usuario`, `pass`, `idsw`) VALUES
(1, 1, 'admin', 'admin', '123456', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores`
--

CREATE TABLE IF NOT EXISTS `valores` (
  `idvalores` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `seo` varchar(150) NOT NULL,
  `sumilla` text NOT NULL,
  `orden` int(10) unsigned NOT NULL,
  `idprimera_hoja` int(10) unsigned NOT NULL,
  `idsw` int(10) unsigned NOT NULL,
  `icon` varchar(45) NOT NULL,
  PRIMARY KEY (`idvalores`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `valores`
--

INSERT INTO `valores` (`idvalores`, `title`, `keyword`, `description`, `nombre`, `titulo`, `seo`, `sumilla`, `orden`, `idprimera_hoja`, `idsw`, `icon`) VALUES
(1, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Respeto', 'Respeto', 'Respeto', 'Respetamos a las personas, las instituciones, el marco legal, el ambiente y las condiciones de desarrollo del pa&iacute;s.&nbsp;', 1, 0, 1, 'glyphicon glyphicon-signal'),
(3, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Compromiso', 'Compromiso', 'Compromiso', '&nbsp;Asumimos plenamente los objetivos y las necesidades de nuestros clientes y ponemos nuestra creatividad y conocimiento para desarrollar las m&aacute;s eficientes estrategias.', 2, 0, 1, 'glyphicon glyphicon-ok'),
(4, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Integridad', 'Integridad', 'Integridad', 'Trabajamos con honestidad y credibilidad para construir relaciones de confianza, asesorando a nuestros clientes con un alto sentido de profesionalismo y apego a nuestra &eacute;tica. &nbsp;', 3, 0, 1, 'icon-office'),
(5, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Responsabilidad', 'Responsabilidad', 'Responsabilidad', 'Nuestros servicios se prestan de manera responsable, con la finalidad de lograr los mayores beneficios para nuestros clientes, en una perspectiva de largo plazo y legitimidad p&uacute;blica.&nbsp;', 4, 0, 1, 'icon-select-an-objecto-tool'),
(6, 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Ada Alegre Consultores', 'Innovación', 'Innovación', 'Innovación', 'Nuestro equipo se caracteriza por estar abierto permanentemente al aprendizaje, por trabajar con creatividad y flexibilidad los conocimientos adquiridos y por buscar nuevas f&oacute;rmulas.&nbsp;', 5, 0, 1, 'icon-user-tie');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
