-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2023 a las 22:12:55
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
-- Base de datos: `sis_venta5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `NIT`, `telefono`, `direccion`, `ciudad`, `correo`, `usuario_id`, `estado`) VALUES
(1, 'HRA UNIQUIMICA S.A.S.', '890910468 7', '3229848', 'CALLE 80 SUR # 54 -79', 'LA ESTRELLA', 'siesaferecepcion@siesa.com ', 3, 1),
(2, 'MEALS DE COLOMBIA S.A.S', '860008448 2', '6439120', 'CALLE 98 No. 70-90', 'BOGOTA', 'recepcion_fe@cremhelado.com.co', 3, 1),
(3, 'COMPAÑIA COLOMBIANA DE CERAMICA S A S', '860002536 5', '6446500', 'CL 100 8 A 55 TO C P 9', 'BOGOTA', 'rec_fact_cc@corona.com.co', 3, 1),
(4, 'DISENO Y FABRICACION DE MAQUINARIA S.A. S', '800096434-7', '4443327', 'CALLE 49 SUR No 43A- 85', 'ENVIGADO', 'facturacion@dyf.com.co', 3, 1),
(5, 'RAFAEL DEL CASTILLO & CIA. S.A.', '890400372 0', '6625027', 'BRR BOSQUE AV PEDRO VELEZ 20 65', 'CARTAGENA', '890400372@factureinbox.co', 3, 1),
(6, 'C.I TECNOLOGIA ALIMENTARIA S.A.S', '800027374 9', '3183705636', 'CRA 50 GG N°12 SUR 07', 'MEDELLIN', 'recepcionfe@citalsa.com', 3, 1),
(7, 'TAGHLEEF INDUSTRIES', '800048943-1', '3218011970', 'Calle 79A #18-41 Oficina 304', 'CARTAGENA - COLOMBIA', 'astrid.martinez@ti-films.com', 2, 1),
(8, 'AJOVER DARNEL S.A.S', '860013771-7', '5756930062', 'VIA MAMONAL KM 11 PORTERIA 1 ', 'CARTAGENA-COLOMBIA', 'gdelavalle@ajover.com', 6, 1),
(9, 'K-C Internal Only', '8600157533', '6002854', 'Autopista Norte Km.5 Vereda Canavita Tocancipá, Colombia.', 'Tocancipa', 'cesar.c.montano@kcc.com ', 6, 1),
(10, 'TRAMEC S.A.S', '830109078 5', '8966121', 'PARQUE INDUSTRIAL LUTRANSA BODEGA 11 ENTRADA PARCELAS KM2', 'COTA-CUNDINAMARCA', 'auxcompras@tramecltda.com', 2, 1),
(11, 'IOMAS S.A.S', '900639856 6', '3116216979', 'Calle 9 # 1-5 LC VTE LA BADEA', 'Dos quebradas - Risaralda', 'aruiz@iomas.com.co', 2, 1),
(12, 'PLASTICOS Y RESINAS S.A.S', '900175318 2', '3709878', 'Calle 31 # 23-50', 'Barranquilla - Atlantico', 'plasticosyresinas2021@gmail.co', 2, 1),
(13, 'PRODUCTOS ALIMENTICIOS SEVILLA S.A', '811021097 6', '4412300', 'CL 71 # 67-46', 'Medellìn ', 'dfa@faizan.com.co', 2, 1),
(14, 'CORROSION Y PROTECCION S.A.S.', '900426722-3', '4236872', 'CL 32 41 24', 'ITAGUI', 'corroyprot@une.net.co', 7, 1),
(15, 'PERMODA LTDA', '860516806', '2948999', 'CL 17A # 68D-88', 'BOGOTA', 'ericalc@permoda.com.co', 2, 1),
(16, 'SULFOQUIMICA S.A', '890905893 4', '3701170', 'CL 55 #46-85', 'ITAGUI', 'psanchez@sulfoquimica.com', 2, 1),
(17, 'SERVIACEROS DE COLOMBIA S.A.S.', '900489429-1', '3183679442', 'CARRERA 5 ESTE #15-93 MOSQUERA', 'MOSQUERA', 'ingenieria@serviperfiles.com', 7, 1),
(18, 'MVM INDUSTRIES S.A.S', '9008422390', '3052303951', 'CL 75A #64B - 56', 'MEDELLIN ', 'contabilidad@mvmindustries.com', 2, 1),
(19, 'EQUUS COUNTRYSIDE SAS ', '901568203', '3171159', 'KM 13 VIA LAS PALMAS ', 'MEDELLIN ', 'administracion@equus.com.co', 2, 1),
(20, 'CASA SUECA S.A', '890301956 7', '3402751', 'CL 10Bis # 32-74', 'pereira', 'recepcionfe@casasueca.com', 2, 1),
(21, 'COOPERATIVA COLANTA', '890904478 6', '6044455555', 'CL 74 #64 A - 51', 'MEDELLIN', 'andresmh@colanta.com.co', 2, 1),
(22, 'LADRILLERA LA CLAY S.A.S.', '800025379', '6930167', 'MAMONAL CARRETERA A DOLORES POSTE 90', 'CARTAGENA', 'asistentecompras@laclay.com', 7, 1),
(23, 'Tecnopotencia SAS', '900602099-7', '3148285204', 'CALLE 46D SUR No 42D-80', 'CALI', 'gerencia@tecnopotencia.net', 6, 1),
(24, 'TECNOTRANSMISIONES MEDELLIN S.A.S', '811031834 0', '3127937740', 'CRA 43 # 34 SUR - 32', 'MEDELLIN', 'Facturacion@tecnotransmisiones', 2, 1),
(25, 'TEAM FOOD COLOMBIA S.A', '860000006 4', '3442689', 'VIA 40 # 53B-71', 'BARRANQUILLA', 'facturaelectronica@team.co', 2, 1),
(26, 'UMO S.A', '890906197 0', '6040990', 'PAR IND LA BRAZUELA KM 22 AUT MED BOG ', 'GUARNE - COLOMBIA ', 'facturacion@umo.com.co', 2, 1),
(27, 'TODO HERRAJES SOCIEDAD POR ACCIONES SIMPLIFICADA', '830503243 3', '3167554778', 'CL 103 # 46-393', 'COPACABANA', 'gerencia@todoherrajes.com', 2, 1),
(28, 'MAQUINADOS Y MONTAJES S.A.S', '800226501 1', '3153773866', 'CR 16 # 60-14', 'GIRON-SANTANDER ', 'maqymon@gmail.com', 2, 1),
(29, 'EQUIMACO LTDA', '830028457 5', '2519920', 'CRA 77 No 76-27 ', 'BOGOTA', 'facturacion@equimaco.com', 2, 1),
(30, 'ZONA FRANCA ARGOS S.A.S', '900164755-0', '18000527467', 'ZN INDSUTRIAL MAMONAL KM7', 'CARTAGENA', 'lsepulvedaa@argos.com.co', 7, 1),
(31, 'CHAKS PRODUCTOS ALIMENTICIOS S.A.S', '811034102 1 ', '3002036209', 'CL 78D SUR.  47F  86', 'SABANETA ', 'contabilidad@recolquim.com.co', 2, 1),
(32, 'GRANOS Y CEREALES DE COLOMBIA S.A.', '890106814 4 ', '3133975990', 'KM 11 VIA YOPAL AGUAZUL VEREDA EL CHARTE ', 'YOPAL ', 'Recepcionfacturas@granosycerea', 2, 1),
(33, 'CONSORCIO CONSTRUCTOR ATLANTICO STR SAS', '901418104', '2149185', 'CRA 9A # 113-52 Torres Unidas 2 OFI 1503', 'Bogota', 'monica.tabares@cca-epc.com', 7, 1),
(34, 'RODAMIENTOS RETENEDORES Y CADENAS S.A.S', '901337998-0', '3115522663', 'CR 51  38 21 SUR ', 'BOGOTA', 'facturacion@rodamiento.com', 2, 1),
(35, 'COMPANIA INDUSTRIAL DE PRODUCTOS AGROPECUARIOS S.A', '890907163-5', '5200950', 'CR 49A 23 45', 'BELLO ', 'recepcionfacturas@cipa.com.co', 2, 1),
(36, 'MTO SOLUCIONES INDUSTRIALES S.A.S', '900666339-4', '8924684', 'CL 43 5 10 AP 803 A ', 'MANIZALES ', 'ingenieria.mtosoluciones@gmail', 2, 1),
(37, 'IMPORTSOLUCIONES S.A.S', '830139893-1', '3174422786', 'CALLE 102 #70G- 45', 'BOGOTA', 'facturacion@importsoluciones.com', 2, 1),
(38, 'PRODUCTOS ALIMENTICIOS LAS CASERITAS S.A ', '900080654-3', '4440325', 'CR 43A # 61 SUR -75', 'SABANETA', 'compras@lascaseritas.com.co', 2, 1),
(39, 'ENKA DE COLOMBIA S.A ', '890903474-2', '3162027', 'CRA 37 A # 8-43', 'MEDELLIN', 'daniel.muneton@enka.com.co', 2, 1),
(40, 'ETEX COLOMBIA S.A', '890800148-3', '8745641', 'Parque Industrial Juanchito km14', 'Manizales ', 'valeria.toro@etexgroup.com', 7, 1),
(41, 'CEMEX COLOMBIA S.A', '860002523-1', '6039789', 'CRA 65B #18B-02', 'BOGOTA', 'ERIK.MONTANO@EXT.CEMEX.COM', 2, 1),
(42, 'PAPELES Y CARTONES S.A', '890925108-6', '5407200', 'TRONCAL DEL NORDESTE 999-18 ', 'BARBOSA', 'Carlos.gomez@papelsa.com', 2, 1),
(43, 'ENCERT INGENIERIA S.A.S', '901038783-1', '3023449080', 'CR 77 # 45B-67', 'MEDELLIN', 'Larssen.florez@encert.com.co', 2, 1),
(44, 'CORRUFLEX S.A.S', '901296548-2', '3006516969', 'CR 52# 9 SUR - 33', 'MEDELLIN', 'Cimesa2@gmail.com', 2, 1),
(45, 'PRODUCTORA ANDINA DE COLORANTES S.A.S', '800202080-9', '3222800', 'CR 51# 6SUR - 45', 'MEDELLIN ', 'facturacionelectronica@andicol.com.co', 2, 1),
(46, 'CARTON COLOMBIA S.A', '890300406-3', '3100000', 'VIA 40 # 62 - 112', 'BARRANQUILLA ', 'proveedores.cartoncolombia@smurfitkappa.', 2, 1),
(47, 'EDUARDO BOTERO SOTO', '890901321-5', '3226764498', 'CR 42 No 75-63', 'itagui', 'umunoz@boterosoto.com.co', 7, 1),
(48, 'DEXCO ZONA FRANCA S.A.S.', '900338494-1', '4062555', 'VIA HATILLO BARBOSA KM 1 PUNTO 3 ANTES DE LA CABECERA MUNICIPAL', 'BARBOSA', 'facturacionelectronicamdf@dex.co', 7, 1),
(49, 'QUIMICA BASICA SAS', '800015603-9', '3176585078', 'LA VIRGINIA Km 2 VIA BALBOA INGENIO RISARALDA', 'BALBOA, RISARALDA', 'facturaelectronica@quimicabasica.com', 7, 1),
(50, 'NAVAR ASOCIADOS S.A.S', '9004510103', '6051266', 'CR 43 9 SUR 195 OF 83', 'MEDELLIN', 'compras@damasa.com.co', 7, 1),
(51, 'PRODUCTOS ALIMENTICIOS DORIA S.A.S', '860017055-1', '8293600', 'Km5,6 TRONCAL DE OCCIDENTE ', 'BOGOTA MOSQUERA', 'facturacion@pastasdoria.com', 2, 1),
(52, 'SOLPAK SOLUCIONES Y EMPAQUES S.A', '811022489-4', '4486292', 'CL 98 SUR 48-225 VARIANTE CALDAS KM 3', 'CALDAS ', 'siesaferecepcion@siesa.com ', 2, 1),
(53, 'LUBRIRETENES Y RODAMIENTOS S.A.S', '800215562-3', '7440007', 'CR 27 # 13-30', 'BOGOTA', 'daniel.romero@ftcia.com', 2, 1),
(54, 'JETROSOFT INTERNATIONAL LTDA', '900140417-2', '3165354888', 'CALLE 213 # 114-10', 'BOGOTA', 'carlosi@jetrosoft.com.co', 2, 1),
(55, 'ALICO S.A', '890928257-9', '3600030', 'CLL 10 SUR # 50FF-127', 'MEDELLIN', 'gestiondocumental@alico-sa.com ', 2, 1),
(56, 'INDUSTRIAS DE ALIMENTOS ZENU S.A.S', '811035741-2', '4705222', 'CRA 64C # 104-03', 'MEDELLIN ', 'MZENU@ZENU.COM.CO', 2, 1),
(57, 'DIME DISEÑOS METALICOS SAS', '900495207-6', '3128604629', 'CL 73 72A B 47 IN 133', 'MEDELLIN', 'contabilidad@dimedm.com', 7, 1),
(58, 'TERNIUM DEL ATLANTICO S.A.S', '901131909-1', '4447799', 'RUTA 25 KM PR48+600 PALMAR DE VERELA ', 'ATLANTICO ', 'facturas.tatlantico@axesefactura.com', 2, 1),
(59, 'DITAR S.A ', '802005820-5', '3319001', 'KM 7 VIA JUAN MINA FT EDS TERPEL ', 'BARRANQUILLA ', '802005820@factureinbox.co', 2, 1),
(60, 'COLOMBIANA KIMBERLY COLPAPEL S.A.S', '860015753-3', '3117643280', 'CALLE 20# 21-602 INT 101', 'BARBOSA ', 'Aicardo.Diaz@kcc.com', 2, 1),
(61, 'CONTROL Y AUTOMATIZACION INDUSTRIAL CONTROLMATICA S.A.S', '900606828-8', '4488531', 'CALLE 73 # 72AB-85 BODEGA 10A', 'MEDELLIN', 'facturacion@controlmatica.com.co', 2, 1),
(62, 'HERMANOS TECNIPALMA INGENIERIA SAS', '900438414-1', '6086561085', 'CR 23 5 95 BRR PABLO EMILIO', 'ACACIAS META', 'hnostecnipalma@tecnipalma.net', 7, 1),
(63, 'ELECTRICIDAD Y PROYECTOS MJ S.A.S', '901101408-3', '3128867862', 'CALLE 52 # 1D - 32 ', 'CALI ', 'gerencia@eypmjsas.net', 2, 1),
(64, 'TECNAS S.A', '800011002-4', '3134775565', 'CARRERA 50G # 12 SUR - 29', 'MEDELLIN ', 'mantenimiento@tecnas.com.co', 2, 1),
(65, 'PPG INDUSTRIES COLOMBIA LTDA', '900007650-4', '4448452', 'ITAGUI', 'CALLE 51 # 40 - 13 ', 'recepcionfacturasppg@facturaenlinea.co', 2, 1),
(66, 'SOS SOLUCION INDUSTRIAL SAS', '900904532-1', '3146081983', 'TCC PPAL CALI ', 'CALI', 'comercial@solind.com.co', 2, 1),
(67, 'ARIS MINING SEGOVIA', '900306309', '3123354206', 'AV 10 # 52-80 BELLO - PARQUE EMPRESARIAL NORTIKO - BODEGA #6', 'BELLO', 'facturas.segovia@aris-mining.co', 7, 1),
(68, 'CORTAMOS Y DOBLAMOS SA', '900054514 - 0', '3043889687', 'CARRERA 48 No 78 C SUR 68', 'SABANETA', '_', 7, 1),
(69, 'GRUPO AGROPACK S.A.S', '901334974-0', '6074070', 'CALLE 33 # 41 - 66 ', 'ITAGUI ', 'contabilidad@grupoagropack.com', 2, 1),
(70, 'LUBRICARTE S.A.S', '900885180-1', '3177953369', 'DG 58 # 42 - 29', 'BARRANCABERMEJA - LAS GRANJAS ', 'lubricarte.elartedelubricar@gmail.com', 2, 1),
(71, 'PAPELES NACIONALES S.A', '891400378-8', '2092000', 'PEAJE LA MARINA VIA PEREIRA CARTAGO ', 'PEREIRA ', 'gestion.factura@papelesnacionales.com', 2, 1),
(72, 'DISEÑO Y SUMINISTRO DE MAQUINARIA S.A.S', '900526889-3', '4486644', 'CALLE 79 # 52D - 141', 'ITAGUI', 'dsmaq@une.net.co', 1, 1),
(73, 'MANTOS ANDINOS S.A.S', '900486772-8', '3136596919', 'KM 1,5 VIA BRICEÑO # ZON FRANCA ZIPAQUIRA ', 'ZIPAQUIRA', 'facturacion@mantosandinos.com', 2, 1),
(74, 'ODA GELATO SAS', '901275271-8', '3164488184', 'INTEX ZONA BG 10 ', 'COTA-CUNDINAMARCA', 'contador@odagelato.com.co', 2, 1),
(75, 'DISMET SAS', '800229512', '7494000', 'transversal 42 # 6-16', 'BOGOTA', 'fe@dismet.com', 2, 1),
(76, 'PRECOCIDOS DEL ORIENTE SAS', '890205091-0', '3152527153', 'CR 35A # 48-112 ', 'BUCARAMANGA ', 'contador@prococidosdeloriente.com', 2, 1),
(77, 'PRODUCTOS FAMILIA CAJICA SAS ', '900239001-1', '5938484', 'KIM 7,5 VIA CAJICA ZIPAQUIRA ', 'CAJICA CUNDINAMARCA ', 'facturacajicacol@grupofamilia.com', 2, 1),
(78, 'VARIMOTOR LTDA', '811010612-2', '3215558', 'CRA 35 # 16A SUR - 115', 'ENVIGADO', 'nelsongamboa@yahoo.com', 2, 1),
(79, 'PROINTEX SAS ', '800074839-1', '8663323', 'CR 30 # 36 - 11', 'DON MATIAS - ANTIOQUIA', 'info@lavanderiaprointex.com', 2, 1),
(80, 'LABORATORIOS FUNAT SAS', '811000340-1', '3186146247', 'CR 47F # 79SUR-77', 'SABANETA', 'axi.tesoreroa@funat.com.co', 2, 1),
(81, 'BIBIANA MARIA SARMIENTO ACOSTA', '33817874-8', '3113356151', 'CLL 18 # 22 - 22', 'QUINDIO ', 'urgenciasindustriales@outlook.com', 2, 1),
(82, 'PROYECTOS Y METALURGICAS SAS', '901089136-4', '3108285152', 'CRA 50 # 98 A SUR - 350 ', 'LA ESTRELLA ', 'proyfacturas@hotmail.com', 2, 1),
(83, 'ELECTRICAS DE MEDELLIN - COMERCIAL S.A.S', '9004827579', '4446500', 'CR 52 10 131', 'MEDELLIN', 'gerencia@edemco.co', 3, 1),
(84, 'CLARA EUGENIA VELEZ ARANGO', '23027884-8', '4447364', 'CRA 68 # 48D - 16', 'MEDELLIN ', 'tesoreria@soha.com.co', 2, 1),
(85, 'INVERSIONES EL VERGEL LIMITADA EN REORGANIZACION', '822000944-1', '3123775631', 'CL 19 SUR # 46 - 47 BRR CATUMARE ', 'VILLAVICENCIO ', 'facturacion@maderasvergel.com', 2, 1),
(86, 'PLATESA SAS', '900527588-6', '3168758938', 'CLL 110 # 32 - 120 P1 LC9', 'LA ESTRELLA ', 'tesoreria@platesa.co', 2, 1),
(87, 'CARIBEAN ECO SOAP UIBS SAS', '900324176-3', '4328122', 'VIA ALTERNA AL PUERTO RUTA DEL SOL KM 16 ZFA', 'SANTA MARTA ', 'facturas@c-ecosoaps.com', 2, 1),
(88, 'ELECTRICAS DE MEDELLIN COMERCIAL SAS', '900482757-9', '4446500', 'CR 52 # 10 - 131 ', 'MEDELLIN', 'gerencia@edemco.co', 2, 1),
(89, 'HITACHI ENERGY COLOMBIA LTDA', '860003563-9', '3229722819', 'ZONA INDUSTRIAL LA POPA (DOS QUEBRADAS) CALLE 16 No.15 - 124', 'DOS QUEBRADAS', 'luisa.zuluaga-diaz@hitachienergy.com', 7, 1),
(90, 'AUTOMATIC SOLUTIONS SAS', '900144128-7', '2915513', 'CARRERA 35 # 16 - 620 INT 1901', 'MEDELLIN', 'rec_fact@automaticsolutions.co', 2, 1),
(91, 'CARTONES AMERICA S.A', '860026759-4', '6818888', 'CALLE 3 # 7 - 86 (EL CIRUELO)', 'CUNDINAMARCA', 'documentoselectronicos.came@cartonesamer', 2, 1),
(92, 'BENAR Y CIA SAS', '890311323-8', '3692264', 'CR46 # 62 - 20 BARRIO BOSTON ', 'BARRANQUILLA', 'ventas.barranquilla@benar.com.co', 2, 1),
(93, 'COMPAÑÍA DE INGENIEROS MECÁNICOS Y CIVILES CODIMEC', '890932579', '3746888', 'Autopista Norte, Unidad bodegas San Francisco de Asis - Bodega #112, Vereda el Paraíso Girardota', 'Girardota Antioquia', 'compras@codimec.com', 7, 1),
(94, 'COLCERAMICA S.A.', '860002536-5', '4547700', 'CRA 18A # 04A -004 GIRARDOTA ZONA INDUSTRIAL', 'GIRARDOTA', 'fdelvalle@corona.com.co', 7, 1),
(95, 'INGENIERIA EFICIENTE DEL AIRE SAS', '900729224-8', '4482782', 'CALLE 35 # 66B - 66', 'ITAGUI DITAIRES ', 'acontable@efiaire.co', 2, 1),
(96, 'GAVASSA Y CIA LTDA', '890200408-9', '6711459', 'CALLE 20 # 12 - 50', 'BUCARAMANGA', 'Felectronicaproveedores@gavassa.com', 2, 1),
(97, 'PRODENVASES SAS', '860013809-8', '4708004', 'CARRERA 64C # 96 - 26 ', 'MEDELLIN ', 'facturas.recepcion@prodenvases.com.co', 2, 1),
(98, 'CONJUNTO RESIDENCIAL LA SIERRA ', '900887101-7', '3203150086', 'CL 4 # 1A - 126 ESTE ', 'CUNDINAMARCA ', 'conjuntolasierramadridph@gmail.com', 2, 1),
(99, 'PROCESADORA DE LECHE S.A', '890903711-3', '4412121', 'DG 182 # 20 - 84', 'BOGOTA', 'juan.molina@co.lactalis.com', 2, 1),
(100, 'JAIME DE JESUS ESPINOSA AGUDELO', '98621212-6', '3103810968', 'CR 66 # 93 - 96', 'MEDELLIN ', 'jdjespinosa40@gmail.com', 2, 1),
(101, 'SP INGENIEROS SAS', '890032424-8', '3417600', 'CRA 74 # 28 - 29', 'MEDELLIN', 'facturacionelectronica@sp.com.co', 2, 1),
(102, 'BATERIAS WILLARD SA', '800022558-4', '3531818', 'PARQUE INDUSTRIAL MALAMBO MANZANA 2 LOTE 9', 'MEDELLIN', '800022558@facturainbox.co', 2, 1),
(103, 'COMERCIALIZADORA RUBBER BILLAR SAS', '901421869-8', '3006163899', 'CLLE 44 # 60 - 08 ', 'MEDELLIN ', 'contacto@rubberbillar.com', 3, 1),
(104, 'DIFSEL SAS', '900644059-2', '3166215880', 'CALLE 39 # 10 - 03 OFICINA 3 ', 'CALI ', 'facturacion@difsel.com', 2, 1),
(105, 'SEBASTIAN ORTIZ RODRIGUEZ', '1040326036', '3017460971', 'CALLE 44B #49 - 29 AV EL LICEO ', 'SAN PEDRO DE LOS MILAGROS ', 'sebastianortizrodriguez27@gmail.com', 2, 1),
(106, 'ANDINA DE TRANSMISIONES SAS ', '900923100-4', '3157995712', 'CRA 70C # 49 - 77 BARRIO NORMANDIA', 'BOGOTA', 'facturacionelectronica@andinadetransmisi', 2, 1),
(107, 'CRANES PUENTES GRUAS Y SUMINISTROS SAS', '901557556-2', '3155479216', 'CR 7 R 72 - 63', 'CALI - VALLE DEL CAUCA', 'cranes.grua@gmail.com', 7, 1),
(108, 'PAPAN SAS', '901042237-7', '3137386443', 'CR 54 79A SUR 40 BG 136', 'LA ESTRELLA', 'contabilidad@papan.com.co', 7, 1),
(109, 'DEXCO COLOMBIA S.A.', '800047031', '34841000', 'CL 16 # 55 -129 CC DE MODA PISO 5', 'MEDELLIN', 'facturacionelectronica@dex.co', 7, 1),
(110, 'TRANSMISIONES INDUSTRIALES COLOMBIA S.A.S', '900042180-2', '4448352', 'CL78D SUR 47F 50', 'SABANETA', 'facturaelectronica@traincol.com.co', 7, 1),
(111, 'L.A.G COMPAÑIA INDUSTRIAL SAS', '901529766-3', '3107109614', 'CR 59 D # 41D SUR - 05', 'MEDELLIN', 'lagfacturacione@gmail.com', 2, 1),
(112, 'NOVASUIN SAS ', '900749094-2', '3176446696', 'NOVASUIN CARTAGENA (PARQUIAMERICA BODEGA H3, VIA MAMONAL KM 6)', 'CARTAGENA', 'facturas@novasuin.com', 2, 1),
(113, 'INGENIERIA AUTOMATIZACION E INSTRUMENTACION SAS', '900547317-2', '3114496567', 'CALLE 22 # 11 - 29 BARRIO GIRARDOT', 'BUCARAMANGA ', 'contabilidad@iai-ingenieros.com', 2, 1),
(114, 'MENSHEN COLOMBIA SAS', '901506103-1', '6959559', 'CR 35 #14 - 40 ', 'CALI', '901506103@factureinbox.co', 2, 1),
(115, 'SERIES RODANTES IMPORT SAS', '900458240-2', '3105724892', 'CALLE63C #70C - 20', 'BOGOTA', 'seriesrodantesimport@gmail.com', 2, 1),
(116, 'FIBERGLASS COLOMBIA SA', '860009008-1', '6761963', 'CL 3A # 3 - 49 ESTE MOSQUERA ', 'BOGOTA ', '860009008@FACTUREINBOX.CO', 2, 1),
(117, 'VITELCO DE COLOMBIA SAS', '900155761-7', '3183378439', 'CL 46 78-335 VIA MACHADO', 'COPACABANA', 'compras@vitelco.com.co', 2, 1),
(118, 'KONTROLAR SOLUCIONES SAS', '900987425', '3689181', 'CALLE 72 SUR # 46D - 32 OFI 201', 'SABANETA ', 'facturaelectronica@kontrolar.co', 2, 1),
(119, 'ZONA FRANCA PIR SAS ', '900736003', '4375700', 'AV TRONCAL DE OCCIDENTE 20 - 85 BG 32 ', 'MOSQUERA ', 'facturaelectronica@zonafrancapir.com.co', 2, 1),
(120, 'FORMACOL SA ', '890900331', '3105207708', 'CALLE 82 SUR # 47F - 62 ', 'SABANETA ', 'facturacion@formacol.com', 2, 1),
(121, 'CENTRO AGROINDUSTRIAL Y DE EXPOSICIONES DEL HUILA S.A. ', '891104681-6', '3152921351', 'CR 5 81 SUR KM 12 VIA AL SUR ', 'HUILA', 'contador@ceagrodex.com.co', 7, 1),
(122, 'INVERSIONES LAVINCO SAS', '811040675', '3814641', 'CR 51 # 10 B SUR - 17 ', 'MEDELLIN ', 'facturacionjpmolina@gmail.com', 2, 1),
(123, 'INDUSTRIAS METALICAS CORSAN SA', '890900160-1', '6044440755', 'CRA 42 N 85B 71', 'ITAGUI', 'cristian.carmona@corsan.com.co', 7, 1),
(124, 'TERNIUM SIDERURGICA DE CALDAS SAS', '900174468-4', '4447799', 'KM 2 VIA TERMAES LA ENEA', 'MANIZALES', 'CORREO ', 2, 1),
(125, 'INDUSTRIAS PUROPOLLO SAS', '890104719', '3348029', 'CALLE 30 # 9 - 2 FINAL AUTOPISTA AEROPUERTO MALAMBO ', 'ATLANTICO ', '890104719@factureinbox.co', 2, 1),
(126, 'CEMENTOS DEL ORIENTE S.A', '830120480-8', '6087720652', 'CALLE 52A No. 11-101 PARQUE INDUSTRIAL SOGAMOSO', 'SOGAMOSO', 'compras@orientte.co', 7, 1),
(127, 'ANDERCOL SAS', '890903310-3', '3567000', 'CALLE 19A # 43B - 41 ', 'MEDELLIN ', 'factuelectronicaadc@andercol.com', 2, 1),
(128, 'GELCO SAS ', '890101692-1', '3226464', 'CRA 42 # 2 - 100', 'BARRANQUILLA', 'CORREO', 2, 1),
(129, 'ATLAS COPCO COLOMBIA LTDA ', '860534244-2', '4199200', 'CALLE 65 BIS # 88 - 84 ALMAVIVA ALAMOS ', 'BOGOTA', 'facturaselectronicas@co.atlascopco.com', 2, 1),
(130, 'EMPRESA INDUSTRIAL LICORERA DE BOYACA', '901336631-9', '3187171756', 'AV LICORERA 1 A 05 BRR EL JORDAN ', 'TUNJA ', 'dir.tecnica@nlb.com.co', 2, 1),
(131, 'FERRO COLOMBIA SAS', '890906397-7', '5570636', 'CL7 # 23C - 10 ', 'GIRARDOTA ', 'facturacionelectronica@vibrantz.com', 2, 1),
(132, 'FAMILIA DEL PACIFICO SAS', '817000680-2', '8284507', 'ZONA FRANCA PERMANENTE DEL CAUCA / KM2 VIA GUACHENE', 'CALOTO / CAUCA', 'facturazfrancacol@grupofamilia.com', 2, 1),
(133, 'UNION TEMPORAL GRUCO ', '901397464-6', '3137225278', 'CALLE 34C # 88B - 55 PLAZA CAMPESTRE BLOQUE 9 APTO 218', 'MEDELLIN ', 'UTGRUCO@GMAIL.COM', 2, 1),
(134, 'AJE COLOMBIA SA', '830081407-1', '6015939070', 'KIM 3 VIA MALAMBO  SABANA GRANDE PARQUE INDUSTRIAL MALAMBO ', 'ATLANTICO ', 'dte8300814071@dte.paperless.com', 2, 1),
(135, 'GAMAQUIMICOS SAS ', '800077329-0', '3173834233', 'CALLE 60 SUR # 44 - 34 ', 'SABANETA', 'contabilidad@gamaquimicos.com', 2, 1),
(136, 'AVIMOL SAS ', '890204199-2', '6468478', 'AV GONZALEZ VALENCIA 54 78 ', 'BUCARAMANGA ', 'CONTADOR@AVIMOL.COM.CO', 2, 1),
(137, 'CRIYA SAS ', '800200139', '3138113570', 'CR 7 # 33 - 81', 'BOGOTA', 'COTABILIDAD@CASCABEL.COM', 3, 1),
(138, 'PROQUIDENT SA', '890914979', '3216394028', 'AUT MED/BOG ENTRE RETORNO 11 Y 12 VEREDA GARRIDO LA PLAYA ', 'GUARNE ', 'facturacionelectronica@proquident.com.co', 3, 1),
(139, 'FLORVAL SAS', '800049458', '3222725', 'Vereda El Oratorio, 500 m antes del peaje, Km 14 Vía Zipaq . - Ubaté, NEMOCÓN (CUND.)', 'BOGOTA', 'facturaegrchia@facturaenlinea.co', 3, 1),
(140, 'MAKE SOLUTIONS SAS', '900348509', '3120112', 'cra 43b # 11a31 edificio proraiz oficina 201 poblado,barrio manila', 'MEDELLIN', 'Facturacionelectronica@makesas.com', 3, 1),
(141, 'PASTELPAN LAS ENVINADAS DE BUENOS AIRES SAS', '811012769', '3132224353', 'Cra 50g 10b sur', 'Medellin', 'facturaelectronica@lasnegras.com.co', 7, 1),
(142, 'SAIT SA', '890938344', '3010506', 'CLL 78D # 47G - 53', 'SABANETA ', 'facturaproveedores@sait.com.co', 3, 1),
(143, 'RICARDO PRIETO GUZMAN ', '94307138', '3146451649', 'CL 56D # 28 - 55', 'PALMIRA / VALLE DEL CAUCA ', 'RPRIETO07@GMAIL.COM', 3, 1),
(144, 'COMPAÑIA DE EMPAQUES SA', '890900285', '3658888', 'CARRERA 42 # 86 - 25', 'ITAGUI - ANTIOQUIA', 'empaques@ciaempaques.com.co ', 3, 1),
(145, 'MANGUERAS Y ACCESORIOS INDUSTRIALES AC SAS', '901058988', '3015085207', 'CALL 45 # 52 - 47 ', 'BARRIO ABAJO - BARRANQUILLA ', 'factura.manguerasyaccesorios@gmail.com', 3, 1),
(146, 'SERVI.MONTAJES WB SAS', '900691629', '3185243981', 'CALLE 6 SUR # 52 - 144 ', 'MEDELLIN', 'servimontajeswb@hotmail.com', 3, 1),
(147, 'LUISA FARMS SA EN REORGANIZACION', '830085047', '6683030', 'FINCA SANTA CRUZ - VDA POTRERO GRANDE, KM 3 ', 'MADRID CUNDINAMARCA ', 'FALCONSA@FALCONFARMS.COM.CO', 3, 1),
(148, 'NOUVELLE COLOMBIA EU', '900226838', '6930062', 'PARQUE INDUSTRIAL ZONA FRANCA DEXTO SA', 'BOLIVAR ', 'facturacion.electronica@nouvelleltd.com', 3, 1),
(149, 'NOVA CONTROL S.A.S', '900893137 6', '4221530', 'Calle 20 #74-46 piso 3', 'Medellin', 'contabilidad@novacontrol.co', 8, 1),
(150, 'MEXICHEM COLOMBIA S.A.S.', '860.005.050-1', '5717825000', 'Autopista Sur # 71 - 75', 'BOGOTA', 'ComprasColombia@wavin.com', 3, 1),
(151, 'AUTOMATIZACION CONTROL E INSTRUMENTACION SAS ', '900718517', '3113671279', 'CR 17 # 33 H - 43 ', 'BARRIO ATANASIO GIRARDOT / CAL', 'gerencia@acoi.co', 3, 1),
(152, 'POSTOBON S.A', '890903939', '4174000', 'CTRA S/GRANDE KM 3 - 500 ', 'MALAMBO ', 'recepcionfe@postobon.com.co', 3, 1),
(153, 'MABE COLOMBIA SAS', '890801748', '8783700', 'CRA 21 74-100 74-100 ', 'MANIZALES', 'MARICELLA.ALARCON@MABE.COM.CO', 6, 1),
(154, 'SEATECH INTERNATIONAL INC', '800072556-3', '3135689268', 'ZN MAMONAL KM 8 ', 'CARTAGENA ZONA FRANCA', 'asistentecompras@seatechint.com', 3, 1),
(155, 'G Y J FERRETERIA SA', '800130426-3', '3043877371', 'Carrera 49 No. 60A Sur-64.', 'SABANETA', 'mantenimiento.antioquia@gyj.com.co', 7, 1),
(156, 'GDM EQUIPOS SAS', '900698643', '3103035160', 'CR 14 # 94A - 24  OFI 403 ED ACOCENTRO', 'BOGOTA DC ', 'info@gdmequipos.com', 3, 1),
(157, 'DEO GRATIAS SAS', '900354803', '6796383', 'CR 67 # 75 - 09', 'CARATAGENA / BARRIO POLICARPA', 'lumaferia@hotmail.com', 3, 1),
(158, 'GRUPO ELITEC SAS', '900756947-9', '3144065229', 'CALLE 19 # 70-41', 'BOGOTÁ', 'grupoelitecsas@gmail.com', 8, 1),
(159, 'TECNICAS REUNIDAS DE PANADERIA SLU ', 'B95626354', '34946156460', 'CALLE 4 # 1E - 408 VIA ORIENTAL MALAMBO SECTOR LA LUNA ', 'MALAMBO / ATLANTICO ', 'jokin.urrutia@termopan.es', 3, 1),
(160, 'CONSORCIO VIRGEN DEL CARMEN', '901141029-6', '7815574', 'CALLE 35 # 63-6 SECTOR GAMBOTICO CARRETERA TRONCAL. ', 'CARMEN DE BOLIVAR', 'consorciovirgenc@gmail.com', 8, 1),
(161, 'ASEO Y SOSTENIMIENTO Y COMPAÑIA SA', '800066388', '4484850', 'TV 5A # 45 - 63', 'MEDELLIN', 'siesaferecepcion@siesa.com', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `NIT`, `nombre`, `telefono`, `email`, `direccion`) VALUES
(1, '9004955684-6', 'Giravan Sas', '4448452', 'sistemas@giravan.com', 'Cra. 47D No. 78 C Sur-43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_permisos`
--

CREATE TABLE `detalle_permisos` (
  `id` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_permisos`
--

INSERT INTO `detalle_permisos` (`id`, `id_permiso`, `id_usuario`) VALUES
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 6, 2),
(19, 3, 3),
(20, 4, 3),
(21, 5, 3),
(22, 6, 3),
(23, 3, 6),
(24, 4, 6),
(25, 5, 6),
(26, 6, 6),
(27, 3, 7),
(28, 4, 7),
(29, 5, 7),
(30, 6, 7),
(31, 1, 5),
(32, 3, 5),
(33, 4, 5),
(34, 5, 5),
(35, 6, 5),
(37, 1, 4),
(38, 2, 4),
(39, 3, 4),
(40, 4, 4),
(41, 5, 4),
(42, 6, 4),
(46, 3, 8),
(47, 4, 8),
(48, 5, 8),
(49, 6, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` int(11) NOT NULL,
  `id_usuario` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `incluye` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_temp`
--

INSERT INTO `detalle_temp` (`id`, `id_usuario`, `id_producto`, `cantidad`, `precio_venta`, `total`, `incluye`) VALUES
(419, '7', 287, 1, '2500000.00', '2500000.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(30,2) NOT NULL,
  `incluye` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `id_producto`, `id_venta`, `cantidad`, `precio`, `incluye`) VALUES
(1, 1, 1, 1, '3490000.00', ''),
(2, 2, 2, 1, '4237200.00', ''),
(3, 3, 3, 1, '3528600.00', ''),
(4, 4, 4, 1, '4165600.00', ''),
(5, 1, 5, 1, '1000000.00', ''),
(6, 5, 6, 1, '0.00', ''),
(7, 6, 7, 1, '273700.00', ''),
(8, 7, 8, 1, '6008000.00', ''),
(9, 8, 9, 1, '4571600.00', ''),
(10, 8, 10, 2, '2285800.00', ''),
(11, 8, 11, 2, '2285800.00', ''),
(12, 10, 12, 1, '9163000.00', ''),
(13, 9, 12, 1, '4893000.00', ''),
(14, 11, 13, 3, '1159000.00', ''),
(15, 12, 13, 5, '1496000.00', ''),
(16, 13, 14, 1, '1340000.00', ''),
(17, 14, 15, 1, '2979000.00', ''),
(18, 15, 16, 1, '2592000.00', ''),
(19, 16, 17, 1, '2857000.00', ''),
(20, 16, 18, 1, '2857000.00', ''),
(21, 18, 19, 1, '400000.00', ''),
(22, 17, 19, 1, '4000000.00', ''),
(23, 21, 20, 1, '5500000.00', ''),
(24, 19, 20, 1, '7074000.00', ''),
(25, 20, 20, 1, '5209000.00', ''),
(26, 23, 21, 1, '2151000.00', ''),
(27, 24, 22, 1, '1748000.00', ''),
(28, 22, 23, 2, '950000.00', ''),
(29, 22, 24, 2, '950000.00', ''),
(30, 22, 25, 2, '0.00', ''),
(31, 22, 26, 2, '950000.00', ''),
(32, 22, 27, 2, '950000.00', ''),
(33, 23, 28, 2, '230000.00', ''),
(34, 26, 29, 1, '7860000.00', ''),
(35, 27, 30, 1, '2357200.00', ''),
(36, 28, 31, 20, '232000.00', ''),
(37, 29, 32, 1, '6750000.00', ''),
(38, 30, 33, 1, '2390000.00', ''),
(39, 31, 34, 1, '1963100.00', ''),
(40, 1, 34, 1, '3570000.00', ''),
(41, 32, 35, 1, '12480000.00', ''),
(42, 33, 37, 1, '4735000.00', ''),
(43, 23, 37, 1, '675000.00', ''),
(44, 33, 38, 1, '4735000.00', ''),
(45, 23, 38, 1, '675000.00', ''),
(46, 33, 39, 1, '4735000.00', ''),
(47, 23, 39, 1, '675000.00', ''),
(48, 34, 40, 1, '7430000.00', ''),
(49, 35, 41, 1, '3324000.00', ''),
(50, 36, 42, 1, '8730000.00', ''),
(51, 37, 42, 1, '1484000.00', ''),
(52, 37, 43, 1, '1484000.00', ''),
(53, 36, 43, 1, '8730000.00', ''),
(54, 38, 44, 1, '799000.00', ''),
(55, 40, 45, 1, '0.00', ''),
(56, 39, 45, 1, '12900000.00', ''),
(57, 41, 46, 1, '7904285.00', ''),
(58, 42, 47, 1, '4400000.00', ''),
(59, 43, 48, 3, '5280000.00', ''),
(60, 44, 49, 1, '1750000.00', ''),
(61, 45, 50, 1, '1100000.00', ''),
(62, 46, 51, 2, '7195000.00', ''),
(63, 48, 52, 1, '823000.00', ''),
(64, 47, 52, 1, '8527000.00', ''),
(65, 49, 53, 1, '2780000.00', ''),
(66, 50, 54, 1, '2900000.00', ''),
(67, 51, 55, 1, '4700000.00', ''),
(68, 54, 56, 1, '300000.00', ''),
(69, 55, 57, 1, '2050000.00', ''),
(70, 52, 58, 1, '2516000.00', ''),
(71, 53, 58, 1, '2516000.00', ''),
(72, 56, 59, 1, '2928600.00', ''),
(73, 6, 60, 1, '230000.00', ''),
(74, 57, 61, 3, '3980000.00', ''),
(75, 58, 62, 2, '185000.00', ''),
(76, 59, 63, 1, '19500000.00', ''),
(77, 60, 64, 1, '6360000.00', ''),
(78, 62, 65, 1, '3000000.00', ''),
(79, 61, 66, 1, '9700000.00', ''),
(80, 63, 67, 1, '130000.00', ''),
(81, 64, 68, 2, '7608000.00', ''),
(82, 63, 69, 3, '130000.00', ''),
(83, 65, 70, 1, '180000.00', ''),
(84, 66, 70, 1, '90000.00', ''),
(85, 67, 71, 1, '590000.00', ''),
(86, 23, 72, 1, '540000.00', ''),
(87, 68, 73, 1, '2000000.00', ''),
(88, 69, 74, 1, '12920000.00', ''),
(89, 45, 75, 1, '1100000.00', ''),
(90, 70, 76, 1, '1400000.00', ''),
(91, 71, 77, 1, '5204000.00', ''),
(92, 72, 78, 2, '3414300.00', ''),
(93, 73, 79, 1, '3015000.00', ''),
(94, 74, 80, 6, '1320000.00', ''),
(95, 75, 81, 1, '960000.00', ''),
(96, 76, 82, 1, '2420000.00', ''),
(97, 77, 83, 1, '5730000.00', ''),
(98, 69, 84, 1, '13540000.00', ''),
(99, 69, 85, 1, '13540000.00', ''),
(100, 78, 86, 1, '78479000.00', ''),
(101, 78, 87, 1, '78474900.00', ''),
(102, 80, 87, 2, '3980000.00', ''),
(103, 79, 87, 1, '14048571.00', ''),
(104, 78, 88, 1, '0.00', ''),
(105, 22, 89, 1, '1100000.00', ''),
(106, 78, 90, 1, '78474900.00', ''),
(107, 79, 90, 1, '14048571.00', ''),
(108, 80, 90, 2, '3980000.00', ''),
(109, 81, 90, 2, '10987000.00', ''),
(110, 79, 91, 1, '14048571.00', ''),
(111, 80, 91, 2, '3980000.00', ''),
(112, 81, 91, 2, '10987000.00', ''),
(113, 82, 92, 1, '5995000.00', ''),
(114, 78, 93, 1, '78474900.00', ''),
(115, 79, 93, 1, '14048571.00', ''),
(116, 80, 93, 2, '3980000.00', ''),
(117, 81, 93, 2, '10987000.00', ''),
(118, 49, 94, 1, '1537600.00', ''),
(119, 49, 95, 1, '2000000.00', ''),
(120, 84, 96, 1, '16806723.00', ''),
(121, 83, 100, 1, '5900000.00', ''),
(122, 85, 101, 3, '3980000.00', ''),
(123, 86, 102, 1, '3490000.00', ''),
(124, 87, 103, 1, '7866000.00', ''),
(125, 23, 104, 1, '650000.00', ''),
(126, 72, 105, 2, '3450000.00', ''),
(127, 89, 106, 2, '2100000.00', ''),
(128, 90, 107, 1, '4419000.00', ''),
(129, 91, 108, 2, '6115750.00', ''),
(130, 40, 109, 1, '0.00', ''),
(131, 39, 109, 1, '12900000.00', ''),
(132, 67, 109, 1, '0.00', ''),
(133, 92, 110, 1, '3380000.00', ''),
(134, 14, 111, 1, '0.00', ''),
(135, 93, 112, 1, '2700000.00', ''),
(136, 94, 112, 6, '236000.00', ''),
(137, 95, 113, 1, '5995000.00', ''),
(138, 93, 114, 1, '5693000.00', ''),
(139, 96, 115, 1, '12378500.00', ''),
(140, 65, 116, 1, '140000.00', ''),
(141, 18, 117, 1, '400000.00', ''),
(142, 97, 118, 1, '3150000.00', ''),
(143, 2, 119, 1, '0.00', ''),
(144, 36, 121, 1, '0.00', ''),
(145, 98, 122, 2, '3500000.00', ''),
(146, 93, 123, 1, '2700000.00', ''),
(147, 99, 123, 1, '600000.00', ''),
(148, 100, 125, 1, '9590000.00', ''),
(149, 101, 126, 1, '5197257.00', ''),
(150, 102, 127, 1, '70000.00', ''),
(151, 103, 128, 1, '2500000.00', ''),
(152, 104, 129, 1, '800000.00', ''),
(153, 105, 130, 1, '5495000.00', ''),
(154, 106, 131, 1, '3842900.00', ''),
(155, 107, 132, 1, '1580000.00', ''),
(156, 108, 133, 1, '3900000.00', ''),
(157, 110, 134, 2, '974000.00', ''),
(158, 109, 135, 1, '950000.00', ''),
(159, 111, 136, 1, '4350000.00', ''),
(160, 112, 137, 1, '9300000.00', ''),
(161, 113, 138, 2, '2182000.00', ''),
(162, 114, 138, 2, '2182000.00', ''),
(163, 115, 138, 2, '2690000.00', ''),
(164, 116, 139, 1, '3500000.00', ''),
(165, 117, 140, 1, '2500000.00', ''),
(166, 64, 141, 1, '5224000.00', ''),
(167, 93, 142, 1, '2500000.00', ''),
(168, 118, 143, 1, '1690000.00', ''),
(169, 119, 144, 1, '2900000.00', ''),
(170, 120, 145, 1, '3500000.00', ''),
(171, 121, 146, 1, '1520000.00', ''),
(172, 122, 147, 1, '950000.00', ''),
(173, 123, 148, 2, '876000.00', ''),
(174, 124, 149, 1, '1500000.00', ''),
(175, 125, 150, 1, '12900000.00', ''),
(176, 126, 151, 1, '13350000.00', ''),
(177, 123, 152, 1, '880000.00', ''),
(178, 127, 153, 1, '3921000.00', ''),
(179, 128, 154, 1, '1200000.00', ''),
(180, 129, 154, 1, '1200000.00', ''),
(181, 130, 155, 1, '1700000.00', ''),
(182, 131, 156, 1, '2592900.00', ''),
(183, 132, 157, 1, '200000.00', ''),
(184, 133, 158, 12, '3800000.00', ''),
(185, 134, 159, 3, '1200000.00', ''),
(186, 135, 160, 1, '6120000.00', ''),
(187, 136, 161, 2, '380000.00', ''),
(188, 36, 162, 1, '8730000.00', ''),
(189, 93, 163, 1, '2400000.00', ''),
(190, 93, 164, 1, '280000.00', ''),
(191, 138, 164, 1, '250000.00', ''),
(192, 139, 165, 1, '4320000.00', ''),
(193, 55, 166, 1, '2700000.00', ''),
(194, 140, 167, 1, '955000.00', ''),
(195, 141, 167, 1, '955000.00', ''),
(196, 142, 167, 1, '955000.00', ''),
(197, 143, 167, 1, '1236000.00', ''),
(198, 144, 167, 1, '1349000.00', ''),
(199, 145, 168, 1, '53200000.00', ''),
(200, 89, 169, 1, '2550000.00', ''),
(201, 146, 169, 1, '225000.00', ''),
(202, 147, 170, 1, '140000.00', ''),
(203, 148, 171, 1, '2979000.00', ''),
(204, 149, 172, 1, '2100000.00', ''),
(205, 40, 173, 1, '8172000.00', ''),
(206, 150, 174, 2, '7011200.00', ''),
(207, 151, 175, 1, '3300000.00', ''),
(208, 121, 176, 1, '1520000.00', ''),
(209, 152, 177, 1, '2740000.00', ''),
(210, 153, 178, 1, '38835375.00', ''),
(211, 154, 179, 1, '5500000.00', ''),
(212, 131, 180, 2, '3414300.00', ''),
(213, 23, 181, 1, '247400000.00', ''),
(214, 155, 182, 1, '600000.00', ''),
(215, 156, 183, 2, '680000.00', ''),
(216, 156, 185, 2, '680000.00', ''),
(217, 157, 186, 1, '0.00', ''),
(218, 158, 186, 1, '9000000.00', ''),
(219, 22, 187, 2, '1100000.00', ''),
(220, 159, 188, 1, '3574850.00', ''),
(221, 160, 188, 1, '4085000.00', ''),
(222, 121, 189, 1, '1520000.00', ''),
(223, 161, 190, 1, '5980000.00', ''),
(224, 162, 191, 2, '12834824.00', ''),
(225, 163, 191, 1, '9713461.00', ''),
(226, 164, 191, 2, '11308620.00', ''),
(227, 118, 192, 1, '1650000.00', ''),
(228, 166, 193, 1, '700000.00', ''),
(229, 167, 194, 1, '4000000.00', ''),
(230, 155, 195, 1, '1230000.00', ''),
(231, 168, 196, 1, '1150000.00', ''),
(232, 169, 197, 1, '3950000.00', ''),
(233, 170, 198, 1, '9900000.00', ''),
(234, 171, 199, 1, '19500000.00', ''),
(235, 172, 200, 1, '2280000.00', ''),
(236, 173, 201, 1, '140000.00', ''),
(237, 174, 202, 1, '500000.00', ''),
(238, 175, 203, 1, '1900000.00', ''),
(239, 176, 203, 1, '390000.00', ''),
(240, 18, 204, 2, '400000.00', ''),
(241, 178, 205, 1, '1750000.00', ''),
(242, 178, 206, 1, '8182000.00', ''),
(243, 179, 207, 7, '100000.00', ''),
(244, 175, 209, 1, '1900000.00', ''),
(245, 180, 210, 1, '4940000.00', ''),
(246, 6, 211, 1, '1500000.00', ''),
(247, 181, 212, 1, '5150000.00', ''),
(248, 182, 213, 1, '3000000.00', ''),
(249, 183, 214, 1, '3600000.00', ''),
(250, 184, 215, 1, '2350000.00', ''),
(251, 185, 216, 1, '2570000.00', ''),
(252, 186, 217, 1, '7530000.00', ''),
(253, 187, 218, 7, '380000.00', ''),
(254, 188, 219, 1, '2164000.00', ''),
(255, 184, 220, 3, '2279500.00', ''),
(256, 189, 221, 1, '3570000.00', ''),
(257, 190, 222, 1, '3710000.00', ''),
(258, 191, 223, 5, '2100000.00', ''),
(259, 192, 224, 1, '5100000.00', ''),
(260, 193, 225, 1, '1628000.00', ''),
(261, 194, 226, 1, '700000.00', ''),
(262, 195, 226, 1, '1000000.00', ''),
(263, 196, 227, 1, '1323000.00', ''),
(264, 196, 228, 1, '1323000.00', ''),
(265, 197, 229, 1, '999000.00', ''),
(266, 198, 230, 1, '2700000.00', ''),
(267, 199, 230, 1, '3430000.00', ''),
(268, 200, 230, 1, '4750000.00', ''),
(269, 23, 231, 1, '100000.00', ''),
(270, 201, 231, 1, '850000.00', ''),
(271, 202, 232, 2, '2100000.00', ''),
(272, 203, 233, 1, '2950000.00', ''),
(273, 204, 234, 1, '1765000.00', ''),
(274, 49, 235, 1, '1967000.00', ''),
(275, 205, 236, 2, '59700000.00', ''),
(276, 206, 237, 2, '2200000.00', ''),
(277, 207, 238, 1, '2600000.00', ''),
(278, 18, 239, 2, '456000.00', ''),
(279, 208, 239, 15, '49200.00', ''),
(280, 209, 239, 30, '31200.00', ''),
(281, 210, 239, 2, '21600.00', ''),
(282, 211, 239, 2, '61200.00', ''),
(283, 212, 239, 60, '25200.00', ''),
(284, 213, 240, 1, '3600000.00', ''),
(285, 214, 241, 1, '1655000.00', ''),
(286, 63, 241, 1, '1980000.00', ''),
(287, 215, 242, 1, '0.00', ''),
(288, 216, 243, 1, '2190000.00', ''),
(289, 217, 244, 1, '11400000.00', ''),
(290, 218, 245, 1, '14790000.00', ''),
(291, 219, 246, 1, '20475738.00', ''),
(292, 220, 246, 1, '26574894.00', ''),
(293, 221, 246, 1, '29285630.00', ''),
(294, 222, 247, 2, '7011200.00', ''),
(295, 214, 248, 1, '2498700.00', ''),
(296, 223, 249, 1, '350000.00', ''),
(297, 23, 250, 2, '3290000.00', ''),
(298, 224, 251, 2, '14790000.00', ''),
(299, 225, 252, 8, '82500.00', ''),
(300, 132, 253, 1, '220000.00', ''),
(301, 227, 254, 1, '1920000.00', ''),
(302, 226, 254, 1, '3490000.00', ''),
(303, 228, 255, 1, '8066450.00', ''),
(304, 229, 256, 1, '2357200.00', ''),
(305, 56, 257, 1, '2928600.00', ''),
(306, 230, 258, 1, '14244000.00', ''),
(307, 231, 259, 1, '8300000.00', ''),
(308, 63, 260, 1, '150000.00', ''),
(309, 68, 261, 1, '2000000.00', ''),
(310, 233, 262, 1, '6825000.00', ''),
(311, 234, 263, 1, '5300000.00', ''),
(312, 235, 264, 1, '3060000.00', ''),
(313, 236, 265, 1, '38409329.00', ''),
(314, 237, 266, 1, '1072000.00', ''),
(315, 55, 267, 1, '3000000.00', ''),
(318, 187, 269, 6, '380000.00', ''),
(319, 241, 270, 1, '3784000.00', ''),
(320, 240, 271, 1, '4382000.00', ''),
(321, 238, 272, 1, '4900000.00', ''),
(322, 242, 273, 10, '1140000.00', ''),
(323, 243, 274, 1, '3415000.00', ''),
(324, 244, 275, 1, '450000.00', ''),
(325, 190, 276, 1, '3410000.00', ''),
(326, 152, 277, 4, '2740000.00', ''),
(327, 245, 278, 3, '3070000.00', ''),
(328, 246, 278, 2, '2586000.00', ''),
(329, 125, 279, 2, '2400000.00', ''),
(330, 49, 280, 1, '1967000.00', ''),
(331, 247, 281, 1, '450000.00', ''),
(332, 248, 282, 3, '150000.00', ''),
(333, 249, 283, 1, '2500000.00', ''),
(334, 250, 284, 2, '1800000.00', ''),
(335, 113, 284, 2, '2082000.00', ''),
(336, 251, 284, 2, '2550000.00', ''),
(337, 252, 284, 2, '1760000.00', ''),
(338, 253, 285, 1, '8900000.00', ''),
(339, 254, 286, 2, '1094000.00', ''),
(340, 255, 287, 2, '2900000.00', ''),
(341, 256, 288, 1, '11800000.00', ''),
(342, 257, 289, 1, '2526250.00', ''),
(343, 258, 290, 1, '4680000.00', ''),
(344, 55, 291, 3, '1600000.00', ''),
(345, 259, 292, 1, '3900000.00', ''),
(346, 260, 293, 1, '3100000.00', ''),
(347, 262, 294, 1, '1008000.00', ''),
(348, 190, 295, 1, '3410000.00', ''),
(349, 245, 296, 2, '3070000.00', ''),
(350, 263, 297, 1, '2285800.00', ''),
(351, 264, 298, 1, '3325000.00', ''),
(352, 265, 299, 1, '1900000.00', ''),
(353, 266, 300, 2, '4360000.00', ''),
(354, 121, 301, 1, '1520000.00', ''),
(355, 267, 302, 1, '690000.00', ''),
(356, 59, 303, 1, '21000000.00', ''),
(357, 49, 304, 1, '1967000.00', ''),
(358, 268, 305, 1, '13205000.00', ''),
(359, 269, 306, 1, '7235000.00', ''),
(360, 270, 306, 1, '6676000.00', ''),
(361, 125, 307, 2, '2415000.00', ''),
(362, 273, 308, 1, '70000.00', ''),
(363, 272, 308, 1, '3220000.00', ''),
(364, 271, 309, 1, '350000.00', ''),
(365, 275, 310, 1, '15671000.00', ''),
(366, 276, 311, 1, '14870000.00', ''),
(367, 277, 312, 1, '18875300.00', ''),
(368, 278, 313, 1, '4680000.00', ''),
(369, 279, 314, 3, '100000.00', ''),
(370, 49, 315, 1, '1967000.00', ''),
(371, 187, 316, 6, '380000.00', ''),
(372, 280, 317, 1, '2460000.00', ''),
(373, 55, 317, 1, '2110000.00', ''),
(374, 281, 318, 1, '1550000.00', ''),
(375, 282, 319, 1, '720000.00', ''),
(376, 283, 320, 1, '799000.00', ''),
(377, 284, 321, 1, '10900000.00', ''),
(378, 285, 322, 1, '4990000.00', ''),
(379, 286, 323, 1, '750000.00', ''),
(380, 69, 329, 1, '15028800.00', ''),
(381, 260, 330, 1, '3200000.00', ''),
(382, 288, 331, 1, '100000.00', ''),
(383, 188, 332, 1, '1894000.00', ''),
(384, 235, 333, 1, '2979000.00', ''),
(385, 290, 334, 1, '4490000.00', ''),
(386, 291, 335, 1, '2942857.00', ''),
(387, 292, 336, 1, '3793000.00', ''),
(388, 293, 337, 1, '5900000.00', ''),
(389, 294, 338, 1, '4255800.00', ''),
(390, 295, 339, 1, '3900000.00', ''),
(391, 296, 340, 2, '7657142.00', ''),
(392, 297, 341, 1, '59260000.00', ''),
(393, 2, 28361, 1, '0.00', ''),
(394, 2, 28362, 1, '20000.00', ''),
(395, 36, 28362, 1, '400000.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoorden`
--

CREATE TABLE `estadoorden` (
  `codestadoorden` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadoorden`
--

INSERT INTO `estadoorden` (`codestadoorden`, `estado`) VALUES
(1, 'IMPORTACION'),
(2, 'PENDIENTE DE PAGO'),
(3, 'COMPRA NACIONAL'),
(4, 'CANCELADA'),
(5, 'DESPACHADO SIN FACTURA'),
(6, 'DESPACHADO CON FACTURA'),
(7, 'FACTURADO PARCIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mododespacho`
--

CREATE TABLE `mododespacho` (
  `codmododespacho` int(11) NOT NULL,
  `despacho` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mododespacho`
--

INSERT INTO `mododespacho` (`codmododespacho`, `despacho`) VALUES
(1, 'LOCAL'),
(2, 'BUS A LUGAR DE DESTINO'),
(3, 'TCC'),
(4, 'RECOGIDO POR EL CLIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordendecompra`
--

CREATE TABLE `ordendecompra` (
  `id_ordendecompra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `fechaorden` varchar(30) NOT NULL,
  `tiempoentregaorden` varchar(30) NOT NULL,
  `personaquesolicita` varchar(30) NOT NULL,
  `personaqueautoriza` varchar(30) NOT NULL,
  `item` varchar(30) NOT NULL,
  `numeroordendecompra` int(11) NOT NULL,
  `observaciones` varchar(30) NOT NULL,
  `id_requisicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordendecompraproductos`
--

CREATE TABLE `ordendecompraproductos` (
  `id_orden_productos` int(10) NOT NULL,
  `id_ordendecompra` int(10) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `estatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`) VALUES
(1, 'configuración'),
(2, 'usuarios'),
(3, 'clientes'),
(4, 'productos'),
(5, 'ventas'),
(6, 'nueva_venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codproducto` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `potencia` varchar(30) NOT NULL,
  `relacion` varchar(30) NOT NULL,
  `velocidad` varchar(30) NOT NULL,
  `voltaje` varchar(30) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `alimentacion` varchar(30) NOT NULL,
  `capacidad` varchar(30) NOT NULL,
  `tipopolipasto` varchar(30) NOT NULL,
  `izaje` varchar(30) NOT NULL,
  `dimensiones` varchar(30) NOT NULL,
  `longitud` varchar(30) NOT NULL,
  `amperaje` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL,
  `tipocable` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codproducto`, `codigo`, `descripcion`, `modelo`, `precio`, `existencia`, `potencia`, `relacion`, `velocidad`, `voltaje`, `usuario_id`, `estado`, `alimentacion`, `capacidad`, `tipopolipasto`, `izaje`, `dimensiones`, `longitud`, `amperaje`, `cantidad`, `tipocable`) VALUES
(1, 'RBW', 'REDUCTOR', 'W63 UFC1 30 P90 B14 B3', '0.00', -3, '', '30 a 1', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(2, 'MRBVF', 'MOTOREDUCTOR', 'VF44 F1 60 P63 B14 B3', '0.00', -4, '0,25 HP', '60 a 1', '29 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(3, 'RBVF', 'REDUCTOR', 'VF 49 F1 10 P80 B14 B3', '0.00', -1, '', '10 a 1', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(4, 'MRGWC', 'MOTOREDUCTOR', 'WC63', '0.00', -1, '1 HP (1200 RPM)', '300 a 1 ', '3,7 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(5, 'MRGX', 'MOTOREDUCTOR', 'XW2 17 P80 B5', '0.00', -1, '1,5 HP', '17 a 1', '103 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(6, 'FLANCHE B5  MGM 132 ', 'ACCESORIO PARA MOTOR', 'FLANCHE B5 MGM 132 ', '0.00', -3, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(7, 'C 41 3 P 81.5 P80 B3', 'MOTOREDUCTOR', 'C 41 3 P 81.5 P80 B3', '0.00', -1, '1,2 HP a 1800 RPM', '81,5 a 1', '32 RPM a 96 Hz', '220V/440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(8, 'NA', 'REDUCTOR', 'VF30', '0.00', -5, '', '10 A 1', '', '', 6, 1, '', '', '', '', '', '', '', '', ''),
(9, 'W63 U B5', 'MOTOREDUCTOR', 'W63 U B5', '0.00', -1, '1,5 hp', '19 a 1 ', '92', '220v/440v', 2, 0, '', '', '', '', '', '', '', '', ''),
(10, 'WR86 U', 'MOTOREDUCTOR', 'WR86 U', '0.00', -1, '1 HP', '90 a 1 ', '19,4 RPM', '220v/440v', 2, 1, '', '', '', '', '', '', '', '', ''),
(11, 'IC5 1HP', 'VARIADOR', 'IC5 1HP', '0.00', -3, '1 HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', '', ''),
(12, 'IC5 3HP', 'VARIADOR', 'IC5 3HP', '0.00', -5, '3HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', '', ''),
(13, 'DISCO DE FRENO 90L', 'DISCO DE FRENO 90L', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(14, 'VF44 O,5HP', 'MOTOREDUCTOR', 'VF 44 0,5HP', '0.00', -2, '0,5', '20', '80', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(15, 'VF 49 F1 P80', 'REDUCTOR', 'VF 49 F1 P80', '0.00', -1, '', '18 a 1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(16, 'MRBA80 B2', 'MOTOR', 'BA80 B2', '0.00', -2, '0,75W', '55', '3600', '220V/440V', 6, 1, '', '', '', '', '', '', '', '', ''),
(17, 'TL-TR', 'TELEMANDO', 'PNT-R1521-T722', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(18, 'LBCC', 'CARRO COLECTOR 40AMP ', 'Carro Colector 40A', '0.00', -6, '', '', '', '', 7, 1, 'NA', '', '', '', '', 'NA', '40A', '', ''),
(19, 'MRB W63 i10', 'MOTOREDUCTOR', 'W63 i10 ', '0.00', -1, '2', '10', '1800', '220V/S440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(20, 'MRB W63 i19', 'MOTOREDUCTOR', 'W63 i19', '0.00', -1, '2', '19', '3600', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(21, 'RB W86 i100', 'REDUCTOR', 'RB W86 i100', '0.00', -1, '', '100', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(22, 'GK90 90W P75', 'MOTOREDUCTOR', 'GK90 90W P75', '0.00', -13, '90 W', '75', '21', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(23, 'SERVICIO TECNICO ', 'SERVICIO TECNICO', '', '0.00', -12, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(24, 'LB', 'Linea Blindada Verde', '', '0.00', -1, '', '', '', '', 7, 1, 'Extrema', '', '', '', '', '16m', '35Amp', '', ''),
(25, 'TAPAS MOTOR BF', 'TAI80 B14-3A', '', '0.00', 0, '', '', '', '', 6, 1, '', '', '', '', '', '', '', '', ''),
(26, 'MRB VFR49', 'MOTOREDUCTOR', 'VFR49 108 A 1', '0.00', -1, '0,33 HP', '108 A 1', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(27, 'RB VF30 ', 'REDUCTOR', 'VF30 28 A 1', '0.00', -1, '', '28 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(28, 'LF-CI', 'CARRO INTERMEDIO ', 'RG 8005 METÁLICO', '0.00', -20, '', '', '', '', 7, 1, '', '', '', '', '', 'NA', 'NA', '', ''),
(29, 'MW', 'MOTOR', 'motor weg 75 Hp 1800 rpm', '0.00', -1, '75 HP', '', '1800', '220V/440V', 6, 1, '', '', '', '', '', '', '', '', ''),
(30, 'VF49 P7 P80 B14', 'REDUCTOR', 'VF49 P7 P80 B14', '0.00', -1, '', '7', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(31, 'MEW 2HP', 'MOTOR', 'WEG 2HP', '0.00', -1, '2HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(32, 'SA', 'Servicio de automatizacion', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(33, ' 7.5 HP', 'MOTOR', 'WEG 7.5 HP', '0.00', -3, '7.5', '', '1800', '220V/440', 2, 1, '', '', '', '', '', '', '', '', ''),
(34, 'VF44 FA1 P28 P71 B14', 'MOTORREDUCTOR', 'VF44 FA1 P28 P71 B14 RB ', '0.00', -1, '0,5 HP', '28', '', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(35, 'WC86 P60 3HP', 'MOTOREDUCTOR', 'WC86 P60 3HP', '0.00', -1, '3 HP', '60', '1800', '220V/440V', 2, 0, '', '', '', '', '', '', '', '', ''),
(36, 'PEC1TN', 'POLI/ ELECTRICO A CADENA', 'ECH 0101S', '0.00', -5, '', '', '', '220V/440V', 7, 1, '', '1TN  ', 'A cadena', '6m', '', '', '', '', ''),
(37, 'RP', 'Guia de Cadena', 'Para polipasto de 1TN', '0.00', -2, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(38, 'VFC49 P18 P80 B14', 'REDUCTOR', 'VFC49 P18 P80 B14', '0.00', -1, '', '18', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(39, 'XW6 P43 15HP', 'MOTOREDUCTOR', 'XW6 P43 15HP', '0.00', -2, '15HP', '43', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(40, 'IGA5 20HP 220V', 'VARIADOR', 'IGA5', '0.00', -3, '20HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', '', ''),
(41, 'W63 P30 2HP', 'MOTOREDUCTOR', 'W63 P30 2HP', '0.00', -1, '2HP', '30', '60', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(42, 'BN 27C 4 0,9 KW ', 'MOTOR', 'BN 27C 0,9KW ', '0.00', -1, '0,9 KW', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(43, 'SC', 'Servicio', '', '0.00', -3, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(44, 'VFC 49 P20 1HP', 'MOTOREDUCTOR', 'VFC 49 P20 1HP', '0.00', -1, '1HP', '20', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(45, 'M 1HP 3600', 'MOTOR', 'WEG O SIMILAR ', '0.00', -2, '1HP', '', '3600', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(46, 'XL5 35 P112', 'MOTOREDUCTOR', 'XL5 35 P112', '0.00', -2, '7,5HP', '35 A 1', '50', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(47, 'MR NMRV 150 BA 100 L', 'MOTOREDUCTOR', 'NMRV 150 BA 100 LBA ', '0.00', -1, '5HP', '30 A 1 ', '58', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(48, 'ACOPLE', 'ACOPLE/CADENA ', 'PINON CADENA ', '0.00', -1, '', '6020', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(49, 'MT8102IP', 'PANTALLA', 'MT8102IP', '0.00', -7, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(50, 'WC75 2HP', 'MOTOREDUCTOR', 'WC75 2HP ', '0.00', -1, '2HP', '10 A 1 ', '50', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(51, 'TR 48 3HP P10 ', 'MOTOREDUCTOR', 'TR 48 3HP P10', '0.00', -1, '3HP', '10 A 1 ', '180', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(52, 'VF30 P30 0,15HP', 'MOTOREDUCTOR', 'VF30 P30 0,15HP ', '0.00', -1, '0,15 HP', '30 ', '45', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(53, 'VF30 P20 0,12HP', 'MOTOREDUCTOR', 'VF30 P20 0,12HP ', '0.00', -1, '0,12 HP ', '20', '70', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(54, 'M1,2 HP ', 'MOTOR', 'M1,2 HP', '0.00', -1, '1,2 HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(55, 'VF44 P14 P71 B14', 'REDUCTOR', 'VF44 P14 P71 B14', '0.00', -7, '', '14', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(56, 'VF44 F1 P10 P71 B14', 'REDUCTOR', 'VF44 F1 P10 P71 B14', '0.00', -2, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(57, 'EJE SALIDA HUECO', 'EJE DE SALIDA HUECO ', 'F41', '0.00', -3, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(58, 'RPEC', 'Pestillo seguridad', 'para 2 TN', '0.00', -2, '', '', '', '', 7, 1, '', '2 ton  ', '', '', '', '', '', '', ''),
(59, 'X309 R2 i  23.5', 'REDUCTOR', 'X309 R2 i 23.5', '0.00', -2, '', '23.5', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(60, 'W63 P23 0,11KW ', 'MOTOREDUCTOR', 'W63 P23 0,11KW', '0.00', -1, '0,11 KW', '23', '69.4', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(61, 'MT8121XE', 'PANTALLA', 'MT8121XE', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(62, 'WC63 P80 3HP ', 'MOTOREDUCTOR', 'WC63 P80 3HP', '0.00', -1, '3HP', '80', '21', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(63, 'PROGRAMACION VARIADO', 'SERVICIO', 'PROGRAMACION VARIADOR ', '0.00', -6, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(64, 'W63 P15 2HP ', 'MOTOREDUCTOR', 'W63 P15 2HP ', '0.00', -3, '2HP', '15', '115', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(65, 'SI-PG', 'INSPECCION', '', '0.00', -2, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(66, 'AL-PG', 'ALQUILER ANDAMIO', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(67, 'GABINETE ', 'GABINETE', 'GABINETE ', '0.00', -2, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(68, 'TL-2D', 'TELEMANDO', 'TELECRANE F21-2D', '0.00', -2, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(69, 'PEC2TN', 'POLIPASTO ELECTRICO ', 'HKD0202S', '0.00', -4, '', '', '', '220V', 7, 1, '', '2TN  ', 'A CADENA', '6m', '', '', '', '', ''),
(70, 'BONFIGLIOLI 0,75HP', 'MOTOR', 'BONFIGLIOLI 0,75HP', '0.00', -1, '0,75HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(71, 'SRPEC', 'Reparación de polipasto a cadena', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(72, 'VF49 P1 10 P71 B14', 'REDUCTOR', 'VF49 P1 10 P71 B14', '0.00', -4, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(73, 'VF44 FA2 P100 P63 B1', 'REDUCTOR', 'VF44 FA2 P100 P63 B14', '0.00', -1, '', '100', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(74, 'BM 63 C4', 'MOTOFRENO', 'BM 63 C4 ', '0.00', -6, '0,22/0,33 KW ', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(75, 'CAPACITACION ', 'CAPACITACION PG', 'SISTEMA DESPLAZAMIENTO ', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(76, 'VFC 44 P40 0,2 KW', 'MOTOREDUCTOR', 'VFC 44 P40 0,2 KW ', '0.00', -1, '0,2 KW ', '40', '45', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(77, 'GIRAVAN 5HP 1720RPM', 'MOTOR', 'GIRAVAN 5HP 1720RPM', '0.00', -1, '5HP', '', '1720', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(78, '311 L3 191 PC 160 E ', 'REDUCTOR', '311 L3 191 PC 160 E ', '0.00', -5, '', '191 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(79, 'F603 H60 32,1 P1 32 ', 'REDUCTOR', 'F603 H60 32,1 P1 32 ', '0.00', -4, '', '32,1 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(80, 'RECAMBIO F70 3 H70  ', 'KIT REC. REDUCTOR ', 'F70 3 H70 62.5 P1 32 ', '0.00', -8, '', '62.5', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(81, 'F502 H50 S3 PV FL 24', 'REDUCTOR', 'F502 H50 S3 PV FL 24 A 1 ', '0.00', -6, '', '24 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(82, 'WEG 7,5HP 3600RPM', 'MOTOR', 'WEG 7,5HP 3600RPM', '0.00', -1, '7,5 HP ', '', '3600 RPM ', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(83, 'BONFIGLIOLI M3LA4 2,', 'MOTOR', 'BONFIGLIOLI M3LA42,2KW 1410 RP', '0.00', -1, '2,2 KW', '', '1410RPM', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(84, 'PEC5TN', 'POLIPASTO ELECTRICO A CADENA', 'HKD0502S', '0.00', -1, '', '', '', '220V', 7, 1, '', '5 ton ', 'A CADENA', '6m', '', '', '', '', ''),
(85, 'EPI', 'CAP EN HII DE 280mm/10mm PARA DISTRIBUIDOR', '', '0.00', -3, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(86, 'W63 P23 P90 B14', 'REDUCTOR', 'W63 P23 P90 B14', '0.00', -1, '', '23 A 1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(87, 'WEINTEK CMT3161X', 'PANTALLA', 'WEINTEK CMT3161X', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(88, 'VF 49 P10 P80 B14', 'REDUCTOR', 'VF 49 P10 P71 B14', '0.00', 0, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(89, 'VF44 P7 P71 B14', 'REDUCTOR', 'VF44 P7 P71 B14', '0.00', -3, '', '7', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(90, 'W63 U B5 P100 0,5 HP', 'MOTOREDUCTOR', 'W63 U B5 P100 0,5 HP', '0.00', -1, '0,5 HP', '100', '18', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(91, 'XL5 P59 7,5 HP ', 'MOTOREDUCTOR', 'XL5 P59 7,5 HP ', '0.00', -2, '7,5 HP', '59', '31', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(92, 'VF49 P60 P71 B5 0,37', 'MOTOREDUCTOR', 'VF49 P60 P71 B5 0,37 KW 1800', '0.00', -1, '0,33 KW', '60', '30', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(93, 'MTTO-C', 'Servicio de mantenimiento correctivo', '', '0.00', -6, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(94, 'Contactares', 'Contactor control', '', '0.00', -6, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(95, '7,5HP 3600RPM', 'MOTOR', '7,5HP 3600RPM', '0.00', -1, '7,5HP', '', '3600RPM', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(96, 'PEC2TN - 3m', 'POLIPASTO ELECTRICO A CADENA', 'HKD 0202S', '0.00', -1, '', '', '', '220V', 7, 1, '', '2 ton', 'a cadena', '3 metros', '', '', '', '', ''),
(97, 'VFC44 i:20 0,75HP ', 'MOTOREDUCTOR', 'VFC44 i:20 0,75HP ', '0.00', -1, '0,75 HP', '20', '90', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(98, 'W75 P20 B5 1HP', 'MOTOREDUCTOR', 'W75 P20 B5 1HP', '0.00', -2, '1HP', '20', '90', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(99, 'RP TRANS', 'TRANSFORMADOR PARA POLIPASTO VERLINDE', 'Potencia y control', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(100, 'BIANCHI X32S P71 B5', 'REDUCTOR', 'BIANCHI X32S P71 B5 ', '0.00', -1, '', '7,33/1', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(101, '20HP 1800RPM', 'MOTOR', '20HP 1800RPM', '0.00', -1, '20HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(102, 'FLANCHE B14 ', 'FLANCHE B14', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(103, 'VF49 P60 1HP', 'MOTOREDUCTOR', 'VF49 P60 1HP MOTOFRENO', '0.00', -1, '1HP', '60', '28', '220V/440V', 1, 1, '', '', '', '', '', '', '', '', ''),
(104, 'TAPA DE SALIDA XWD 6', 'TAPA DE SALIDA XWD 6', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(105, 'REPARACION DRIVES EU', 'REPARACION DRIVES EUROTHERMS', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(106, 'VF49 P24 P71 B14 0,7', 'MOTOREDUCTOR', 'VF49 P24 P71 B14 0,75HP', '0.00', -1, '0,75HP', '24', '75', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(107, 'TAPA W110 P100 B5 ', 'TAPA W110 P100 B5 ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(108, 'GV28 90:1 0,4KW', 'MOTOREDUCTOR', 'GV28 90:1 0,4KW', '0.00', -1, '0,4 KW', '90', '20', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(109, 'SELLO PLANETARIO', 'SELLO PLANETARIO 310 FP', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(110, 'VENTILACION FORZADA ', 'VENTILACION FORZADA G90', '', '0.00', -2, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(111, 'VF44 F1 i:10 P63 B14', 'MOTOREDUCTOR', 'VF44 F1 i:10 P63 B14 0,33HP', '0.00', -1, '0,33HP', '10', '175', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(112, 'W110 HS i:15 B3 ', 'REDUCTOR', 'W110 HS i:15 B3 ', '0.00', -1, '', '15', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(113, 'NMRV63 P10 P90 B14 1', 'MOTOREDUCTOR', 'NMRV63 P10 P90 B14 1 HP', '0.00', -4, '1 HP ', '10', '180', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(114, 'NMRV 63 i:50 P80 B5 ', 'MOTOREDUCTOR', 'NMRV 63 i:50 P80 B5 0,75KW', '0.00', -2, '0,75 KW', '50 ', '36', '220V/440V', 2, 0, '', '', '', '', '', '', '', '', ''),
(115, 'NMRV 50 i:30 P80 B5 ', 'MOTOREDUCTOR', 'NMRV 50 i:30 P80 B5 0,75KW', '0.00', -2, '0,75 KW ', '30', '60', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(116, 'W63 U P80 B14 B8 10:', 'REDUCTOR', 'W63 U P80 B14 B8 10:1', '0.00', -1, '', '10:1', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(117, 'VF49 F1 45:1 P71 B14', 'REDUCTOR', 'VF49 F1 45:1 P71 B14 B3 ', '0.00', -1, '', '45', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(118, 'BA 71 B4 B14', 'MOTOFRENO ', 'BA 71 B4 B14', '0.00', -2, '0,37 /0,45 KW', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(119, 'XWD 3 i:17 2HP ', 'MOTOREDUCTOR', 'XWD 3 i:17 2HP ', '0.00', -1, '2HP', '17', '106', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(120, 'GIRAVAN 4HP 1800RPM', 'MOTOR', 'GIRAVAN 4HP 1800RPM', '0.00', -1, '4HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(121, 'MT6070IP', 'PANTALLA', 'MT6070IP', '0.00', -4, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(122, 'NMRV 63 50:1 90B14', 'REDUCTOR', 'NMRV 63 50:1 90B14', '0.00', -1, '', '50', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(123, 'VENTILACION FORZADA ', 'VENTILACION FORZADA G80', '', '0.00', -3, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(124, 'VF44 70:1 P71 B14 ', 'REDUCTOR', 'VF44 70:1 P71 B14 ', '0.00', -1, '', '70', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(125, 'VFC44 F1 P7 P71 B14 ', 'MOTOREDUCTOR', 'VFC44 F1 P7 P71 B14 0,5HP ', '0.00', -5, '0,5HP', '7', '250 RPM', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(126, 'PEC-3TN 12m', 'POLIPASTO ELECTRICO A CADENA', 'ECH0301S', '0.00', -1, '', '', '', '440 V', 7, 1, '', '3 TON', 'A CADENA', '12 m', '', '', '', '', ''),
(127, 'XWD5 43:1 ', 'REDUCTOR', 'XWD5 43:1 ', '0.00', -1, '', '43', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(128, 'VENTILADOR VARIADOR ', 'VENTILADOR VARIADOR IS7 50HP 220V', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(129, 'NMRV 75 20:1 ', 'REDUCTOR', 'NMRV 75 20:1 ', '0.00', -1, '', '20', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(130, 'BONFIGLIOLI 1HP', 'MOTOR', 'BONFIGLIOLI 1HP', '0.00', -1, '1HP', '', '1800', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(131, 'VF49 10:1 F1 P71 B5', 'REDUCTOR', 'VF49 10:1 F1 P71 B5', '0.00', -3, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(132, 'PATAS PARA MOTOR P13', 'PATAS PARA MOTOR P132', '', '0.00', -2, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(133, 'TEL-TC 6B', 'TELEMANDO MARCA TELECRANE 6 BOTONES 2 PASOS', 'F24-6D', '0.00', -12, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(134, 'NMRV 40 60:1 0,5HP', 'MOTOREDUCTOR', 'NMRV 40 60:1 0,5HP', '0.00', -3, '0,5 HP', '60', '28', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(135, 'W63 24:1 P90 B 14 1,', 'MOTOREDUCTOR', 'W63 24:1 P90 B 14 1,5HP', '0.00', -1, '1,5 HP', '24', '75 RPM', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(136, 'IE5 0,1 A 0,4 KW 220', 'VARIADOR', 'IE5 0,1 A 0,4 KW 220V', '0.00', -2, '0,1 A 0,4 KW ', '', '', '220V', 2, 1, '', '', '', '', '', '', '', '', ''),
(137, 'PEC 1TN 6M', 'POLIPASTO ELECTRICO A CADENA', 'ECH0101S', '0.00', 0, '', '', '', '220', 7, 1, '', '1 tonelada ', 'A CADENA', '6m', '', '', '', '', ''),
(138, 'Contactor', 'Para Verlinde 3tn', '', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(139, 'XWD 4 29:1', 'REDUCTOR', 'XWD 4 29:1', '0.00', -1, '', '29', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(140, 'IR - DI16-K', 'PANTALLA', 'IR - DI16-K', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(141, 'iR - DM16-P', 'PANTALLA', 'iR - DM16-P', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(142, 'IR - DQ16-P', 'PANTALLA', 'IR - DQ16-P', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(143, 'IR - ETN', 'PANTALLA', 'IR - ETN', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(144, 'IR - AM06 - VI', 'PANTALLA', 'IR - AM06 - VI', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(145, 'PEC-10TN', 'POLIPASTO ELECTRICO A CADENA', 'HKD1004S', '0.00', -1, '', '', '', '440V', 7, 1, '', '10 TON', 'A CADENA', '15m', '', '', '', '', ''),
(146, 'PATAS PARA VF44', 'PATAS PARA VF44', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(147, 'REJILLA VENTILACION ', 'REJILLA VENTILACION', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(148, 'VF44 28:1 P71 B14 0,', 'MOTOREDUCTOR', 'VF44 28:1 P71 B14 0,5HP', '0.00', -1, '0,5HP', '28', '64 RPM', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(149, 'VF44 7:1 P71 B14 ', 'REDUCTOR', 'VF44 7:1 P71 B14 ', '0.00', -1, '', '7', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(150, 'ACOPLE DE ENGRANES ', 'ACOPLE DE ENGRANES ', '', '0.00', -2, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(151, 'BOMBA CICLOIDAL', 'BOMBA CICLOIDAL', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(152, 'BA 90L A4', 'MOTOFRENO', 'BA 90L A4', '0.00', -5, '1,5KW', '', '1800', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(153, 'MONTAJE TUBERIA ', 'MONTAJE TUBERIA ', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(154, 'W75 80:1 P71 B5 ', 'REDUCTOR', 'W75 80:1 P71 B5 ', '0.00', -1, '', '80', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(155, '0,75 HP 1800 RPM', 'MOTOR', '0,75 HP 1800 RPM', '0.00', -2, '0,75 HP', '', '1800 RPM ', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(156, 'REPUESTO # 712432006', 'REPUESTO PARA PLANETARIO', 'REPUESTO # 712432006A', '0.00', -4, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(157, 'H100 7,5HP 220V', 'VARIADOR', 'H100 7,5HP 220V', '0.00', -1, '7,5HP', '', '', '220V', 3, 1, '', '', '', '', '', '', '', '', ''),
(158, 'XWD5 17:1 7,5HP', 'MOTOREDUCTOR', 'XWD5 17:1 7,5HP', '0.00', -1, '7,5 HP', '17', '106 ', '220V', 3, 1, '', '', '', '', '', '', '', '', ''),
(159, 'VF30 7:1 0,34 HP', 'MOTOREDUCTOR', 'VF30 7:1 0,34 HP', '0.00', -1, '0,34HP', '7', '280 RPM ', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(160, 'VF44 7:1 0,34 HP', 'MOTOREDUCTOR', 'VF44 7:1 0,34 HP', '0.00', -1, '0,34 HP ', '7', '280 RPM ', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(161, 'ENCODER CON ADAPTACI', 'ENCODER CON ADAPTACION ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(162, 'PEC 2TN 6M', 'POLIPASTO ELECTRICO A CADENA', 'ECH0202S', '0.00', -2, '', '', '', '440V', 7, 1, '', '2 TON  ', 'A CADENA ', '6m', '', '', '', '', ''),
(163, 'PEC 1TN 3M', 'POLIPASTO ELECTRICO A CADENA', 'ECH0101S', '0.00', -1, '', '', '', '440V', 7, 1, '', '1 TON ', 'A CADENA', '3m', '', '', '', '', ''),
(164, 'CTM 2-3TN', 'CARRO TESTERO MANUAL ', 'CTM 2-3 TN', '0.00', -2, '', '', '', '', 7, 1, '', '2 A 3 TONELADAS  ', '', '', '', '', '', '', ''),
(165, 'BA 71 B4 0,45 KW B14', 'MOTOR', 'BA 71 B4 0,45 KW B14', '0.00', 0, '0,45KW ', '', '1800 RPM ', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(166, 'NMRV 40 60:1 P63 B14', 'REDUCTOR', 'NMRV 40 60:1 P63 B14 ', '0.00', -1, '', '60 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(167, 'W63 15:1 UFC1 P90 B5', 'REDUCTOR', 'W63 15:1 UFC1 P90 B5 ', '0.00', -1, '', '15', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(168, 'GK80 25W 50:1 110V ', 'MOTOREDUCTOR', 'GK80 25W 50:1 110V ', '0.00', -1, '25W', '50', '31 RPM', '110V MONOFASICO ', 2, 1, '', '', '', '', '', '', '', '', ''),
(169, 'XWD3 59:1 1HP A PRUE', 'MOTOREDUCTOR', 'XWD3 59:1 1HP A PRUEBA DE EXPL', '0.00', -1, '1HP ANTI EXPLOSION ', '59', '30 RPM', '220V/440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(170, 'A41 2 UH45 P100', 'REDUCTOR', 'A41 2 UH45 P100', '0.00', -1, '', '45', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(171, 'MOTOR PASO A PASO ', 'MOTOR PASO A PASO ', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(172, 'VF49 24:1 P80 B5 ', 'REDUCTOR', 'VF49 24:1 P80 B5 ', '0.00', -1, '', '24', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(173, 'REJILLA VENTILACION ', 'REJILLA VENTILACION 120X120 ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(174, '0,5HP 3600 RPM', 'MOTOR', '0,5HP 3600 RPM', '0.00', -1, '0,5 HP', '', '3600 RPM', '220V/440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(175, 'IG5A 3HP', 'VARIADOR', 'IG5A', '0.00', -2, '3 HP', '', '', '220', 7, 1, '', '', '', '', '', '', '', '', ''),
(176, 'SI -VVVF', 'SERVICIO DE INSTALACIÓN DE VARIADOR DE VELOCIDAD', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(177, 'SMLF-6m', 'Servicio de montaje Linea Festoon', '', '0.00', 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', ''),
(178, 'SMLF', 'Servicio de montaje Linea Festoon ', '', '0.00', -2, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(179, 'EJE ', 'EJE PARA REDUCTOR', '', '0.00', -7, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(180, 'XWD7 71:1 P100 B5 ', 'REDUCTOR', 'XWD7 71:1 P100 B5 ', '0.00', -1, '', '71', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(181, 'VF49 28:1 P80 B14 0,', 'MOTOREDUCTOR', 'VF49 28:1 P80 B14 0,75HP', '0.00', -1, '0,75 HP ', '28 ', '64 RPM', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(182, 'VF44 28:1 P71 B14 0,', 'MOTOREDUCTOR', 'VF44 28:1 P71 B14 0,75HP', '0.00', -1, '0,75', '28', '64 RPM', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(183, 'IG5A 10 HP 220V ', 'VARIADOR', 'IG5A 10 HP 220V ', '0.00', -1, '10 HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', '', ''),
(184, 'CMT2078X', 'PANTALLA', 'CMT2078X', '0.00', -4, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(185, 'VF30 F1 7 P63 B14 0,', 'MOTOREDUCTOR', 'VF30 F1 7 P63 B14 0,25 HP', '0.00', -1, '0,25 HP', '7', '257 RPM', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(186, 'A30 2UH 35 P100 2,6 ', 'MOTOREDUCTOR', 'A30 2UH 35 P100 2,6 KW', '0.00', -1, '2,6KW', '23,3 : 1 ', '76 RPM', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(187, 'COPG', 'Certificacion Operario Puentes Grua', '', '0.00', -19, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(188, 'WEG 1HP 1800 RPM ', 'MOTOR', 'WEG 1HP 1800 RPM ', '0.00', -2, '1 HP', '', '1800 RPM ', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(189, 'MTTO PREV', 'MANTENIMIENTO PREVENTIVO PUENTE GRÚA', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(190, 'VF49 P14 P71 B14 0,5', 'MOTOREDUCTOR', 'VF49 P14 P71 B14 0,5HP', '0.00', -3, '0,5 HP', '14', '128 RPM', '220V /440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(191, 'VFC 44 P100 RB ', 'REDUCTOR', 'VFC 44 P100 RB ', '0.00', -5, '', '100', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(192, 'VF 49 PI 24 HS B3 ', 'REDUCTOR', 'VF 49 PI 24 HS B3 ', '0.00', -1, '', '24', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(193, 'IG5A 2HP 220V ', 'VARIADOR', 'IG5A 2HP 220V ', '0.00', -1, '2HP', '', '', '220V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(194, 'ANTRD6', 'PROTECTOR DE FASE ANTRD6', '', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(195, 'BOT-A', 'BOTONERA ALAMBRICA GIRAVAN', '', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(196, 'RPT1TN', 'REPUESTOS TROLLEY 1TON', '', '0.00', -2, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(197, 'VFC49 P24 P80 B5 ', 'REDUCTOR', 'VFC49 P24 P80 B5 ', '0.00', -1, '', '24', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(198, 'BN 71 B4 B14 0,5 HP ', 'MOTOR BONFIGLIOLI', 'BN 71 B4 B14 0,5 HP 1800 RPM', '0.00', -1, '0,5 HP', '', '1800 RPM ', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(199, 'VF49 P18 P71 B14', 'REDUCTOR', 'VF49 P18 P71 B14', '0.00', -1, '', '18', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(200, 'VF49 P24 P71 B14 0,5', 'MOTOREDUCTOR', 'VF49 P24 P71 B14 0,5 HP', '0.00', -1, '0,5 HP', '24', '75', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(201, 'SENSOR TEMPERATURA V', 'SENSOR TEMPERATURA VARIADOR ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(202, 'WEG 4 HP 1800RPM', 'MOTOR', 'WEG 4 HP 1800RPM', '0.00', -2, '4 HP', '', '1800 RPM ', '220V/440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(203, 'VF44 P10 P71 B14 ', 'REDUCTOR', 'VF44 P10 P71 B14 ', '0.00', -1, '', '10', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(204, 'GCPC2TN', 'GUARDA CADENA PARA POLIPASTO 2TON', '', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(205, 'A90 4 UH 100 HS 304.', 'MOTOREDUCTOR', 'A90 4 UH 100 HS 304.9 P132 B3 ', '0.00', -2, '7,5 HP (1200 RPM)', '304,9 A 1 ', '4 RPM ', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(206, 'WEG 1,5 HP IP 65 A 1', 'MOTOR', 'WEG 1,5 HP IP 65 A 1800 RPM ', '0.00', -2, '1,5 HP', '', '1800 RPM ', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(207, 'EJE HUECO PARA F412', 'EJE HUECO PARA F412', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(208, 'LBEP', 'EMPALME PERFIL', '', '0.00', -15, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(209, 'LBSR', 'SOPORTE REGULABLE', '', '0.00', -30, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(210, 'LBTE', 'TAPA EXTREMA', '', '0.00', -2, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(211, 'LBAE', 'ALIMENTACION EXTREMA', '', '0.00', -2, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(212, 'LBEC', 'EMPALME CONDUCTOR', '', '0.00', -60, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(213, 'VF30 P30 P64 B14 0,3', 'MOTOREDUCTOR', 'VF30 P30 P64 B14 0,33 HP', '0.00', -1, '0,33 HP', '30', '60 RPM ', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(214, 'TEKDRIVE 2 HP 220V ', 'VARIADOR', 'TEKDRIVE 2 HP 220V ', '0.00', -2, '2HP', '', '', '220V', 2, 1, '', '', '', '', '', '', '', '', ''),
(215, 'FLANCHE PARA VF44 LA', 'FLANCHE PARA VF44 LARGO ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(216, 'KIT RODAMEINTOS/ RET', 'KIT RODAMEINTOS/ RETENEDORES W110 20:1  P132 B5  B3 ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(217, 'ACOPLE NEMA TC 364-3', 'ACOPLE NEMA TC 364-365 ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(218, 'KIT REDUCCION PLANET', 'KIT REDUCCION PLANETARIO ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(219, 'TANQUE TIPO VERTICAL', 'TANQUE TIPO VERTICAL 3000LTS ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(220, 'TANQUE TIPO VERTICAL', 'TANQUE TIPO VERTICAL 5000LTS', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(221, 'TANQUE TIPO VERTICAL', 'TANQUE TIPO VERTICAL 6000LTS ', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(222, 'ACOPLAMIENTO DE ENGR', 'ACOPLAMIENTO DE ENGRANAJES TIPO DENTADO 1035G20', '', '0.00', -2, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(223, 'PS5TN', 'SERVICIO DE INSTALACION DE REPUESTO ', 'PESTILLO SEGURIDAD 5TN', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(224, 'LP 090-M01-10-111 MS', 'REDUCTOR', 'LP 090-M01-10-111 MSK050 ', '0.00', -2, '', '10:1 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(225, 'ELBV', 'ESCOBILLAS CARRO COLECTOR', '', '0.00', -8, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(226, 'W63 7:1 P80 B14 ', 'REDUCTOR', 'W63 7:1 P80 B14 ', '0.00', -1, '', '7', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(227, 'BA80B4 0,9KW ', 'MOTOFRENO ', 'BA80B4 0,9KW', '0.00', -1, '0,9KW ', '', '1680 RPM', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(228, 'IG5A 30HP 440V ', 'VARIADOR', 'IG5A 30HP 440V ', '0.00', -1, '30 HP', '', '', '440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(229, 'VF49 P36 P63 B14', 'REDUCTOR', 'VF49 P36 P63 B14', '0.00', -1, '', '36', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(230, 'H100 50HP 440V', 'VARIADOR', 'H100 50HP 440V', '0.00', -1, '50HP', '', '', '440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(231, 'NMRV 150 i:60 7,5HP ', 'MOTOREDUCTOR', 'NMRV 150 i:60 7,5HP CON FRENO ', '0.00', -1, '7,5 HP CON FRENO ', '60 ', '30 RPM', '220V / 440V', 2, 1, '', '', '', '', '', '', '', '', ''),
(232, 'BONFIGLIOLI VBG2FD24', 'VARIADOR MECANICO ', 'BONFIGLIOLI VBG2FD24HSHA1', '0.00', 0, 'BONFIGLIOLI', '', '', 'BONFIGLIOLI ', 2, 0, '', '', '', '', '', '', '', '', ''),
(233, 'BONFIGLIOLI VBG2FD24', 'VARIADOR MECANICO', 'BONFIGLIOLI VBG2FD24HSHA1', '0.00', -1, 'BONFIGLIOLI', '', '', 'BONFIGLIOLI', 2, 1, '', '', '', '', '', '', '', '', ''),
(234, 'WR 63 U 90 B5 V6', 'REDUCTOR', 'WR 63 U 90 B5 V6', '0.00', -1, '', '90 ', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(235, 'VF44 P7 P71 B14 0,5 ', 'MOTOREDUCTOR', 'VF44 P7 P71 B14 0,5 HP', '0.00', -2, '0,5 HP', '7', '250 RPM ', '220V / 440V ', 2, 1, '', '', '', '', '', '', '', '', ''),
(236, 'TANQUE 1500 LTS', 'TANQUE 1500 LTS', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(237, 'GK90 60W P25 ', 'MOTOREDUCTOR', 'GK90 60W P25 ', '0.00', -1, '60W', '25', '62 RPM', '220V MONO', 3, 1, '', '', '', '', '', '', '', '', ''),
(238, 'VF49 F1 P40 P90 B14 ', 'MOTOREDUCTOR', 'VF49 F1 P40 P90 B14 0,75 HP', '0.00', -2, '0,75 HP ', '40 ', '45 RPM ', '220V / 440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(239, 'VF44 F1 P40 P80 B14 ', 'MOTOREDUCTOR', 'VF44 F1 P40 P80 B14 0,75 HP ', '0.00', -1, '0,75HP', '40', '45 RPM ', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(240, 'SER MOTOR DE SILO ', 'SER MOTOR DE SILO ', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(241, 'SERV , URG . DOMINGO', 'SERV , URG . DOMINGO MOTOR ', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(242, 'PIÑON PARA W86U P90 ', 'PIÑON PARA W86U P90 B14 EJE 24 MM ', 'BUJE ESTRIADO PARA W86', '0.00', -10, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(243, 'VF49 P14 P71 B14 ', 'REDUCTOR', 'VF49 P14 P71 B14 ', '0.00', -1, '', '14', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(244, 'GK90 90W', 'MOTOR', 'GK90 90W', '0.00', -1, '90W ', '', '1350 RPM ', '220V MONO', 3, 1, '', '', '', '', '', '', '', '', ''),
(245, 'VF44 P20 P71 B14 0,5', 'MOTOREDUCTOR', 'VF44 P20 P71 B14 0,5 HP ', '0.00', -5, '0,5 HP ', '20 ', '90 RPM ', '220V / 440V ', 3, 1, '', '', '', '', '', '', '', '', ''),
(246, 'VF30 P7 P63 B14 0,33', 'MOTOREDUCTOR', 'VF30 P7 P63 B14 0,33 HP ', '0.00', -2, '0,33 HP ', '7', '250 RPM ', '220V / 440V ', 3, 1, '', '', '', '', '', '', '', '', ''),
(247, 'SFDC ', 'Switch final de carrera polipasto 2tn', '', '0.00', -1, '', '', '', '', 7, 1, '', '', '', '', '', '', '', '', ''),
(248, 'FUENTE DE VOLTAJE 24', 'FUENTE DE VOLTAJE 24V / 5A', '', '0.00', -3, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(249, 'C100 7,5 HP A 220V ', 'VARIADOR', 'C100 7,5 HP A 220V ', '0.00', -1, '7,5 HP ', '', '', '220V', 3, 1, '', '', '', '', '', '', '', '', ''),
(250, 'VFC49 P80 P80 B14 0,', 'MOTOREDUCTOR', 'VFC49 P80 P80 B14 0,75 HP', '0.00', -2, '0,75 HP', '80', '23 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(251, 'WC86 P30 P90 B14 1 H', 'MOTOREDUCTOR', 'WC86 P30 P90 B14 1 HP ', '0.00', -2, '1 HP ', '30 ', '60 RPM ', '220V/440V ', 3, 1, '', '', '', '', '', '', '', '', ''),
(252, 'NMRV63 P50 P90 B14 1', 'MOTOREDUCTOR', 'NMRV63 P50 P90 B14 1 HP ', '0.00', -2, '1 HP ', '50 ', '36 RPM ', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(253, 'ACOPLE REXNORD ', 'ACOPLE REXNORD ', '', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(254, 'IC5 0,5 HP / 220V ', 'VARIADOR', 'IC5 0,5 HP / 220V ', '0.00', -2, '0,5 HP ', '', '', '220V', 3, 1, '', '', '', '', '', '', '', '', ''),
(255, 'MOTOR DE INDUCCION', 'MOTOR DE INDUCCION', '', '0.00', -2, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(256, 'ANALISIS TANQUE ASEP', 'ANALISIS TANQUE ASEPTICO', '', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(257, 'W86 P30 P90 B5 ', 'REDUCTOR', 'W86 P30 P90 B5 ', '0.00', -1, '', '30', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(258, 'SERV. FABRICACION DE', 'SERV. FABRICACION DE TABLERO', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(259, 'MT8071IE', 'PANTALLA', 'MT8071IE', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(260, 'FRENO PARA MOTOR BON', 'FRENO PARA MOTOR BONFIGLIOLI FA05', '', '0.00', -2, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(261, '4', '', '', '0.00', 0, '', '', '', '', 3, 0, '', '', '', '', '4', '', '', '', '4'),
(262, '7300040004', '7300040004', '4X4 mm2', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '4X4 mm2 ', '', '', '', 'CABLE 4X4 mm2 ENCAUCHETADO'),
(263, 'VF30 P7 P63 B14', 'REDUCTOR', 'VF30 P7 P63 B14', '0.00', -1, '', '7', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(264, 'cMT FHDX-220', 'PANTALLA', 'cMT FHDX-220', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(265, 'BA 90 LA6 1,1/1,3 KW', 'MOTOFRENO', 'BA 90 LA6 1,1/1,3 KW', '0.00', -1, '1,1 / 1,3 KW', '', '1800 RPM', '220/440V', 8, 1, '', '', '', '', '', '', '', '', ''),
(266, 'MRBVFF', 'MOTOREDUCTOR', 'VF44 F1 P14 P71 B14', '0.00', -2, '0.5HP', '14', '128RPM', '220V/440V', 8, 1, '', '', '', '', '', '', '', '', ''),
(267, 'GK60 300 220V ', 'MOTOREDUCTORMINI', 'GK60 300 220V ', '0.00', -1, '10W', '300', '6 RPM ', '220V', 3, 1, '', '', '', '', '', '', '', '', ''),
(268, 'AGL402-21 7,5KW / 44', 'VARIADOR', 'AGL402-21 7,5KW / 440V', '0.00', -1, '7,5 KW', '', '', '440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(269, 'W63 U 19 P90 B14 2HP', 'MOTOREDUCTOR', 'W63 U 19 P90 B14 1 HP ', '0.00', -1, '2 HP', '19', '95 RPM', '220/440V ', 3, 1, '', '', '', '', '', '', '', '', ''),
(270, 'W63 U 38 P90 B14 1HP', 'MOTOREDUCTOR', 'W63 U 38 P90 B14 1HP', '0.00', -1, '1 HP ', '38', '46 RPM', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(271, 'repuesto para polipa', 'placa de bloqueo', '', '0.00', -1, '', '', '', '', 2, 1, '', '', '', '', '', '', '', '', ''),
(272, 'VFC 44 P40 P80 B14 0', 'MOTOREDUCTOR', 'VFC 44 P40 P80 B14 0,75HP', '0.00', -1, '0,75 HP ', '40 ', ' 45 RPM ', '220V/440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(273, 'FLANCHE PARA VFC44', 'FLANCHE PARA VFC44', '', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(274, 'MRBW', 'MOTOREDUCTOR CON FRENO ', 'W110 ', '0.00', 0, '3HP', '24', '75 RPM', '220V/440V ', 6, 1, '', '', '', '', '', '', '', '', ''),
(275, 'W110 P24 P90 B5 3HP', 'MOTOFRENO BONFIGLIOLI ', 'W110 P24 P90 B5 3HP', '0.00', -1, '3HP', '24', '75 RPM', '220V/440V', 6, 1, '', '', '', '', '', '', '', '', ''),
(276, 'SERV. FABRICACION LI', 'SERV. FABRICACION LINEA DE EMPUJE PARA T', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(277, 'SERV. PARA MODIFICAC', 'SERV. PARA MODIFICACIÓN DE LA LÍNEA DE D ', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(278, 'SERV. FABRICACION DE', 'SERV. FABRICACION DE TABLERO PARA CONEX ', '', '0.00', -1, '', '', '', '', 0, 1, '', '', '', '', '', '', '', '', ''),
(279, 'PATAS PARA VF49', 'PATAS PARA VF49', '', '0.00', -3, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(280, 'VF 49 F1 28 P71 B14', 'REDUCTOR', 'VF 49 F1 28 P71 B14', '0.00', -1, '', '28', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(281, 'RECTIFICADOR DE VOLT', 'RECTIFICADOR DE VOLTAJE PARA FRENO VIS ', '', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(282, 'XBC-DP14E,EXP', 'PLC ', 'XBC-DP14E,EXP', '0.00', -1, '', '', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(283, 'VFC 49 P14 P80 B14 ', 'REDUCTOR', 'VFC 49 P14 P80 B14 ', '0.00', -1, '', '14', '', '', 3, 1, '', '', '', '', '', '', '', '', ''),
(284, 'VFC 63 P25 P90 B5 1 ', 'MOTOREDUCTOR', 'VFC 63 P25 P90 B5 1 HP ', '0.00', -1, '1 HP ', '25', '75 RPM', '220V / 440V', 3, 1, '', '', '', '', '', '', '', '', ''),
(285, 'W63 U P15 P80 B5', 'REDUCTOR', 'W63 U P15 P80 B5', '0.00', -1, '', '15', '', '', 8, 1, '', '', '', '', '', '', '', '', ''),
(286, 'VFC 44 P10 P63 B14 ', 'REDUCTOR', 'VFC 44 P10 P63 B14 ', '0.00', -2, '', '10', '', '', 8, 1, '', '', '', '', '', '', '', '', ''),
(287, 'IG5A 1HP 440V', 'VARIADOR', 'IG5A 1HP 440V', '0.00', 0, '1 HP', '', '', '440V', 7, 1, '', '', '', '', '', '', '', '', ''),
(288, 'REPUESTO FLANCHE LAT', 'W63', '', '0.00', -1, '', '', '', '', 8, 1, '', '', '', '', '', '', '', '', ''),
(289, 'WEG 1 HP 1800 RPM', 'MOTOR', 'WEG 1 HP 1800 RPM', '0.00', 0, '1 HP', '', '1800 RPM', '220/440V', 8, 1, '', '', '', '', '', '', '', '', ''),
(290, 'W63 U P15 P71 B5 ', 'REDUCTOR', 'W63 U P15 P71 B5 ', '0.00', -1, '', '15', '', '', 6, 1, '', '', '', '', '', '', '', '', ''),
(291, 'BA 80 B2 1,1/1,3 KW ', 'MOTOFRENO', 'BA 80 B2 1,1/1,3 KW ', '0.00', -1, '1,1 / 1,3 KW', '', '3600 RPM ', '220V/440V ', 6, 1, '', '', '', '', '', '', '', '', ''),
(292, 'VF 49 1.5HP 82RPM', 'MOTOREDUCTOR', 'VF49', '0.00', -1, '1.5 HP ', '20', '82 RPM ', '220V ', 6, 1, '', '', '', '', '', '', '', '', ''),
(293, 'DRIVE EMERSON SKBSKB', 'VARIADOR', 'DRIVE EMERSON SKBSKB110075 120', '0.00', -1, '7.5A', '', '', '120', 8, 1, '', '', '', '', '', '', '', '', ''),
(294, 'VF44 P35 P71 B5 0.33', 'MOTOREDUCTOR BONFIGLIOLI', 'VF44 P35 P71 B5 0.33HP ', '0.00', -1, '0.33HP', '35 ', '51 RPM ', '220V/440V', 6, 1, '', '', '', '', '', '', '', '', ''),
(295, 'SYN10 S 220 05 AF ', 'VARIADOR BONFIGLIOLI', 'SYN10 S 220 05 AF ', '0.00', -1, '1 HP ', '', '', '220V', 3, 1, '', '', '', '', '', '', '', '', ''),
(296, 'W86UP100B5', 'REDUCTOR', 'BONFI W86UP100B5', '0.00', -2, '', '7 A 1', '', '', 1, 1, '', '', '', '', '', '', '', '', ''),
(297, 'H1SH03', 'REDUCTOR HELICOIDAL FLENDER', 'H1SH03', '0.00', -1, '50KW', '2.00/1', '1274RPM', '', 6, 1, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombre`, `NIT`, `telefono`, `correo`, `usuario_id`, `estado`) VALUES
(1, 'COLGATE', '929292', '31044839345', 'soporte@colga.com', 1, 1),
(2, 'SAVANCE', '565656', '8284848', 'soporte@savance.com', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remision`
--

CREATE TABLE `remision` (
  `id_requisicion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecharequisicion` varchar(30) NOT NULL,
  `tiempoentregarequisicion` varchar(30) NOT NULL,
  `personaquesolicita` varchar(30) NOT NULL,
  `personaqueautoriza` varchar(30) NOT NULL,
  `item` varchar(30) NOT NULL,
  `numerorequisicion` int(11) NOT NULL,
  `numeroorden` int(11) NOT NULL,
  `nombrevendedor` varchar(30) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `observaciones` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `remision`
--

INSERT INTO `remision` (`id_requisicion`, `id_cliente`, `fecharequisicion`, `tiempoentregarequisicion`, `personaquesolicita`, `personaqueautoriza`, `item`, `numerorequisicion`, `numeroorden`, `nombrevendedor`, `fecha`, `observaciones`) VALUES
(34, 124, '2023-05-30', '2023-05-31', 'YERALDIN SANCHEZ', 'JOHN GIRALDO', '', 28025, 28025, 'SANTIAGO (FV)', '2022-12-01 00:00:00', 'CORREA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remisionproductos`
--

CREATE TABLE `remisionproductos` (
  `id_remisionproductos` int(10) NOT NULL,
  `id_remision` int(10) DEFAULT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  `estatus` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `remisionproductos`
--

INSERT INTO `remisionproductos` (`id_remisionproductos`, `id_remision`, `producto`, `cantidad`, `precio`, `estatus`) VALUES
(5, 34, 'CORREA', 2, '29000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervicio`
--

CREATE TABLE `tiposervicio` (
  `codtiposervicio` int(11) NOT NULL,
  `servicio` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiposervicio`
--

INSERT INTO `tiposervicio` (`codtiposervicio`, `servicio`) VALUES
(1, 'ORDEN DE COMPRA'),
(2, 'PRESTAMO'),
(3, 'GARANTIA'),
(4, 'CAMBIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `usuario`, `clave`, `estado`) VALUES
(1, 'Esteban Agualimpia', 'sistemas@giravan.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Denis Torres', 'ventas3@giravan.com', 'denis', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Santiago', 'ventas@giravan.com', 'santiago', '21232f297a57a5a743894a0e4a801fc3', 1),
(4, 'Yeraldin Sanchez', 'facturacion@giravan.com', 'Yeraldin', '21232f297a57a5a743894a0e4a801fc3', 1),
(5, 'Adrian Muriel', 'pg@giravan.com', 'adrian', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'Geraldin', 'ventas1@giravan.com', 'Yeraldinne', '21232f297a57a5a743894a0e4a801fc3', 1),
(7, 'Sebastian Vanegas', 'ventas2@giravan.com', 'Sebastian', '21232f297a57a5a743894a0e4a801fc3', 1),
(8, 'Luisa Toro', 'ventas4@giravan.com', 'luisa', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` decimal(40,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tiposervicio` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `tiempoentrega` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ordeno` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcionfacturar` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombrevendedor` varchar(30) NOT NULL,
  `numeroorden` varchar(15) NOT NULL,
  `formapago` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nordencompra` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `incluye` varchar(300) NOT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estadoorden` varchar(30) NOT NULL DEFAULT 'Seleccionar Estado',
  `numerofactura` varchar(30) NOT NULL,
  `mododespacho` varchar(30) NOT NULL,
  `numeroguia` varchar(30) NOT NULL,
  `archivo` varchar(30) NOT NULL,
  `tipo_archivo` varchar(20) NOT NULL,
  `observacion_despacho` varchar(30) NOT NULL,
  `fecha_factura` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_cliente`, `total`, `id_usuario`, `tiposervicio`, `fecha`, `tiempoentrega`, `ordeno`, `descripcionfacturar`, `nombrevendedor`, `numeroorden`, `formapago`, `nordencompra`, `incluye`, `observaciones`, `estadoorden`, `numerofactura`, `mododespacho`, `numeroguia`, `archivo`, `tipo_archivo`, `observacion_despacho`, `fecha_factura`) VALUES
(1, 1, '3490000.00', 3, '1', '2022-12-06 00:00:00', '2022-12-06', 'NORELLA RAMIREZ', 'REDUCTOR BONFIGLIOLI MODELO: W63 UFC1 30 P90 B14, TIPO SINFÍN CORONA', '', '28032', '30 Días', '001-FOS-00009210', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje hueco y flanche lateral corto', '6', '', '', '', '', '', '', NULL),
(2, 2, '4237200.00', 3, '1', '2022-12-06 00:00:00', '2022-12-20', 'EVELIN TATIANA OSPINA', 'Motoreductor I:60 RF:vf44 f1 p63 b14 b3 -', '', '28033', '30 Días', '4502464514', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje hueco y flanche lateral corto', '6', '', '', '', '', '', '', NULL),
(3, 3, '3528600.00', 3, '1', '2022-12-06 00:00:00', '2022-12-07', 'HERNANDO NOY FIGUEROA', 'REDUCTOR BONFIGLIOLI VF 49 F1 10 P80 B14', '', '28034', '30 Dias ', 'Por correo ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje macizo y flanche lateral largo\r\nDirección de entrega: AV 13 # 7 85 Funza Cundinamarca\r\nCTG 026859 (Diciembre)', '6', ' 18270 ', 'LOCAL', '', '', '', '', NULL),
(4, 4, '4165600.00', 3, '1', '2022-12-07 00:00:00', '2022-12-07', 'JAZMIN ROBLES', 'Motorreductor Sinfín Corona a 90° WC63 Vel sal: 3,7 rpm, Rel: 300:1, 1 HP 220- 440 V Eje hueco 25 mm', '', '28035', '30 Días', '000019788', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTORREDUCTOR CON PREREDUCCION\r\ncorreo de facturación: facturacion@dyf.com.co\r\nCTG 026865 (Diciembre)', '6', ' 18298', 'LOCAL', '', '', '', '', NULL),
(6, 5, '0.00', 0, '3', '2022-12-07 00:00:00', '2022-12-09', 'YENIFER TOVAR MONRROY', 'MOTORREDUCTOR CON FRENO WX2 17 P80 B5 1,5 HP (Motofreno)', '', '28037', 'Contado', '11093', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTORREDUCTOR CON FRENO WX2 17 P80 B5 1,5 HP (Motofreno)\r\nDirección de entrega: Planta 1 Cra. 43 N 6 - 89, Barranquilla, Recibe Roció Utria Cel. 320 828 2171', '6', ' 18246', 'LOCAL', '', '', '', '', NULL),
(7, 6, '273700.00', 3, '1', '2022-12-07 00:00:00', '2022-12-16', 'DIANA PATRICIA MENA BLANDON', 'FLANCHE B5 PARA MOTOR GIRAVAN P80', '', '28038', '30 Días', '1008395', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CTG 026842 (Noviembre)', '6', ' 18316', 'TCC', ' 352347050', '', '', '', NULL),
(8, 7, '6008000.00', 2, '1', '2022-12-10 00:00:00', '2023-06-10', 'ASTRID MARTINEZ', '', '', '28039', '45 DIAS ', '4500074841', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Patas y eje macizo', '1', '', '', '', '', '', '', NULL),
(11, 8, '4571600.00', 6, '1', '2022-12-13 00:00:00', '2022-12-21', 'Gabriel Andres de la Val', 'REDUCTOR REF: VF30 F1 P63 B14 CODE: 200350069 MOUNT. POS. : B 3 RELACION 10 a 1', '', '28041', 'A CONVENIR', '0000341836', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'REDUCTOR REF: VF30 F1 P63 B14\r\nCODE: 200350069 MOUNT. POS. : B\r\n3 RELACION 10 a 1\r\n', '6', ' 18266', 'TCC', ' 352194348', '', '', '', NULL),
(12, 10, '14056000.00', 2, '1', '2022-12-15 00:00:00', '2023-01-05', 'TANIA DUARTE', '', '', '28044', 'CREDITO', 'TR 8882', '', 'W63 FLANCHE Y EJE HUECO \r\nWR86 FLANCHE Y EJE HUECO \r\ncorreo de facturación: auxcompras@tramecltda.com\r\ndireccion de entrega : parque industrial lutransa bodega 11 entrada parcelas km2 cota-cundinamarca', '6', ' 18325', 'LOCAL', '', '', '', '', NULL),
(13, 11, '10957000.00', 2, '1', '2022-12-16 00:00:00', '2022-12-21', 'Manue Fernando Gallego Alzate ', 'Variador IC5 1HP / Variador IC5 3HP', 'SANTIAGO', '28045', 'Contado ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Dirección de entrega calle 9 # 1-05 Bodega 2 Variante la Badea Dos Quebradas Risaralda\r\nnumero de contacto 3232295269', '6', ' 18271 ', 'TCC', ' 352235044', '', '', '', NULL),
(14, 12, '1340000.00', 2, '1', '2022-12-16 00:00:00', '', 'Yilmar Ruiz', 'Disco para freno reductor', 'SANTIAGO', '28047', 'Contado', '5711', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Direcciòn de entrega calle 31 # 23-50', '6', ' 18281', 'TCC', ' 352267312', '', '', '', NULL),
(15, 13, '2979000.00', 2, '1', '2022-12-16 00:00:00', '2022-12-16', 'Orden verbal ', 'La confirmaciòn se hizo por whatsapp', 'SANTIAGO', '28048', 'Contado', 'Por whatsapp', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18273', 'TCC', ' 352237144', '', '', '', NULL),
(16, 8, '2592000.00', 2, '1', '2022-12-17 00:00:00', '2022-12-19', 'ANDRES FELIPE ALCALÁ', 'REDUCTOR REF: VF49 F1 P80 B14 RELACION 18 a 1 B O N F I G L', 'SANTIAGO', '28049', 'CREDITO', '0000343987', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Flanche B14\r\n', '6', ' 18288  ', 'TCC', ' 352281939 ', '', '', '', NULL),
(18, 9, '2857000.00', 6, '1', '2022-12-19 00:00:00', '2022-12-26', 'Cesar Camilo Montaño ', 'MOTOR CON FRENO', '', '28050', 'A CONVENIR', '6200247285', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR CON FRENO BA71 B2 P 0,75 VS 3600 V 220V/440V', '6', ' 18276 ', 'TCC', ' 352252637', '', '', '', NULL),
(19, 14, '4400000.00', 7, '1', '2022-12-19 00:00:00', '2022-12-21', 'ALONSO GARCIA', '', 'SEBASTIAN', '28051', 'CONTADO', 'WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Carro colector linea blindada verde (40Amperios)\r\nTelemando marca TELERADIO (con accesorios)', '6', ' 18289', 'LOCAL', '', '', '', '', NULL),
(20, 15, '17783000.00', 2, '1', '2022-12-19 00:00:00', '2022-12-21', 'Erika Ivonne Leginz', 'Motorreductor sin fin corona bonfiglioli W63, relacion 10 con ', 'SANTIAGO', '28052', 'Credito', 'PED 00303915', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'W63 i10 Flanche P90 B14\r\nW63 i19. Flanche P90 B14\r\nw86 i100 flanche corto P80 B5', '6', ' 18268', 'LOCAL', '', '', '', '', NULL),
(21, 16, '2151000.00', 2, '1', '2022-12-19 00:00:00', '2022-12-22', 'Alejandro Botero', 'Servicio de mantenimiento ', 'SANTIAGO', '28053', 'Credito', 'Por whatsapp', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Modelo del equipo: XLD5\r\nKit de rodamientos \r\nKit de retenedores \r\nEmpaque tapa de salida \r\nAceite y pintura ', '6', ' 18305', 'LOCAL', '', '', '', '', NULL),
(22, 17, '1748000.00', 7, '1', '2022-12-20 00:00:00', '2022-12-20', 'William Libre', '', 'SEBASTIAN', '28054', '30 días', '21122022-0001', '4 perfiles linea blindada HFP56-4-8/35A, 4 empalmes perfil, 16 empalmes conductor y 4 soportes regulables', 'Ver lista de despacho adjunta', '6', ' 18292', 'TCC', ' 352288009', '', '', '', NULL),
(26, 18, '1900000.00', 2, '1', '2022-12-20 00:00:00', '2022-12-22', 'David Garcia ', 'Motorreductor Helicoidal', 'SANTIAGO', '28055', 'Contado ', '867', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Los equipos van con patas. ', '6', ' 18296 ', 'LOCAL', '', '', '', '', NULL),
(27, 18, '1900000.00', 2, '1', '2022-12-20 00:00:00', '2022-12-22', 'David Garcia ', 'Motorreductor Helicoidal', 'SANTIAGO', '28056', 'Contado ', '868', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Los dos equipos van con patas.', '6', ' 18297', 'LOCAL', '', '', '', '', NULL),
(29, 20, '7860000.00', 2, '1', '2022-12-20 00:00:00', '2022-12-27', 'Laura Aristizabal ', 'MOTORREDUCTOR SINFIN CORONA BONFIGLIOLI VFR49 P1 108 P63 B5', 'SANTIAGO', '28059', '30 Dias ', '4002642', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo va con Brazo de torque y eje hueco ', '6', ' 18336 ', 'LOCAL', ' 352386856', '', '', '', NULL),
(30, 21, '2357200.00', 2, '1', '2022-12-21 00:00:00', '2022-12-24', 'Andres Montoya ', 'Reductor bonfiglioli 28:1 VF30- P63-B14 ', 'SANTIAGO', '28060', '45 Dias', 'A02-COC-00114431', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo lleva Flanche P63 B14', '6', ' 18290', 'LOCAL', '', '', '', '', NULL),
(31, 22, '4640000.00', 7, '1', '2022-12-21 00:00:00', '2022-12-24', 'Idelso Pájaro', 'CARROS INTERMEDIOS', 'SEBASTIAN', '28061', '30 dias', '26127', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18287', 'TCC', ' 352281363', '', '', '', NULL),
(32, 23, '6750000.00', 6, '1', '2022-12-22 00:00:00', '2022-12-22', 'carlos sierra', 'motor weg 75 Hp 1800 rpm', 'SANTIAGO', '28062', 'CONTADO', 'NA', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'motor weg 75 Hp 1800 rpm', '4', '', '', '', '', '', '', NULL),
(33, 24, '2390000.00', 2, '1', '2022-12-22 00:00:00', '2022-12-22', 'William Restrepo Elorza', 'Reductor marca bonfiglioli VF49 P7 P80 B14', 'SANTIAGO', '28062', 'Contado', '0582', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18291', 'LOCAL', '', '', '', '', NULL),
(34, 25, '5533100.00', 2, '1', '2022-12-22 00:00:00', '2022-12-27', 'MILTON POLO', 'MOTORRED BONFIGLIOLI W63 U D25', 'SANTIAGO', '28063', '45 DIAS ', '0472856', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '4', '', '', '', '', '', '', NULL),
(35, 26, '12480000.00', 2, '1', '2022-12-22 00:00:00', '2022-12-30', 'Carlos Toro', 'Automatizacion de alimentador ', 'SANTIAGO', '28063', '30 DIAS', 'VERBAL', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18329', 'LOCAL', '', '', '', '', NULL),
(39, 27, '5410000.00', 2, '1', '2022-12-23 00:00:00', '2022-12-24', 'LUISA ARTEAGA', 'REPARACION DE MOTORREDUCTOR XWD6 71:1  7.5 HP', 'SANTIAGO', '28064', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CAMBIO DE EMPAQUES/ REDUCTOR \r\nCAMBIO DE RETENEDORES / REDUCTOR \r\nACEITE Y PINTURA\r\nMOTOR NUEVO ', '6', ' 18304 ', 'LOCAL', '', '', '', '', NULL),
(40, 28, '7430000.00', 2, '1', '2022-12-27 00:00:00', '2022-12-29', 'JEFFER CELIS ', 'MOTORREDUCTOR VF44 FA1 P28 P71 B14 B3 RB  MOTOR DE 0,5 HP', 'SANTIAGO', '28065', 'CONTADO ', '020-5482', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18311 ', 'LOCAL', '', '', '', '', NULL),
(41, 29, '3324000.00', 2, '1', '2022-12-27 00:00:00', '2022-12-28', 'JOHN RODRIGUEZ', 'WC  86 60/1 3HP A 1800RPM, PROTECCION IP55, 220/440 EJE HUECO 35mm', 'SANTIAGO', '28066', 'CONTADO', 'POR WHATSAP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE HUECO 35mm', '6', ' 18303  ', 'LOCAL', '', '', '', '', NULL),
(43, 30, '10214000.00', 7, '1', '2022-12-27 00:00:00', '', 'Leidy Solangie', 'Polipasto Electrico de 1TN con 6m de izaje, a gancho.', 'SEBASTIAN', '28067', '90 dias', '4501196006', 'Polipasto electrico a cadena (440V) de 6m de cadena SIN TROLLEY', 'Enviar a 440V, 6 metros de cadena, sin trolley', '6', '', '', '', '', '', '', NULL),
(44, 31, '799000.00', 2, '1', '2022-12-27 00:00:00', '2022-12-27', 'DAVID RESTREPO ', 'VFC49 P18 P80 B14 BRAZO DE TORQUE Y EJE HUECO ', 'SANTIAGO', '28068', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON BRAZO DE TORQUE Y EJE HUECO \r\nCAMBIAR EL FLANCHE DEL EQUIPO QUE HAY MALO EL NMRV 50', '4', ' 18306', 'LOCAL', '', '', '', '', NULL),
(45, 29, '12900000.00', 2, '1', '2022-12-27 00:00:00', '2022-12-29', 'JOHN RODRIGUEZ ', 'MOTOREDUCTOR CILOIDAL CON FRENO ELECTROMAGNETICO CON VARIADOR LS/LG EN GABINETE ', 'SANTIAGO', '28069', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '- LA REFERENCIA DEL MOTOFRENO ES BA 132 MBX4	Y EL REDUCTOR VA CON PATAS Y FLANCHE PARA PODER ADAPTARSELO AL MOTOR 	\r\n-SE FACTURA COMPLETO COMO SALE ARRIBA EN LA DESCRIPCION, POR LO TANTO ES UN SOLO VALOR PARA TODO EL EQUIPO ', '6', ' 18307', 'LOCAL', '', '', '', '', NULL),
(46, 25, '7904285.00', 2, '1', '2022-12-28 00:00:00', '2022-12-30', 'YEINS VALDEZ', 'MOTORRED BONFIGLIOLI W63 U D25 P', 'SANTIAGO', '28070', 'CREDITO', '0472856', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON BRAZO DE TORQUE Y EJE HUECO ', '6', ' 18309', 'LOCAL', '', '', '', '', NULL),
(47, 32, '4400000.00', 2, '1', '2022-12-28 00:00:00', '2023-01-03', 'WILSON GARAVITO', 'GC-MOTO BN27C 4 220/440-60 1800RPM 0,9KW', 'SANTIAGO', '28071', 'CREDITO', '6000250263', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR BONFIGLIOLI DE 0,9KW A 1800 CON FLANCHE B5 Y EJE HUECO ', '6', ' 18324', 'TCC', ' 352365011', '', '', '', NULL),
(48, 33, '15840000.00', 7, '1', '2022-12-28 00:00:00', '', 'Hector Andrade', 'Certificación puente grúa', 'SEBASTIAN', '28072', 'CONTADO', 'CCA-OS-702-2022', '', 'Inspección, certificación y pruebas de carga con 3.2TN en la ciudad de Barranquilla.\r\n(Documentos de SST)', '4', '', '', '', '', '', '', NULL),
(49, 31, '1750000.00', 2, '1', '2022-12-27 00:00:00', '2022-12-28', 'DAVID RESTREPO ', 'MOTORREDUCTOR VFC 49 P20 1HP ', 'SANTIAGO', '28068', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTORREDUCTOR VA CON FLANCHE SE LE PONE EL QUE TENGA EL MOTOR Y EJE HUECO \r\nYA HICIERON UN ABONO AL TOTAL DE LA FACTURA ', '6', ' 18312', 'LOCAL', '', '', '', '', NULL),
(50, 4, '1100000.00', 2, '1', '2022-12-29 00:00:00', '2022-12-29', 'JUAN RODRIGO GAVIRIA', 'MOTOR DE 1HP A 3600RPM CON BRIDA B5 ', 'SANTIAGO', '28073', '30 DIAS', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18314', 'LOCAL', '', '', '', '', NULL),
(51, 34, '14390000.00', 2, '1', '2022-12-29 00:00:00', '2023-01-03', 'FERNEY YOBANY VALDIRI', 'MOTORREDCUTOR MODELO XL5 MOTOR 7,5 HP 50RPM SALIDA', 'SANTIAGO', '28074', 'CONTADO ', '0261', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18337', 'TCC', ' 352386734', '', '', '', NULL),
(52, 35, '9350000.00', 2, '1', '2022-12-29 00:00:00', '2022-12-31', 'DIEGO HURTADO', 'MOTORREDUCTOR CON FRENO Y ACOPLE DE CADENA ', 'SANTIAGO', '28075', 'CONTADO ', 'BCM-AC-F-100', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18327', 'LOCAL', '', '', '', '', NULL),
(53, 36, '2780000.00', 2, '1', '2022-12-29 00:00:00', '2022-12-31', 'DAVID CARDONA ', 'PANTALLA MT8102IP', 'SANTIAGO', '28076', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18317', 'TCC', ' 352352386', '', '', '', NULL),
(54, 35, '2900000.00', 2, '1', '2022-12-30 00:00:00', '2022-12-31', 'DIEGO HURTADO ', 'MOTORREDUCTOR SIN FIN CORONA ', 'SANTIAGO', '28077', 'CREDITO', '2', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y CON EJE HUECO ', '6', ' 18326', 'LOCAL', '', '', '', '', NULL),
(55, 35, '4700000.00', 2, '1', '2022-12-30 00:00:00', '2022-12-30', 'DIEGO HURTADO ', 'MOTOREDUCTOR PARALELO', 'SANTIAGO', '28078', 'CREDITO', '3', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y CON EJE DE SALIDA ', '6', ' 18328', 'LOCAL', '', '', '', '', NULL),
(56, 38, '300000.00', 2, '1', '2022-12-31 00:00:00', '2022-12-31', 'SANTIAGO VELASQUEZ', 'MOTOR 1,2 HP A 1800', 'SANTIAGO', '28080', 'CONTADO', 'EN LA OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18310', 'LOCAL', '', '', '', '', NULL),
(57, 32, '2050000.00', 2, '1', '2023-01-02 00:00:00', '2023-01-03', 'OMAR MEDINA ', 'REDUSCTOR BONFIGLIOLI VF44 REL 14', '', '28079', 'CREDITO', '6000292834', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO ', '6', ' 18320', 'TCC', '352357666', '', '', '', NULL),
(58, 37, '5032000.00', 2, '1', '2023-01-02 00:00:00', '2023-01-03', 'ALEXANDRA ACEVEDO ', 'MOTOREDUCTOR VF30 P30 0,15HP / VF30 P20 0,12HP', 'SANTIAGO', '28081', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18321', 'LOCAL', '', '', '', '', NULL),
(59, 8, '2928600.00', 2, '1', '2023-01-02 00:00:00', '2023-01-04', 'ANDRES FELIPE ALCALA ', 'REDUCTOR VF44 F1 P71 B14 RELACION 10 A 1 ', 'SANTIAGO', '28082', 'CREDITO ', '344562', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18319', 'TCC', ' 352357553  ', '', '', '', NULL),
(61, 39, '11940000.00', 2, '1', '2023-01-26 00:00:00', '2023-01-05', 'DANIEL MUÑETON', 'CAP EN MATERIAL HII DE 280 MM DIAMETRO / 10MM DE ESPESOR ', '', '28083', '30 DIAS ', '23000009', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '4', '', '', '', '', '', '', NULL),
(62, 40, '370000.00', 7, '1', '2023-01-03 00:00:00', '2023-01-04', 'Valeria Toro', 'Pestillos de seguridad para polipasto 2TN', 'SEBASTIAN', '28084', '30 días', '4012022837', '', 'Pestillos de seguridad para polipasto de 2 TON', '6', ' 18322', 'TCC', '352363530', '', '', '', NULL),
(63, 41, '19500000.00', 2, '1', '2023-01-04 00:00:00', '2023-03-21', 'ERIK MONTANO DUENAS ', 'REDUCTOR X309 R2 BONFIGLIOLI i 23.5 ', 'SANTIAGO', '28085', '35 DIAS ', '4522091344', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '3', '', '', '', '', '', '', NULL),
(64, 42, '6360000.00', 2, '1', '2023-01-05 00:00:00', '2023-01-05', 'CARLOS GOMEZ ', 'MOTORREDUCTOR W63 P23 0,11KW ', 'SANTIAGO', '28086', 'CREDITO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Poner un w63 p45 0,5hp a 3600 \r\nEl equipo se despacha para papelsa de barbosa ', '5', ' 18390', 'LOCAL', '', '', '', '', NULL),
(65, 44, '3000000.00', 2, '1', '2023-01-05 00:00:00', '2023-01-05', 'JOHN GIRALDO ', 'MOTOREDUCTOR WC63 3HP 80 A 1 21RPM', 'SANTIAGO', '28088', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS Y EJE MACIZO A LA SALIDA  ', '6', ' 18323', 'LOCAL', '', '', '', '', NULL),
(66, 43, '9700000.00', 2, '1', '2023-01-06 00:00:00', '2023-01-07', 'IVAN ROBLEDO', 'HMI WITH 12.1 TFT DISPLAY MT8121XE', 'SANTIAGO', '28089', 'CONTADO ', '1067', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '', '', '', '', '', '', NULL),
(67, 45, '130000.00', 2, '1', '2023-01-06 00:00:00', '2023-01-06', 'GISELA PORRAS ', 'SERVICIO DE PROGRAMACION DE VARIADOR ', 'SANTIAGO', '28090', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE LES DEBE FACTURAR 1 HORA DE SERVICIO ', '6', ' 18332', 'LOCAL', '', '', '', '', NULL),
(68, 46, '15216000.00', 2, '1', '2023-01-06 00:00:00', '2023-01-06', 'LUZ MARITZA OCHOA ', 'MOTOREDUCTOR BONFIGLIOLI W63 P15 2HP', 'SANTIAGO', '28091', 'CREDITO ', '44638986', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON EJE HUECO Y FLANCHES LATERALES ', '6', ' 18359     ', 'TCC', ' 352473839 ', '', '', '', NULL),
(69, 45, '390000.00', 2, '1', '2023-01-06 00:00:00', '2023-01-06', 'GISELA PORRAS ', 'SERVICIO DE PROGRAMACION DE VARIADOR ', 'SANTIAGO', '28092', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ESTE ES EL PRECIO DE LAS 3 HORAS QUE SE DEBEN FACTURAR $390.000', '6', ' 18333', 'LOCAL', '', '', '', '', NULL),
(70, 47, '270000.00', 7, '1', '2023-01-06 00:00:00', '', 'Uveimar Muñoz', 'Inspeccion Puente Grúa', 'SEBASTIAN', '28093', 'CONTADO', 'WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18334', 'LOCAL', '', '', '', '', NULL),
(71, 45, '590000.00', 2, '1', '2023-01-10 00:00:00', '2023-01-10', 'JHONATAN MORENO ', 'GABIENTE DE CONTROL', 'SANTIAGO', '28094', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'INCLUYE :\r\nPULSADOR DE ARRANQUE \r\nPULSADOR DE PARADA \r\nPARADA DE EMERGENCIA \r\nPOTENCIOMETRO ', '6', ' 18335', 'LOCAL', '', '', '', '', NULL),
(72, 35, '540000.00', 2, '1', '2023-01-10 00:00:00', '2023-01-13', 'DIEGO HURTADO', 'SERVICIO DE MANTENIMIENTO Y REPARACION DE MOTOR ', 'SANTIAGO', '28095', 'CREDITO', '4', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ENVIARON MOTOREDUCTOR THHK 613 3HP CTG 26989\r\nCAMBIO DE RODAMIENTOS DE MOTOR \r\nCAMBIO DE CAPERUSA MOTOR \r\nACEITE Y PINTURA PARA EL MOTORREDUCTOR ', '6', ' 18345', 'LOCAL', '', '', '', '', NULL),
(73, 48, '2000000.00', 7, '1', '2023-01-10 00:00:00', '2023-01-11', 'Mauricio Valdes', 'Telemando TELECRANE F21 2D-2 BOTONES', 'SEBASTIAN', '28096', '30 dias', '00032994', '', 'TELEMANDO TELECRANE F21-2D (2 BOTONES)', '6', ' 18343', 'LOCAL', '', '', '', 'SEBASTIAN VANEGAS LO ENTREGO E', NULL),
(74, 49, '12920000.00', 7, '1', '2023-01-11 00:00:00', '', 'Lina Arango', 'Polipasto eléctrico de 2TN sin trolley 12m de izaje.', 'SEBASTIAN', '28097', 'contado', '9887', 'Se debe enviar a 440V, la cadena a cortar son 24m ya que es de dos ramales. Enviar al INGENIO RISARALDA, La Virginia km2 vía balboa', 'Enviar factura proforma\r\n', '6', ' 18358  ', 'TCC', '352473946', '', '', '', NULL),
(75, 4, '1100000.00', 7, '1', '2023-01-11 00:00:00', '2023-01-11', 'JUAN RODRIGO GAVIRIA', 'MOTOR DE 1HP A 3600 RPM Con brida B5', 'SANTIAGO', '28098', '30 DIAS', 'Por wpa', '', 'CON FLANCHE B5', '6', ' 18338', 'LOCAL', '', '', '', '', NULL),
(76, 37, '1400000.00', 2, '1', '2023-01-12 00:00:00', '2023-01-19', 'ANGIE NUÑEZ', 'MOTOR ELECTRICO BONFIGLIOLI BN 71 C4', 'SANTIAGO', '28099', 'CONTADO', '10872N/2023', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS ', '6', ' 18349', 'TCC', ' 352450505', '', '', '', NULL),
(77, 50, '5204000.00', 7, '1', '2023-01-13 00:00:00', '', 'Yeison Cuadros', 'Reparación polipasto a Cadena 3 ton', 'SEBASTIAN', '28100', 'contado', 'por correo', 'Piezas: Sellos caja reductora, botonera, carcaza sproket, guía de cadena, y pestillo de seguridad. Según informe de MTTO.', 'Ellos pasan a recoger en la empresa según el Ing Ramiro Sierra, enviar video del funcionamiento.', '6', ' 18348', 'LOCAL', '', '', '', '', NULL),
(78, 51, '0.00', 2, '1', '2023-01-13 00:00:00', '2023-01-16', 'EVELIN TATIANA OSPINA MACIAS ', 'RED VF49 P1-10 P71 B14 B3 BONFIGLIOLI', 'SANTIAGO', '28101', '30 DIAS ', '4502431365', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FLANCHE A LA ENTRADA ', '6', ' 18352   ', 'TCC', ' 352450045', '', '', '', NULL),
(79, 52, '3015000.00', 2, '1', '2023-01-13 00:00:00', '2023-01-16', 'ALEXANDRA PINO ', 'CAJA REDUCTORA VF44 FA2 100 P63 B14', 'SANTIAGO', '28102', '30 DIAS ', '82099', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE LATERAL Y FLANCHE DE ENTRADA ', '6', ' 18347', 'LOCAL', '', '', '', '', NULL),
(80, 53, '7920000.00', 2, '1', '2023-01-16 00:00:00', '2023-01-19', 'DANIEL RAMIREZ', 'MOTOFRENO MGM CF63C', 'SANTIAGO', '28103', 'CREDITO ', '2698', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18346', 'TCC', '352429682 ', '', '', '', NULL),
(81, 54, '960000.00', 2, '1', '2023-01-16 00:00:00', '2023-01-18', 'CARLOS IMBACUAN ', 'CAPACITACION SISTEMA AGV DESPLAZAMIENTO AUTOMATICO POR BANDA MAGNETICA ', 'SANTIAGO', '28104', 'CONTADO ', '202318', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '', '', '', '', '', '', NULL),
(82, 55, '2420000.00', 2, '1', '2023-01-17 00:00:00', '2023-01-19', 'SANTIAGO JARAMILLO ', 'MOTORREDUCTOR SINFIN CORONA GIRAVAN VFC44', '', '28105', 'CREDITO ', '85233', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO ', '6', ' 18350', 'LOCAL', '', '', '', '', NULL),
(83, 56, '5730000.00', 2, '1', '2023-01-17 00:00:00', '2023-01-20', 'ANDRES EDUARDO SERRANO MELO ', 'MOTOR 5HP 1720 RPM 220V/440V 100L3 GIRAVAN ', '', '28106', 'CREDITO ', '4502489605', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'VA CON FLANCHE B5 ', '6', ' 18365', 'LOCAL', '', '', '', '', NULL),
(85, 57, '13540000.00', 7, '1', '2023-01-17 00:00:00', '', 'Sebastian Silva', 'Polipasto electrico a cadena', 'SEBASTIAN', '28107', '50% contado y 50% + IVA 30 dia', '908', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Enviar a 220V, la cadena se debe cortar de 28 metros, es la de 7.1mm de diametro. \r\nIncluye gancho superior para anclaje.', '6', ' 18357', 'LOCAL', '', '', '', '', NULL),
(89, 59, '1100000.00', 2, '1', '2023-01-18 00:00:00', '2023-01-20', 'FRANCISCO MESINO ', 'MOTORREDUCTOR HELICOIDAL 90W ', '', '28109', '30 DIAS ', '40135', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo se va a 220v/440v ellos no especifican en que voltaje lo requieren ', '6', ' 18351', 'TCC', '352450379', '', '', '', NULL),
(92, 60, '5995000.00', 2, '1', '2023-01-19 00:00:00', '2023-01-20', 'AICARDO DIAZ ', 'MOTOR ELECTRICO WEG 7,5 HP 3600 RPM', '', '28110', '90 DIAS ', '6200245897', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE MACIZO Y PATAS ', '6', ' 18449', 'TCC', ' 352868340', '', '', '', NULL),
(93, 58, '122457471.00', 2, '1', '2023-01-19 00:00:00', '2023-04-10', 'DANIELA MARTINEZ ', 'REDUCTORES BONFIGLIOLI', '', '28108', '30 DIAS ', '3702703327', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ITEM 1 campana de entrada p160, patas y eje macizo \r\nITEM 2 reductor \r\nITEM 3 piezas a cambiar 821-23-151 (holl.o/shaft f70 h70 )(reduccion pinon 70)(input shaft p132)\r\nITEM 4 eje hueco a la salida diametro del eje 50mm', '3', '', '', '', '', '', '', NULL),
(94, 61, '1573600.00', 2, '1', '2023-01-19 00:00:00', '2023-01-20', 'JOHN RESTREPO', 'PANEL WEINTEK 10 PULGADAS MT8102IP', '', '28111', 'CONTADO ', '20230020', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '18355  ', 'LOCAL', ' ', '', '', '', NULL),
(95, 63, '2000000.00', 2, '1', '2023-01-19 00:00:00', '2023-01-20', 'ANDRES VARELLA ', 'PANTALLA WEINTEK MT 8102IP', '', '28112', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18496', 'TCC', ' 352979833', '', '', 'TCC', NULL),
(96, 62, '16806723.00', 7, '1', '2023-01-19 00:00:00', '', 'Jhon Silva', 'Polipasto de 5 ton a cadena', 'SEBASTIAN', '28113', 'Contado', '18822', '', 'Enviar a 220V.\r\nCortar 12 metros de cadena de 11.2mm de diametro.\r\nDireccion entrega: Tecnibalanceo carrera 31 7 - 96 Bogota ricaurte', '6', ' 18372', 'TCC', '352506407', '', '', '', NULL),
(100, 58, '5900000.00', 2, '1', '2023-01-25 00:00:00', '2023-02-01', 'DANIELA MARTINEZ', 'BONFIGLIOLI M3LA4 2,2 KW 1410RPM', '', '28114', '30 DIAS ', '6601751671', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18364 ', 'TCC', '352484449', '', '', '', NULL),
(101, 39, '11940000.00', 2, '1', '2023-01-19 00:00:00', '2023-01-27', 'DANIEL STIVEN MUNETON RIOS ', 'CAP EN MATERIAL HII DE 280MM DE DIAMETRO Y 10 MM DE ESPESOR', '', '28115', '30 DIAS', '23000009', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CAP EN MATERIAL HII DE 280MM DE DIAMETRO Y 10 MM DE ESPESOR PARA DISTRIBUIDOR DE THERMEX DE SECADOR BICONICO DE POLIMERIZACION.', '6', ' 18381 ', 'TCC', ' 352597880', '', '', '', NULL),
(102, 64, '3490000.00', 2, '1', '2023-01-19 00:00:00', '2023-01-19', 'JULIAN SALAZAR ', 'REDUCTOR W63 P23 P90 B14 ', '', '28116', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18366 ', 'LOCAL', '', '', '', '', NULL),
(103, 65, '7866000.00', 2, '1', '2023-01-20 00:00:00', '2023-01-23', 'RAMON ANTONIO HOLGUIN ', 'PANTALLA WEINTEK CMT3161X ', '', '28117', '30 DIAS ', '62329', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '1', '', '', '', '', '', '', NULL),
(104, 54, '650000.00', 2, '1', '2023-01-20 00:00:00', '2023-01-20', 'JOHN JAIRO GIRALDO ', 'SERVICIO TECNICO REVISION AGV ', '', '28118', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FACTUARAR POR FAVOR EL SERVICIO TECNICO DE REVISION DE ROBOT AGV', '6', ' 18354', 'LOCAL', '', '', '', '', NULL),
(105, 51, '6900000.00', 2, '1', '2023-01-20 00:00:00', '2023-01-25', 'EVELIN TATIANA OSPINA MACIAS ', 'REDUCTOR BONFIGLIOLI VF49 P10 P71 B14 ', '', '28119', '30 DIAS', '4502493136', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18368 ', 'TCC', '352496829', '', '', '', NULL),
(106, 66, '4200000.00', 2, '1', '2023-01-20 00:00:00', '2023-01-21', 'JHONIER VIDAL ', 'REDUCTOR BONFIGLIOLI VF44 P7 P71 B14', '', '28120', 'CONTADO ', '18-200123', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE HUECO A LA SALIDA ', '6', ' 18362 ', 'TCC', '352484615', '', '', '', NULL),
(107, 10, '4419000.00', 2, '1', '2023-01-23 00:00:00', '2023-01-26', 'TANIA DUARTE ', 'MOTORREDUCTOR SIN FIN CORONA W63 U B5 P100 0,5HP ', '', '28121', 'CREDITO ', 'TR899B', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18369  ', 'LOCAL', '352496973', '', '', '', NULL),
(108, 34, '12231500.00', 2, '1', '2023-01-23 00:00:00', '2023-01-25', 'FENEY YOBANY VALDIRI', 'MOTORREDUCTOR MODELO XL5 MOTOR 7,5HP RELACION 59', '', '28122', 'CONTADO ', '0284', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18380', 'TCC', ' 352568259', '', '', '', NULL),
(109, 29, '12900000.00', 2, '1', '2023-01-23 00:00:00', '2023-01-25', 'JOHN RODRIGUEZ ', 'MOTOREDUCTOR CON FRENO ELECTROMAGNICO CON VARIADOR Y GABINETE ', '', '28123', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '-LA REFERENCIA DEL MOTOFRENO ES BA 132 MBX4\r\n-SE FACTURA COMPLETO COMO SALE ARRIBA EN LA DESCRIPCION, POR LO TANTO ES UN SOLO VALOR PARA TODO EL EQUIPO \r\nGABINETE INCLUYE: Botonera inalámbrica   Start / Stop + paro emergencia, breakers, borneras, cableado interno, rieles omegas, marcaciones, pilotos de operación, resistencias de frenado (Para malacate)', '6', ' 18376', 'TCC', ' 352556792 ', '', '', '', NULL),
(110, 20, '3380000.00', 2, '1', '2023-01-24 00:00:00', '2023-01-27', 'LAURA ARISTIZABAL', 'MOTORREDUCTOR VF49 P60 P71 B5 0,37 KW 1390RPM', '', '28124', '30 DIAS ', '4002687', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18370', 'TCC', '352496591', '', '', '', NULL),
(112, 47, '4116000.00', 7, '1', '2023-01-25 00:00:00', '2023-01-26', 'Uveimar Muñoz', 'Mantenimiento correctivo Puente grua', 'ADRIAN', '28125', '30 dias', 'por correo', '', 'Servicio de instalacion proteccion y contactores. \r\nSuministro e instalacion de proteccion tipo reactancia en linea.\r\nContactares para equipo Verlinde', '4', '', '', '', '', '', '', NULL),
(114, 67, '5693000.00', 7, '1', '2023-01-26 00:00:00', '2022-12-22', 'Antonio Rojas', 'Mantenimiento correctivo', 'SEBASTIAN', '28036', '45 dias', '100735', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Ver lista de partes adjunta', '6', ' 18275', 'LOCAL', '', '', '', '', NULL),
(115, 40, '12378500.00', 7, '1', '2022-12-13 00:00:00', '2022-12-20', 'Valeria Toro', '', 'SEBASTIAN', '28040', '30 dias', '4012014494', '', '', '6', ' 18277', 'LOCAL', '', '', '', '', NULL),
(116, 68, '140000.00', 7, '1', '2023-01-26 00:00:00', '2022-12-13', 'DANIEL RESTREPO', 'INSPECCION MALACATE', 'SEBASTIAN', '28042', 'CONTADO', 'NA', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Inspeccion Malacate', '6', ' 18267', 'LOCAL', '', '', '', '', NULL),
(117, 17, '400000.00', 7, '1', '2023-01-26 00:00:00', '2022-12-23', 'William Libre', 'Repuesto', 'SEBASTIAN', '28046', 'Contado', '16122022', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18274', 'LOCAL', '', '', '', '', NULL),
(118, 69, '3150000.00', 2, '1', '2023-01-25 00:00:00', '2023-01-27', 'HENOC QUINTERO ', 'MOTORREDUCTOR SIN FIN CORONA GIRAVAN VFC44 ', 'SANTIAGO ', '28126', 'CONTADO ', '201', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE MACIZO A LA SALIDA ', '6', ' 18373', 'LOCAL', '', '', '', '', NULL),
(122, 70, '7000000.00', 2, '1', '2023-01-27 00:00:00', '2023-01-30', 'EDUARDO PEREZ ', 'REDUCTOR BONFIGLIOLI W75', 'SANTIAGO ', '28128', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'AMBOS REDUCTORES VAN EN B5', '6', ' 18375', 'LOCAL', '', '', '', '', NULL),
(123, 47, '3300000.00', 7, '1', '2023-01-27 00:00:00', '2023-01-27', 'Uveimar Muñoz', 'Mantenimiento correctivo ', 'ADRIAN', '28129', '30 dias', 'por correo', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Mantenimiento realizado en botero soto, ya se realizó\r\nFacturar en febrero', '6', ' 18377', 'LOCAL', '', '', '', '', NULL),
(125, 71, '9590000.00', 2, '1', '2023-01-31 00:00:00', '2023-02-14', 'ALEJANDRO ERAZO', 'REDUCTOR BIANCHI X32S REL 7,33', 'SANTIAGO ', '28130', '30 DIAS ', 'LOC0072265', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18384', 'TCC', ' 352604828', '', '', '', NULL),
(126, 4, '5197257.00', 2, '1', '2023-02-01 00:00:00', '2023-02-02', 'JUAN RODRIGO GAVIRIA', 'MOTOR 20HP 1800RPM', 'SANTIAGO', '28131', '30 DIAS ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EQUIPO SOLO CON PATAS', '6', ' 18379', 'LOCAL', '', '', '', '', NULL),
(127, 69, '70000.00', 2, '1', '2023-02-02 00:00:00', '2023-02-02', 'JUAN DAVID SALAZAR ', 'FLANCHE DE SALIDA VF44 B14 ', 'SANTIAGO', '28132', 'CONTADO ', 'EN LA OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El flanche vienen a comprarlo directamente aca a la oficina ', '6', ' 18378', 'LOCAL', '', '', '', '', NULL),
(128, 4, '2500000.00', 1, '1', '2023-01-27 00:00:00', '2023-01-30', 'JULIAN TORO ', 'MOTORREDUTOR CON FRENO VF 49 P60 1HP ', 'SANTIAGO', '28127', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18374', 'LOCAL', '', '', '', '', NULL),
(129, 27, '800000.00', 2, '1', '2023-02-03 00:00:00', '2023-02-03', 'LUISA ARTEAGA', 'TAPA DE SALIDA REDUCTOR XWD6', 'SANTIAGO', '28133', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18382', 'LOCAL', '', '', '', '', NULL),
(130, 42, '5495000.00', 2, '1', '2023-02-03 00:00:00', '2023-02-14', 'CAROLINA JARAMILLO', 'REPARACION DRIVES EUROTHERM', 'SANTIAGO ', '28134', '30 DIAS ', '53232473', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'VARIADORES DC', '4', '', '', '', '', '', '', NULL),
(131, 8, '3842900.00', 2, '1', '2023-02-06 00:00:00', '2023-02-08', 'ANDRES FELIPE ALCALA ', 'MOTORREDUCTOR VF49 P24 P71 B14 0,75HP', 'SANTIAGO ', '28135', '30 DIAS ', '346492', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18383', 'TCC', ' 352604643', '', '', '', NULL),
(132, 73, '1580000.00', 2, '1', '2023-02-06 00:00:00', '2023-02-09', 'JACKELINE AREVALO', 'TAPA DE TORNILO SINFIN W110 P100 B5 ', 'SANTIAGO', '28136', 'CONTADO', '4877', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE NECESITAN EL REPUESTO 1106 (TAPA) Y 6112 (O-RING)', '6', ' 18397', 'LOCAL', '', '', '', '', NULL),
(133, 10, '3900000.00', 2, '1', '2023-02-06 00:00:00', '2023-05-09', 'DAVID DE ALVA ', 'MOTORREDUCTOR GV28 0,4 KW i:90', 'SANTIAGO ', '28137', 'CREDITO ', 'TR9059', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(134, 76, '1948000.00', 2, '1', '2023-02-06 00:00:00', '2023-02-09', 'JOVANI ARENAS SARMIENTO', 'VENTILACION FORZADA G90 ', 'SANTIAGO ', '28139', 'CONTADO', '9898', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'HAY QUE DESPACHAR 2 VENTILACIONES FORZADAS TAMAÑO 90 A 220V ', '6', ' 18386', 'TCC', ' 352605487', '', '', '', NULL),
(135, 75, '950000.00', 2, '1', '2023-02-06 00:00:00', '2023-02-20', 'SEBASTIAN PEREZ', 'SELLO PARA REDUCTOR 310 FP ', 'SANTIAGO', '28140', 'CONTADO', 'OCR2300284', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SELLO PARTE 5 PARA REDUCTOR PLANETARIO 310 FP \r\nMEDIDAS: 180x210x15', '6', ' 18396', 'TCC', ' 352662230', '', '', '', NULL),
(136, 42, '4350000.00', 2, '1', '2023-02-06 00:00:00', '2023-02-10', 'CAROLYN JOHANA TORRES USUGA', 'MOTORREDUCTOR VF44 F1 P63 B14 I:10 0,26KW', 'SANTIAGO', '28141', '30 DIAS ', '44642692', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y FLANCHE A LA IZQUIERDA ', '6', ' 18385', 'TCC', ' 352605260', '', '', '', NULL),
(137, 74, '9300000.00', 2, '1', '2023-02-07 00:00:00', '2023-02-09', 'WILLIAM LOPEZ', 'REDUCTOR W110 HS i:15', 'SANTIAGO ', '28142', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18387 ', 'TCC', ' 352649937', '', '', '', NULL),
(138, 10, '14108000.00', 2, '1', '2023-02-07 00:00:00', '2023-02-10', 'TANIA DUARTE', 'MOTORREDUCTORES SIN FIN CORONA GIRAVAN', 'SANTIAGO', '28143', 'CREDITO ', 'TR9067', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'TODOS LOS EQUIPOS VAN CON BRAZO DE TORQUE Y EJE HUECO ', '6', '18455 ', 'LOCAL', ' 352668335', '', '', '', NULL),
(139, 77, '3500000.00', 2, '1', '2023-02-08 00:00:00', '2023-02-14', 'IVAN CARDENAS ', 'REDUCTOR W63 U P80 B14 B8 10:1', 'SANTIAGO ', '28144', '30 DIAS ', '4502231254', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18463', 'TCC', ' 352868340', '', '', '', NULL),
(140, 78, '2500000.00', 2, '1', '2023-02-08 00:00:00', '2023-02-08', 'NELSON GAMBOA ', 'REDUCTOR VF49 F1 45 P71 B14 ', 'SANTIAGO ', '28145', '30 DIAS ', 'OFICINA JHON JAIRO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18388', 'LOCAL', '', '', '', '', NULL),
(141, 46, '5224000.00', 2, '1', '2023-02-08 00:00:00', '2023-02-10', 'KAREN RODADO ', 'MOTORREDUCTOR W63 15:1 2HP', 'SANTIAGO ', '28146', 'CREDITO ', '44642745', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'el equipo va con eje hueco y flanches laterales ', '6', ' 18389', 'TCC', ' 352625557', '', '', '', NULL),
(142, 47, '2500000.00', 7, '1', '2023-02-09 00:00:00', '2023-02-10', 'UVEIMAR MUÑOZ', 'SERVICIO DE MTTO CORRECTIVO, CAMBIO DE GUAYA', 'ADRIAN', '28147', '', 'Por WPP', '', 'Cambio de guaya. Se hace necesario la compra de 30 metros de guaya de 1/4\" antigiro, incluye siso y andamios.', '6', ' 18406', 'LOCAL', '', '', '', '', NULL),
(143, 37, '1690000.00', 2, '1', '2023-02-10 00:00:00', '2023-02-10', 'NUVIA STELLA GOMEZ', 'MOTOFRENO 0,37/0,45 KW 1800 RPM', 'SANTIAGO ', '28148', '30 DIAS ', '110543', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18401', 'TCC', ' 352674516', '', '', '', NULL),
(144, 79, '2900000.00', 2, '1', '2023-02-10 00:00:00', '2023-02-11', 'ING JAVIER GIRALDO ', 'MOTORREDUCTOR XWD 3 17:1 2HP ', 'SANTIAGO', '28149', '30 DIAS ', 'WHATSAPP JHON ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS Y EJE MACIZO ', '6', ' 18392', 'LOCAL', '', '', '', '', NULL),
(145, 80, '3500000.00', 2, '1', '2023-02-10 00:00:00', '2023-02-10', 'DIEGO OSORIO BUSTAMANTE', 'MOTOR GIRAVAN 4HP 1800 B5', 'SANTIAGO', '28150', 'CREDITO ', 'EN LA OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR VA CON PATAS Y CON FLANCHE B5', '6', ' 18391', 'LOCAL', '', '', '', '', NULL),
(146, 81, '1520000.00', 2, '1', '2023-02-10 00:00:00', '2023-02-11', 'BIBIANA SARMIENTO', 'PANTALLA WEINTECK ', 'SANTIAGO ', '28151', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18394', 'LOCAL', '', '', '', '', NULL),
(147, 82, '950000.00', 2, '1', '2023-02-11 00:00:00', '2023-02-11', 'MANUELA SANCHEZ', 'REDUCTOR NMRV 063 50:1 90B14', 'SANTIAGO', '28152', 'CREDITO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18393', 'LOCAL', '', '', '', '', NULL),
(148, 76, '1752000.00', 2, '1', '2023-02-11 00:00:00', '2023-02-13', 'JOVANI ARENAS ', 'VENTILACION FORZADA G80', 'SANTIAGO', '28153', 'CREDITO ', '9920', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18395 ', 'TCC', ' 352649708', '', '', '', NULL),
(149, 83, '1500000.00', 3, '1', '2023-02-13 00:00:00', '2023-02-16', 'GARCIA CHICA DANIEL STIVEN', 'MOTOREDUCTOR 0.5 HP TIPO SINFIN CORONA IP65 B3 BONFIGLIOLI', 'FELIPE', '28154', 'CONTADO', '001-OCC-00054019', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Eje hueco', '6', ' 18400', 'LOCAL', '', '', '', '', NULL),
(150, 56, '12900000.00', 2, '1', '2023-02-14 00:00:00', '2023-02-17', 'KARINA AURORA MORALES GARCIA', 'MOTORREDUCTOR VFC44 F1 7:1 0,5HP', 'SANTIAGO ', '28155', '30 DIAS ', '4502506641', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO', '6', ' 18402', 'LOCAL', '', '', '', '', NULL),
(151, 25, '13350000.00', 7, '1', '2023-02-14 00:00:00', '2023-02-14', 'YEINS VALDEZ', 'POLIPASTO A CADENA DE 3 TON 12m', 'SEBASTIAN', '28156', 'CREDITO', 'POR CORREO', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Enviar a 440V', '6', ' 18421', 'TCC', ' 352662863', '', '', '', NULL),
(152, 84, '880000.00', 2, '1', '2023-02-14 00:00:00', '2023-02-14', 'CLARA EUGENIA VELEZ', 'VENTILACION FORZADA G80', 'SANTIAGO ', '28157', 'CONTADO', 'JHON GIRALDO', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18398', 'LOCAL', '', '', '', '', NULL),
(153, 85, '3921000.00', 2, '1', '2023-02-14 00:00:00', '2023-02-14', 'JOHN ALEXANDER FORBES', 'REDUCTOR CICLOIDAL XWD5 43:1 ', 'SANTIAGO ', '28158', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS ', '6', ' 18405', 'LOCAL', '', '', '', '', NULL),
(154, 86, '2400000.00', 2, '1', '2023-02-14 00:00:00', '2023-02-15', 'LAURA BARRASA ', 'REDUCTOR NM 75 Y VENTILADOR PARA VARIADOR ', 'SANTIAGO ', '28159', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'VENTILADOR SER Nº 55026230553\r\nEL REDUCTOR ES PARA MOTOR DE 5HP (112 EL ACOPLE )\r\nCTG 27177', '6', ' 18446', 'TCC', ' 352829400', '', '', '', NULL),
(155, 87, '1700000.00', 2, '1', '2023-02-14 00:00:00', '2023-02-21', 'JORGE DE LA PAVA ', 'MOTOR BONFIGLIOLI 1HP A 1800RPM', 'SANTIAGO', '28160', 'CONTADO', '4600358809', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS ', '2', '', '', '', '', '', '', NULL),
(156, 2, '2592900.00', 2, '1', '2023-02-14 00:00:00', '2023-02-16', 'EVELIN TATIANA OSPINA', 'REDUCTOR VF49 10:1 P71 B5', 'SANTIAGO', '28161', '30 DIAS ', '4502511387', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18461', 'TCC', ' 352866628', '', '', '', NULL),
(157, 1, '200000.00', 2, '1', '2023-02-15 00:00:00', '2023-02-16', 'MARLON JARAMILLO', 'PATAS PARA MOTOR P132', 'SANTIAGO ', '28162', '30 DIAS ', '6606', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR WEG W11 15 HP A 1760 RPM / FRAME 132M / 220V ', '6', ' 18403', 'LOCAL', '', '', '', '', NULL),
(158, 89, '45600000.00', 7, '1', '2023-02-15 00:00:00', '2023-02-16', 'HURTADO C JUAN FELIPE', 'TELEMANDOS TELECRANE', 'SEBASTIAN', '28163', '45 DIAS', '908403', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'OBSERVAR BIEN LAS INSTRUCCIONES DE DESPACHO Y FACTURACIÓN', '5', '18495   ', 'TCC', ' 352946686 ', '', '', 'TCC', NULL),
(159, 90, '3600000.00', 2, '1', '2023-02-16 00:00:00', '2023-02-20', 'ING JUAN CARLOS VILLEGAS', 'MOTORREDUCTOR NMRV 40 0,5HP 60:1', 'SANTIAGO', '28164', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON EJE MACIZO Y PATAS ', '6', ' 18409', 'LOCAL', '', '', '', '', NULL),
(160, 91, '6120000.00', 2, '1', '2023-02-16 00:00:00', '2023-02-22', 'kevin martinez', 'MOTORREDUCTOR W63 P90 B14 24:1 1,5HP', 'SANTIAGO', '28165', '30 DIAS', '4500195532', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y PATAS ', '6', ' 18408', 'LOCAL', '', '', '', '', NULL),
(161, 92, '760000.00', 2, '1', '2023-02-17 00:00:00', '2023-02-13', 'STEFANY MUÑOZ ', 'VARIADOR DE VELOCIDAD IE5 0,1 A 0,4 KW / 220V', 'SANTIAGO', '28166', '60 DIAS ', '416', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18407', 'LOCAL', '', '', '', '', NULL),
(162, 93, '8730000.00', 7, '1', '2023-02-17 00:00:00', '2023-02-20', 'LINA MARIA CUERVO SANCHEZ', 'POLIPASTO ELECTRICO A CADENA DE 1 TONELADA 6m DE ALTURA DE IZAJE A GANCHO ', 'SEBASTIAN', '28167', '30 dias', '0252-23', '', 'Cadena de 7.1mm de diámetro, cortar 6 metros.', '6', ' 18411', 'LOCAL', '', '', '', '', NULL);
INSERT INTO `ventas` (`id`, `id_cliente`, `total`, `id_usuario`, `tiposervicio`, `fecha`, `tiempoentrega`, `ordeno`, `descripcionfacturar`, `nombrevendedor`, `numeroorden`, `formapago`, `nordencompra`, `incluye`, `observaciones`, `estadoorden`, `numerofactura`, `mododespacho`, `numeroguia`, `archivo`, `tipo_archivo`, `observacion_despacho`, `fecha_factura`) VALUES
(163, 94, '2400000.00', 7, '1', '2023-02-17 00:00:00', '2023-02-21', 'FRANCISCO DEL VALLE', 'REPARACIÓN TELEMANDO', 'SEBASTIAN', '28168', '', 'PENDIENTE', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Ya está listo, se encuentra pendiente la recepción de la orden de compra para facturarse en el mes de marzo para relacionarlas entre sí. \r\nDe la entrega se encarga la división de puentes grúa.', '5', '', '', '', '', '', '', NULL),
(164, 47, '530000.00', 7, '1', '2023-02-17 00:00:00', '2023-02-17', 'UVEIMAR MUÑOZ', 'MTTO CORRECTIVO DE ELECTRIFICACIÓN PUENTE GRÚA', 'SEBASTIAN', '28169', '', 'WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18440', 'LOCAL', '', '', '', '', NULL),
(165, 95, '4320000.00', 2, '1', '2023-02-20 00:00:00', '2023-02-22', 'MARIA ADELAIDA VILLEGAS ', 'REDUCTOR CILOIDAL XWD 4 29:1 ', 'SANTIAGO ', '28170', 'CONTADO ', '11747', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS Y EJE DE SALIDA MACIZO ', '6', ' 18418', 'LOCAL', '', '', '', '', NULL),
(166, 96, '2700000.00', 2, '1', '2023-02-20 00:00:00', '2023-02-22', 'MARCELA GALVIS ', 'REDUCTOR BONFIGLIOLI VF 44 14:1 P71 B14', 'SANTIAGO', '28171', 'CREDITO', '18571', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', '6', ' 18415', 'LOCAL', '', '', '', '', NULL),
(167, 69, '5450000.00', 2, '1', '2023-02-20 00:00:00', '2023-02-23', 'LUIS MARTINEZ', 'PANTALLAS WEINTEK', 'SANTIAGO', '28172', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18419', 'LOCAL', '', '', '', '', NULL),
(168, 67, '53200000.00', 7, '1', '2023-02-20 00:00:00', '2023-02-25', 'MONICA VANEGAS', 'POLIPASTO ELECTRICO A CADENA 10 TON 440V 15m A GANCHO', 'SEBASTIAN', '28173', 'CREDITO', '102998', 'ENVIAR A NORTIKO Y PROGRAMAR MONTAJE', '', '3', '', '', '', '', '', '', NULL),
(169, 97, '2775000.00', 2, '1', '2023-02-20 00:00:00', '2023-02-23', 'ALEXANDER MELGUIZO ', 'REDUCTOR VF44 7:1 P71 B14 Y PATAS ', 'SANTIAGO', '28174', '45 DIAS ', '7864', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LAS PATAS VAN APARATE \r\nEL REDUCTOR VA EJE HUECO ', '6', ' 18414', 'LOCAL', '', '', '', '', NULL),
(170, 6, '140000.00', 2, '1', '2023-02-21 00:00:00', '2023-02-23', 'SARA ACEVEDO', 'REJILLA VENTILACION 120 x 120 CON FILTRO', 'SANTIAGO', '28175', '30 DIAS ', '1009879', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LA REJILLA ES 120mm x 120 mm  CON FILTRO ', '6', ' 18416', 'LOCAL', '', '', '', 'SE ENVIO AL CAMION DE LA EMPRE', NULL),
(171, 52, '2979000.00', 2, '1', '2023-02-21 00:00:00', '2023-02-24', 'ALEXANDRA PINO ', 'MOTORREDUCTOR VF44 28:1   0,5HP', 'SANTIAGO ', '28176', '30 DIAS ', '82196', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA EJE HUECO ', '6', ' 18420', 'LOCAL', '', '', '', '', NULL),
(172, 66, '2100000.00', 2, '1', '2023-02-21 00:00:00', '2023-02-22', 'NIYERETH VIDAL ', 'REDUCTOR VF 44 7:1 P71 B14 ', 'SANTIAGO ', '28177', 'CONTADO ', '223', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', '6', ' 18417', 'LOCAL', '', '', '', '', NULL),
(173, 98, '8172000.00', 2, '1', '2023-02-21 00:00:00', '2023-02-23', 'MAUEL BAYONA ', 'VARIADOR IG5A 20HP 220V CON INSTALACION ', 'SANTIAGO ', '28178', 'CONTADO ', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'INCLUYE INSTALACION DEL VARIADOR \r\nCTG 27040', '2', '', '', '', '', '', '', NULL),
(174, 58, '14022400.00', 2, '1', '2023-02-21 00:00:00', '2023-03-21', 'DELGADO MARIA P ', 'ACOPLE DE ENGRANES', 'SANTIAGO', '28179', '30 DIAS ', '3702715778', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ACOPLAMIENTO DE ENGRANES; TIPO: DENTADO (FLEXIBLE); DIAMETRO INTER.-CUBO  1: 4 IN; DIAMETRO INTER.-CUBO 2: 4 IN; TORQUE NOMINAL MAXIMO: 17000 NM LONGITUD: 216 MM; DIAMETRO EXTERIOR MAXIMO:279.4 MM; DIBUJO DE REFERENC IA: N/A; VELOCIDAD MAXIMA: 3700 RPM; ABIERTO DIAMETRO 4\" ; CON CUÑERO DE  1\" ANCHO X 0.500\" DE PROFUNDIDAD; FABRICANTE 1: FALK; MODELO 1: 1035G20', '3', '', '', '', '', '', '', NULL),
(175, 10, '3300000.00', 2, '1', '2023-02-23 00:00:00', '2023-02-25', 'DIANA COLORADO', 'BOMBA PARA REDUCTOR CICLOIDAL ', 'SANTIAGO', '28180', 'CREDITO ', 'TR9136', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'BOMBA PARA REDUCTOR CICLOIDAL \r\nMODELO ZCB- 1.2\r\nMOTOR: YS50 14 / 40W/ 1760RPM/ 220V', '6', ' 18432', 'LOCAL', '', '', '', '', NULL),
(176, 4, '1520000.00', 2, '1', '2023-02-23 00:00:00', '2023-02-23', 'JUAN RODRIGO GAVIRIA', 'PANTALLA WEINTEK MT6070IP', 'SANTIAGO', '28181', '30 DIAS ', '19904', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18434', 'LOCAL', '', '', '', '', NULL),
(177, 20, '2740000.00', 2, '1', '2023-02-23 00:00:00', '2023-02-27', 'JUAN ', 'MOTOFRENO BA 90L A4 1,5KW 1800 RPM', 'SANTIAGO', '28182', '30 DIAS ', '4002721', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR VA CON FLANCHE B5 ', '6', ' 18439', 'TCC', ' 352792762', '', '', '', NULL),
(178, 99, '38835375.00', 2, '1', '2023-02-23 00:00:00', '2023-02-23', 'JUAN FERNANDO MOLINA ', 'MONTAJE DE TUBERIA PARA CREMA CONEXION E ', 'SANTIAGO', '28183', '60 DIAS ', '4500066574', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MONTAJE DE TUBERIA PARA CREMA CONEXION E ', '6', ' 18490', 'LOCAL', '', '', '', 'MONTAJE DE TUBERIA', NULL),
(179, 100, '5500000.00', 2, '1', '2023-02-24 00:00:00', '2023-02-24', 'JAIME ESPINOSA ', 'REDUCTOR BONFIGLIOLI W75 80:1 P71 B5 ', 'SANTIAGO ', '28184', 'CONTADO', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'El equipo vinieron a recogerlo a la oficina. ', '6', ' 18423', 'LOCAL', '', '', '', '', NULL),
(180, 2, '6828600.00', 2, '1', '2023-02-24 00:00:00', '2023-03-01', 'CATERINE CANTILLO', 'REDUCTOR BONFIGLIOLI VF49 10: F1 P71 B14 ', 'SANTIAGO', '28185', '30 DIAS ', '4502421816', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'AMBOS EQUIPOS VAN CON FLANCHE Y CON EJE HUECO ', '6', ' 18460', 'TCC', '  352866628', '', '', '', NULL),
(181, 101, '247400000.00', 2, '1', '2023-02-24 00:00:00', '2023-02-24', 'ANGELA P', 'SERVICIO DE REUBICACION DE MOTORREDUCTORES ', 'SANTIAGO', '28186', 'CREDITO', '153121', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SERVICIO DE REUBICACION DE MOTORREDUCTORES, DE ACUERDO A LA OFERTA CTG 26506 ', '5', '', '', '', '', '', '', NULL),
(182, 100, '600000.00', 2, '1', '2023-02-24 00:00:00', '2023-02-24', 'JAIME ESPINOSA ', 'MOTOR DE 0,75 HP / 1800 RPM ', 'SANTIAGO ', '28187', 'CONTADO ', 'OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR VA CON BRIDA B5 ', '6', ' 18424', 'LOCAL', '', '', '', '', NULL),
(183, 102, '1360000.00', 2, '1', '2023-02-25 00:00:00', '2023-03-03', 'KARINA SIERRA', 'CUNA PARA EJE/A 22X14X140/ AGUITADOR BONFIGLIOLI', 'SANTIAGO ', '28188', '60 DIAS ', '125923', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CUNA PARA EJE/A 22X14X140/AGITADOR BONFIGLIOLI/ (P/N1) \n 712432006A\nCUÑA IGUAL A LA DEL AGUITADOR DE LAS ESCALAS ', '4', '', '', '', '', '', '', NULL),
(184, 102, '0.00', 2, '1', '2023-02-25 00:00:00', '2023-03-03', 'KARINA SIERRA', 'CUNA PARA EJE/A 22X14X140/ AGUITADOR BONFIGLIOLI', 'SANTIAGO ', '28188', '60 DIAS ', '125923', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CUNA PARA EJE/A 22X14X140/AGITADOR BONFIGLIOLI/P/N 712432006A\r\nCUÑA IGUAL A LA DEL AGUITADOR DE LAS ESCALAS ', '4', '', '', '', '', '', '', NULL),
(185, 102, '1360000.00', 2, '1', '2023-02-25 00:00:00', '2023-03-03', 'KARINA SIERRA ', 'PARTE #712432006A PARA AGITADOR BONFIGLIOLI ', 'SANTIAGO', '28188', '60 DIAS ', '125923', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CUÑA PARA EJE (22X14X140)\r\nBONFIGLIOLI PARTE 1 (712432006A)\r\n', '6', ' 18450', 'TCC', ' 352840352', '', '', '', NULL),
(186, 103, '9000000.00', 2, '1', '2023-02-27 00:00:00', '2023-02-28', 'ABRAM DURAN ', 'MOTORREDUCTRO XWD5 17:1 7,5HP / VARIADOR H100 7,5 HP 220V ', 'SANTIAGO', '28189', 'CONTADO ', 'EN LA OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL VARIADOR VA CON DOS PULSADORES \r\nEL MOTORREDUCTOR VA CON PATAS ', '6', ' 18435', 'LOCAL', '', '', '', '', NULL),
(187, 59, '2200000.00', 2, '1', '2023-02-28 00:00:00', '2023-03-03', 'FRANCISCO MESINO', 'MOTORREDUCTOR HELICOIDAL 90W ', 'SANTIAGO', '28191', '30 DIAS ', '40703', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18491', 'TCC', ' 352901275 ', '', '', 'TCC', NULL),
(188, 25, '7659850.00', 2, '1', '2023-02-28 00:00:00', '2023-03-03', 'MILTON POLO', 'MOTORREDUCTOR VF30 P7 0,34HP / VF44 P7 0,34HP', 'SANTIAGO ', '28192', '45 DIAS ', '477739', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'AMBOS EQUIPOS VAN CON EJE HUECO ', '6', '18454', 'LOCAL', ' 352795506', '', '', '', NULL),
(189, 104, '1520000.00', 2, '1', '2023-02-28 00:00:00', '2023-03-02', 'CARLOS VILLEGAS ', 'PANTALLA WEINTEK MT6070IP ', 'SANTIAGO ', '28193', 'CONTADO ', '1-57', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18467 ', 'TCC', ' 352889903', '', '', '', NULL),
(190, 26, '5980000.00', 2, '1', '2023-02-28 00:00:00', '2023-02-28', 'WHATSAPP JOHN ', 'ENCODER ESPECIAL PARA MEDIDA LINEAL CON ADAPTACION MECANICA Y PROGRAMACION', 'SANTIAGO ', '28194', 'CONTADO ', 'WHATSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE LES SUMINISTRO EL ENCODER ESPECIAL, ADICIONAL SE HIZO LA RESPECTIVA INSTALACION Y PROGRAMACION DEL MISMO.\r\n\r\nEL SERVICIO YA SE PRESTO SOLO HAY QUE FACTURAR', '6', ' 18430', 'LOCAL', '', '', '', '', NULL),
(191, 25, '58000349.00', 7, '1', '2023-02-28 00:00:00', '2023-03-21', 'YEINS VALDEZ', 'POLIPASTOS ELECTRICOS Y CARROS TESTEROS MANUALES', 'SEBASTIAN', '28190', 'CREDITO', '0477741', '', 'CONFIRMAR TIEMPOS DE ENTREGA\r\n', '5', '  18487 ', 'TCC', ' 352923643 ', '', '', 'TRANSPORTADORA TCC', NULL),
(192, 60, '1650000.00', 2, '1', '2023-02-28 00:00:00', '2023-02-28', 'FERNANDO OLARTE ', 'MOTOFRENO BA71B4 0,37 / 0,45 KW ', 'SANTIAGO', '28195', 'CREDITO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Hay que enviar el equipo con remision con la PR576178, para que lo resivan en el almacen.\r\nse factura el dia de mañana \r\n', '6', ' 18441', 'LOCAL', '', '', '', '', NULL),
(193, 105, '700000.00', 2, '1', '2023-03-01 00:00:00', '2023-03-01', 'SEBASTIAN ORTIZ ', 'REDUCTOR NMRV 40 60 a 1 P63 B14 ', 'SANTIAGO ', '28196', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE IZQUIERDO A LA SALIDA  Y EJE HUECO ', '6', ' 18428', 'TCC', '352784673', '', '', '', NULL),
(194, 46, '4000000.00', 2, '1', '2023-03-01 00:00:00', '2023-03-03', 'MARITZA OCHOA ', 'REDUCTOR W63 15:1 P90 B5 ', 'SANTIAGO ', '28197', '45 DIAS ', '44644401', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y BRAZO DE TORQUE', '6', ' 18429', 'TCC', ' 352786543', '', '', '', NULL),
(195, 64, '1230000.00', 2, '1', '2023-03-01 00:00:00', '2023-03-01', 'JULIAN SALAZAR ', 'MOTOR 0,75 HP A 1800RPM', 'SANTIAGO ', '28198', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS ', '6', ' 18431', 'LOCAL', '', '', '', '', NULL),
(196, 21, '1150000.00', 2, '1', '2023-03-01 00:00:00', '2023-03-03', 'ANDRES MONTOYA ', 'MOTORREDUCTOR HELICOIDAL GK80 25W 50:1 110V MONOFASICO', 'SANTIAGO ', '28199', '60 DIAS ', '00125007', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18433', 'TCC', ' 352801185', '', '', '', NULL),
(197, 95, '3950000.00', 2, '1', '2023-03-02 00:00:00', '2023-03-04', 'MARIA ADELAIDA VILLEGAS ', 'MOTORREDUCTOR A PRUEBA DE EXPLOSION XWD3 59:1 1HP ', 'SANTIAGO ', '28200', 'CONTADO', '11817', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR ES A PRUEBA DE EXPLOCION \r\nEL REDUCTOR VA CON PATAS Y EJE MACIZO ', '6', ' 18473', 'LOCAL', '', '', '', '', NULL),
(198, 39, '9900000.00', 2, '1', '2023-03-02 00:00:00', '2023-03-27', 'YEIS ANDERSON HERRERA', 'REDUCTOR CONICO HELICOHIDAL BONFIGLIOLI A41 2 UH45 P100', 'SANTIAGO ', '28201', '30 DIAS ', '23007690', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CAMAPANA DE ENTRADA P100\r\nVA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(199, 71, '19500000.00', 2, '1', '2023-03-02 00:00:00', '2023-07-02', 'ANGIE GUERRA ', 'MOTOR PASO A PASO RDM63 - 8G ', 'SANTIAGO ', '28202', '30 DIAS ', 'LOI004630000', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MODELO RDM 63/8G\r\nSCHNEIDER ELECTRIC \r\nIW 155MA\r\n', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(200, 106, '2280000.00', 2, '1', '2023-03-03 00:00:00', '2023-03-06', 'ALFREDO PARRA ', 'REDUCTOR BONFIGLIOLI VF49 24:1 P80 B5 ', 'SANTIAGO ', '28203', 'CONTADO', '231037', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO \r\nSE DEBE DESPACHAR TCC PRINCIPAL DE MONTEVIDEO BOGOTA ', '6', ' 18462', 'TCC', ' 352866951', '', '', '', NULL),
(201, 6, '140000.00', 2, '1', '2023-03-03 00:00:00', '2023-03-04', 'VALERIA CASTAÑO PATIÑO', 'REJILLA VENTILACION 120X120 CON FILTRO', 'SANTIAGO', '28204', '30 DIAS ', '1010196', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'REJILLA VENTILACION 120 X 120 CON FILTRO ', '6', ' 18442', 'LOCAL', '', '', '', '', NULL),
(202, 64, '500000.00', 2, '1', '2023-03-03 00:00:00', '2023-03-03', 'JULIAN SALAZAR ', 'MOTOR ELECTRICO 0,5HP / 3600 RPM', 'SANTIAGO', '28205', 'CONTADO', 'OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR VA CON PATAS \r\nDEBE SER TECHTOP O GIRAVAN ', '6', ' 18443', 'LOCAL', '', '', '', '', NULL),
(203, 108, '2290000.00', 7, '1', '2023-03-06 00:00:00', '2023-03-12', 'MONICA DUQUE', 'VARIADOR E INSTALACIÓN', 'SANTIAGO', '28207', '50% anticipo y 50%  entrega', 'WPP', '', '', '4', '', '', '', '', '', '', NULL),
(204, 107, '800000.00', 7, '1', '2023-03-06 00:00:00', '2023-03-07', 'JOHN BUCHELI', 'CARRO COLECTOR LINEA BLINDADA (2)', 'SEBASTIAN', '28206', 'CONTADO', 'WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL CLIENTE PAGA EL FLETE EN DESTINO', '4', ' 18448', 'LOCAL', '', '', '', '', NULL),
(205, 109, '1750000.00', 7, '1', '2023-03-07 00:00:00', '2023-03-14', 'ELIANA CALDERA', 'SERVICIO DE MONTAJE EN PLANTA YARUMAL', 'SEBASTIAN', '28209', '30 DIAS', 'OCN-00057322', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SON PARA EL MONTAJE DE 3 LINEAS FESTOON, DOS DE 6 METROS Y UNA DE 10 METROS', '4', '', '', '', '', '', '', NULL),
(206, 109, '8182000.00', 7, '1', '2023-03-07 00:00:00', '2023-03-14', 'ELIANA CALDERA ', 'MONTAJE Y SUMINISTRO DE LINEAS FESTOON', 'SEBASTIAN', '28208', '30 DIAS', 'OCN-00057426', '', 'ES PARA REALIZAR EL 14 Y 15 DE MARZO DEL PRESENTE AÑO, INCLUYE LOS SUMINISTROS INCLUIDOS EN LA LISTA DE DESPACHO ADJUNTO, DEBEN ESTAR EN PLANTA EL DÍA VIERNES 10 DE MARZO PARA ELLOS LEGALIZAR EL INGRESO.', '5', '', '', '', '', '', '', NULL),
(207, 110, '700000.00', 7, '1', '2023-03-07 00:00:00', '2023-03-07', 'ALVARO CADAVID', 'EJES PARA W110', 'SEBASTIAN', '28210', 'CREDITO', 'JOHN', '', 'Son para Reductor W110\r\nSe entrega en GIRAVAN', '6', ' 18447', 'LOCAL', '', '', '', '', NULL),
(209, 108, '1900000.00', 2, '1', '2023-03-06 00:00:00', '2023-03-07', 'MONICA DUQUE ', 'VERIADOR LS IG5A 3HP 220V ', 'SANTIAGO', '28207', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE LES DESPACHO UN IG5A DE 5 HP PORQUE NO HABÍA DE 3 HP', '6', ' 18445', 'LOCAL', '', '', '', '', NULL),
(210, 27, '4940000.00', 2, '1', '2023-03-07 00:00:00', '2023-03-07', 'GERMAN NAVALES ', 'REDUCTOR CICLOIDAL XWD7 71:1 P100 B5 ', 'SANTIAGO', '28211', 'CONTADO ', 'POR WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Corresponde a la ctg 27326, el valor era de $8.200.000, se les descontó el 30% retomando un X6 de ellos, adicional se descuentan $800.000 de la última factura que habían pagado, el total a cancelar es el del precio de la op + iva ', '6', ' 18451', 'LOCAL', '', '', '', '', NULL),
(211, 24, '1500000.00', 2, '1', '2023-03-08 00:00:00', '2023-03-09', 'WILLIAM RESTREPO ', 'BRIDA B5 PARA MOTOFRENO MGM 132 ', 'SANTIAGO ', '28212', 'CONTADO ', 'POR WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FLANCHE B5 PARA MOTOFRENO MGM TAMAÑO 132 ', '6', ' 18452', 'LOCAL', '', '', '', '', NULL),
(212, 71, '5150000.00', 2, '1', '2023-03-08 00:00:00', '2023-03-09', 'ADRIANA DUQUE ', 'MOTORREDUCTOR VF49 28:1 P80 B14 0,66KW TECHTOP ', 'SANTIAGO ', '28213', '30 DIAS ', 'LOC0072777000', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO, EL MOTOR DEBE SER DE 0,66 KW A 1800 RPM TECHTOP', '6', ' 18458  ', 'LOCAL', '  352855372', '', '', '', NULL),
(213, 111, '3000000.00', 2, '1', '2023-03-09 00:00:00', '2023-03-09', 'CARLOS GALLEGO', 'MOTORREDUCTOR BONFIGLIOLI VF44 28:1 P71 B14 0,75 HP ', 'SANTIAGO ', '28214', 'CONTADO', 'EN OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y BRAZO DE TORQUE ', '6', ' 18456', 'LOCAL', '', '', '', '', NULL),
(214, 112, '3600000.00', 2, '1', '2023-03-10 00:00:00', '2023-03-14', 'JORGE MARIO ARIZTIZABAL ', 'VARIADOR DE VELOCIDAD IG5 10HP 220V', 'SANTIAGO', '28215', 'CONTADO ', '5466', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'INCLUIR UN PULSADOR ', '6', ' 18459', 'TCC', ' 352865208', '', '', '', NULL),
(215, 113, '2350000.00', 2, '1', '2023-03-10 00:00:00', '2023-03-14', 'DIANA CAROLINA PAEZ', 'PANTALLA WEINTEK CMT2078X', 'SANTIAGO ', '28216', 'CONTADO', '20231005', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18466', 'TCC', ' 352878131', '', '', '', NULL),
(216, 114, '2570000.00', 2, '1', '2023-03-10 00:00:00', '2023-03-13', 'MARIA JOSE GARCIA ', 'MOTORREDUCTOR BONFIGLIOLI VF30 F1 7 P63 B14 0,25 HP ', 'SANTIAGO ', '28217', 'CONTADO', '535', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y FLANCHE LATERAL ', '6', ' 18465', 'TCC', ' 352872033', '', '', '', NULL),
(217, 115, '7530000.00', 2, '1', '2023-03-10 00:00:00', '2023-05-09', 'WPP JOHN ', 'MOTORREDUCTOR CONICO HELICOIDAL A30 2 UH 35 P100 2,6KW ', 'SANTIAGO ', '28218', 'ANTICIPO 50% / 50% A LA ENTREG', '347', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR CON FRENO MGM / REDUCTOR BONFIGLIOLI', '2', '', '', '', '', '', '', NULL),
(218, 117, '2660000.00', 2, '1', '2023-03-10 00:00:00', '2023-03-21', 'ALEJANDRO BETANCUR', 'CERTIFICACION OPERARIOS PUENTE GRUA', 'SEBASTIAN', '28219', 'CREDITO', '21525', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ES PARA CERTIFICAR 7 OPERARIOS EL DIA 21 DE MARZO DE 2023 (MARTES)', '4', '', '', '', '', '', '', NULL),
(219, 118, '2164000.00', 2, '1', '2023-03-11 00:00:00', '2023-03-11', 'OSCAR GALLON ', 'MOTOR ELECTRICO WEG 1HP 1800RPM ', 'SANTIAGO', '28220', 'CONTADO ', 'OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR VA CON BRIDA B5 ', '6', ' 18464 ', 'LOCAL', '', '', '', '', NULL),
(220, 113, '6838500.00', 2, '1', '2023-03-13 00:00:00', '2023-03-14', 'DIANA CAROLINA PAEZ', 'PANTALLAS WEINTEK MT2078 X', 'SANTIAGO', '28221', 'CONTADO', '2023111', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18469', 'TCC', ' 352901003', '', '', '', NULL),
(221, 67, '3570000.00', 7, '1', '2023-03-14 00:00:00', '', 'CRISTIAN LOZANO', 'MANTENIMIENTO PREVENTIVO PUENTE GRUA 5 TN NORTIKO', 'SEBASTIAN', '28222', 'CREDITO', '103826', '', 'FALTA DEFINIR FECHA PARA PRESTAR EL SERVICIO\r\nINCLUYE SISO Y ANDAMIOS', '5', '', '', '', '', '', '', NULL),
(222, 119, '3710000.00', 2, '1', '2023-03-14 00:00:00', '2023-03-16', 'LIZETH YAMILE NIÑO MORALES', 'MOTORREDUCTOR BONFIGLIOLI VF49 P14 P71 B14 0,5HP', 'SANTIAGO', '28223', '30 DIAS ', '4000126212', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', '6', ' 18471', 'TCC', ' 352904024', '', '', '', NULL),
(223, 116, '10500000.00', 2, '1', '2023-03-14 00:00:00', '2023-03-24', 'ADRIANA CHAPARRO GIL ', 'REDUCTORES VF 44 P100 ', 'SANTIAGOI ', '28224', 'ANTICIPO 30% / 70% A 45 DIAS ', '47313', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON PATAS Y EJE HUECO ', '2', '', '', '', '', '', '', NULL),
(224, 20, '5100000.00', 2, '1', '2023-03-14 00:00:00', '2023-03-16', 'JHONATAAN RIOS ', 'REDUCTOR SIN FIN CORONA VF 49 P1 24 HS B3 ', 'SANTIAGO ', '28225', '30 DIAS ', '5843', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Se debe enviar a cali a la direccion calle 52 # 1N - 74 ', '6', ' 18477', 'TCC', ' 352923682', '', '', '', NULL),
(225, 120, '1628000.00', 2, '1', '2023-03-14 00:00:00', '2023-03-21', 'WILLIAM CORRALES ', 'VARIADOR DE VELOCIDAD LS IG5A 2HP 220V ', 'SANTIAGO ', '28226', 'CONTADO', '11664', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '2', '', '', '', '', '', '', NULL),
(226, 35, '1700000.00', 7, '1', '2023-03-15 00:00:00', '2023-03-22', 'DIEGO HURTADO', 'REPARACIÓN POLIPASTO', 'SEBASTIAN', '28227', 'CREDITO', 'OC6', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18476', 'LOCAL', '', '', '', '', NULL),
(227, 35, '1323000.00', 7, '1', '2023-03-15 00:00:00', '2023-03-29', 'GUSTAVO FUENTES ', 'RESPUESTOS PARA TROLLEY 1 TONELADA', 'SEBASTIAN', '28228', 'CONTADO', 'NA', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '-Spline gear shaft. 32\r\n-Toothed driving wheel. 33\r\n-Auxiliary wheel shaft. 40\r\n-Auxiliary wheel bracket. 41\r\n-Auxiliary wheel bracket gasket. 60\r\n-Trolley Auxiliary wheel. 61', '4', '', '', '', '', '', '', NULL),
(228, 121, '1323000.00', 7, '1', '2023-03-16 00:00:00', '2023-03-29', 'GUSTAVO FUENTES', 'REPUESTOS PARA TROLLEY 1 TON', 'SEBASTIAN', '28228', 'CONTADO', 'NA', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '-Spline gear shaft. 32\r\n-Toothed driving wheel. 33\r\n-Auxiliary wheel shaft. 40\r\n-Auxiliary wheel bracket. 41\r\n-Auxiliary wheel bracket gasket. 60\r\n-Trolley Auxiliary wheel. 61', '6', ' 18479 ', 'TCC', ' 352923383', '', '', '', NULL),
(229, 106, '999000.00', 2, '1', '2023-03-17 00:00:00', '2023-03-17', 'ALFREDO PARRA', 'REDUCTOR GIRAVAN VFC49 P24 P80 B5 ', 'SANTIAGO ', '28229', 'CREDITO ', '231306', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y EJE HUECO ', '6', ' 18475', 'LOCAL', '', '', '', '', NULL),
(230, 119, '10880000.00', 2, '1', '2023-03-17 00:00:00', '2023-03-24', 'LIZETH YAMILE NIÑO MORALES ', 'SUMINISTRO DE EQUIPOS BONFIGLIOLI - MOTOR - REDUCTOR - MOTORREDUCTOR ', 'SANTIAGO ', '28230', '30 DIAS ', '4000129350', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL MOTOR ES MARCA BONFIGLIOLI CON FLANCHE B14 \r\nEL REDUCTOR VA CON EJE HUECO \r\nEL MOTORREDUCTOR VA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(231, 122, '950000.00', 2, '1', '2023-03-17 00:00:00', '2023-03-17', 'OBEYMAR CARMONA', 'SERVICIO DE MANTENIMIENTO DE VARIADOR TEKDRIVE TDS - V8 15 HP 220V ', 'SANTIAGO', '28231', 'CONTADO', 'OFICINA ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE CAMBIO EL SENSOR DE TEMPERATURA Y SE LE HIZO UN MANTENIMIENTO GENERAL AL EQUIPO ', '6', ' 18474', 'LOCAL', '', '', '', '', NULL),
(232, 70, '4200000.00', 2, '1', '2023-03-17 00:00:00', '2023-03-17', 'EDUARDO PEREZ ', 'MOTORES ELECTRICOS 4HP 1800 RPM ', 'SANTIAGO', '28232', 'CONTADO', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS MOTORES HAY QUE ACOPLARSELOS A LOS REDUCTORES QUE NOS LLEGARON DE LUBRICARTE ', '6', ' 18480', 'TCC', ' 352924319', '', '', '', NULL),
(233, 2, '2950000.00', 2, '1', '2023-03-17 00:00:00', '2023-03-17', 'EVELIN TATIANA OSPINA ', 'REDUCTOR BONFIGLIOLI VF44 P10 P71 B14', 'SANTIAGO', '28233', '30 DIAS ', '4502534377', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO', '6', ' 18478', 'TCC', ' 352923109', '', '', '', NULL),
(234, 123, '1765000.00', 7, '1', '2023-03-17 00:00:00', '2023-03-21', 'CRISITAN CARMONA', 'GUARDACADENA 2TN 14m', 'SEBASTIAN', '28234', 'CREDITO', '22084', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Es para 14m de cadena', '6', ' 18481', 'LOCAL', '', '', '', '', NULL),
(235, 69, '1967000.00', 2, '1', '2023-03-18 00:00:00', '2023-03-21', 'HENOC QUINTERO ', 'PANTALLA WEINTEK MT8102IP', 'SANTIAGO', '28235', 'CONTADO', '230', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18483 ', 'LOCAL', '', '', '', '', NULL),
(236, 124, '99999999.99', 2, '1', '2022-12-01 00:00:00', '2022-12-21', 'ISABELLA BONFANTE ', 'MOTORREDUCTOR BONFIGLIOLI A90 4 UH100 HS 304,9 P132 B3', 'SANTIAGO (FV)', '28025', '30 DIAS ', '6601737907', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'HS EJE MACIZO DE ENTRADA Y EJE HUECO A LA SALIDA \r\nDIRECCION DE ENTREGA : CENTRO PLANTA MANIZALES KM 2 VIA TERMALES MANIZALES CALDAS \r\nCTG 26850 (NOVIEMBRE)', '1', '', '', '', '', '', '', NULL),
(237, 125, '4400000.00', 2, '1', '2023-03-21 00:00:00', '2023-03-23', 'KLISMAN GARCIA', 'MOTOR ELECTRICO 1,5 HP 1800 RPM ', 'SANTIAGO ', '28236', '30 DIAS ', '4500104028', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS MOTORES VAN CON PATAS ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(238, 39, '2600000.00', 2, '1', '2023-03-21 00:00:00', '2023-03-22', 'YEIS ANDERSON HERRERA', 'EJE HUECO PARA REDUCTOR BONFIGLIOLI F41 2 ', 'SANTIAGO ', '28237', '30 DIAS ', '23008379', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE HUECO PARA REDUCTOR \r\nCTG 27399', '6', ' 18597', 'TCC', ' 353374068', '', '', 'EL EJE HUECO SE MANDO A FABRIC', '2023-05-16 11:45:00'),
(239, 126, '4263600.00', 7, '1', '2023-03-22 00:00:00', '2023-03-25', '', 'REPUESTOS LINEA BLINDADA', 'SEBASTIAN', '28238', 'CONTADO', '18378', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SON PARA LINEA BLINDADA VERDE, JOHN AUTORIZÓ ENVIAR LOS CARROS COLECTORES DOBLE\r\nENVIAR ANTES DEL SÁBADO 25 DE MARZO', '6', ' 18492', 'TCC', ' 352971562', '', '', 'TCC', NULL),
(240, 21, '3600000.00', 2, '1', '2023-03-22 00:00:00', '2023-03-23', 'ANDRES MONTOYA HERNANDEZ ', 'MOTORREDUCTOR BONFIGLIOLI VF30 P30 0,33 HP ', 'SANTIAGO ', '28239', '60 DIAS ', 'A02-COC-00128588', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(241, 19, '3635000.00', 2, '1', '2023-03-22 00:00:00', '2023-03-22', 'VICENTE MARTINEZ ', 'VARIADOR DE VELOCIDAD TEKDRIVE 2HP A 220V / PROGRAMACION DE VARIADOR', 'SANTIAGO', '28240', 'CREDITO ', 'WHATSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SERVICIO DE PROGRAMACIÓN Y PUESTA EN MARCHA DE CAMINADOR Y PASTOR \r\nYA SE DESPACHO SOLO HAY QUE FACTURAR', '5', ' 18486', 'RECOGIDO POR EL CLIENTE', '', '', '', 'CLIENTE RECOGIO', NULL),
(242, 25, '0.00', 2, '1', '2023-03-22 00:00:00', '2023-03-22', 'JOHN AUTORIZO ', 'FLANCHE PARA REDUCTOR VF44 SE ENVIA COMO GARANTIA ', 'SANTIAGO ', '28241', 'N/A', 'JOHN AUTORIZO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'HAY QUE DESPACHARLO POR UN ERROR EN LA OP 28192, SE DESPACHO EL EQUIPO SIN EL FLANCHE ', '5', ' REMISION 4437', 'LOCAL', ' 352947907', '', '', 'TCC', NULL),
(243, 60, '2190000.00', 2, '1', '2023-03-23 00:00:00', '2023-03-30', 'DERECK MUNOZ', 'MANTENIMIENTO REDUCTOR TORNILLO COUCHPIT MOLINO 1 ', 'SANTIAGO', '28242', '90 DIAS ', '4504259400', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'KIT RODAMIENTOS 25 HB (2) - 06 A (1) - 12 CYB (1)\r\nKIT RETENEDORES 8(1) - 90 (2)', '6', ' 18563', 'LOCAL', '', '', '', 'SE ENTREGA MR W110 REPARADO', '2023-05-02 10:20:00'),
(244, 127, '11400000.00', 2, '1', '2022-10-27 00:00:00', '2023-04-27', 'MARIA CAMILA TRIANA CHAUX ', 'ACOPLE NEMA PARA PLANETARIO 3 10 R2 25.3 FZ V06B B0', 'SANTIAGO ', '27959 (FV)', '30 DIAS ', '128850', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ACOPLE NEMA 364-365 TC PARA PLANETARIO 310 R2 25,3 FZ V06B B0 \r\nPARTE 6 ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(245, 128, '14790000.00', 2, '1', '2022-11-29 00:00:00', '2022-12-21', 'DIANA MARCELA ROCA ', 'REPUESTO REDUCTOR 305 L3 90,2 PC P160 E ', 'SANTIAGO (FV)', '28014', '30 DIAS ', '10438', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'KIT DE REDUCCION PLANETARIO 305 L3 90,2 PC P160 E \r\nPARTE 1 ( 2T235331030)', '5', ' 18499', 'LOCAL', '', '', '', 'TCC', NULL),
(246, 129, '76336262.00', 2, '1', '2022-12-03 00:00:00', '2023-01-10', 'LORENA DIAZ ', 'TANQUE TIPO VERTICAL 3000LTS / 5000LTS / 6000LTS', 'SANTIAGO (FV)', '28028', '50% ANTICIPO, 30% LLEGADA DE E', '4509975678', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '5', ' 18504-18505', 'LOCAL', '', '', '', 'IMPORTACION QUE LLEGO DIRECTAM', NULL),
(247, 58, '14022400.00', 2, '1', '2022-11-21 00:00:00', '2022-12-15', 'DANIELA MARTINEZ ', 'ACOPLE DE ENGRANES TIPO DENTADO 1035G20', 'SANTIAGO (FV)', '28001', '30 DIAS ', '3702715778', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ACOPLAMIENTO DE ENGRANES TIPO DENTADO (FLEXIBLE) 1035G20 \r\n\r\nDICIEMBRE 7: SE ENVIA SOLICITUD DE INGRESO SOLO SE DESPACHA 1 UNIDAD ', '1', '', '', '', '', '', '', NULL),
(248, 130, '2498700.00', 2, '1', '2022-11-28 00:00:00', '2022-11-30', 'CARLOS DUEÑAS ', 'VARIADOR DE VELOCIDAD TEKDRIVE 2HP A 220V ', 'SANTIAGO (FV)', '28013', '30 DIAS ', 'WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CTG 26820 (NOVIEMBRE)', '5', '', '', '', '', '', '', NULL),
(249, 67, '350000.00', 7, '1', '2023-03-24 00:00:00', '2023-03-24', 'DIANA LOPEZ', 'SERVICIO DE INSTALACION REPUESTO', 'SEBASTIAN', '28243', 'CREDITO', 'CORREO', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(250, 131, '6580000.00', 2, '1', '2023-03-24 00:00:00', '2023-03-24', 'LUZ ASTRID HERNANDEZ', 'INTERVENCION DE REDUCTORES PLANETARIOS DE LOS BOMBOS DE MATERIAS PRIMAS ', 'SANTIAGO', '28244', '30 DIAS ', '00115947', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'YA SE REALIZO EL SERVICIO \r\nSOLO HAY QUE FACTURARLO', '6', ' 18493', 'LOCAL', '', '', '', 'servicio que ya se realizo', NULL),
(251, 132, '29580000.00', 2, '1', '2023-03-24 00:00:00', '2023-05-15', 'PAULA ANDREA DIAZ ', 'REDUCTOR 10:1 LP 090-M01-10-111 MSK050 ', 'SANTIAGO ', '28245', '30 DIAS ', '4502247453', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTORREDUCTOR 13128248\r\nCTG 27420 (23/03/23)\r\n', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(252, 107, '660000.00', 7, '4', '2023-03-25 00:00:00', '2023-03-27', 'JOHN BUCHELI', 'REPUESTOS PARA CARRO COLECTOR', 'SEBASTIAN', '28246', 'CONTADO', 'CAMBIO', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18497', 'TCC', ' 352982061', '', '', 'TCC', NULL),
(253, 1, '220000.00', 2, '1', '2023-03-27 00:00:00', '2023-03-27', 'LIZETH VILLADA ', 'PATAS PARA MOTOR P132', 'SANTIAGO ', '28247', '30 DIAS ', '6715', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'PATAS DE MOTOR WEG W11 15HP A 1760RPM / FRAME 132M/ 220V', '6', ' 18494', 'LOCAL', '', '', '', 'recogió el mensajero Mario Her', NULL),
(254, 115, '5410000.00', 2, '1', '2023-03-27 00:00:00', '2023-03-29', 'WHATSAPP JOHN ', 'REDUCTOR BONFIGLIOLI W63 7:1 P80 B14 / MOTOFRENO BA80B4 ', 'SANTIAGO', '28248', 'CONTADO ', '353', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL REDUCTOR VA CON EJE HUECO ', '6', ' 18501 ', 'LOCAL', ' 352995543', '', '', 'TCC', NULL),
(255, 133, '8066450.00', 2, '1', '2023-03-28 00:00:00', '2023-03-28', 'JUAN MUÑOZ', 'VARIADOR DE VELOCIDAD IG5A 30HP A 440V ', 'SANTIAGO', '28249', 'CONTADO', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '4', '', '', '', '', '', '', NULL),
(256, 60, '2357200.00', 2, '1', '2023-03-28 00:00:00', '2023-03-30', 'AICARDO DIAZ ', 'REDUCTOR BONFIGLIOLI VF49 ', 'SANTIAGO ', '28250', '90 DIAS ', '4504302690', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(257, 8, '2928600.00', 6, '1', '2023-03-28 00:00:00', '2023-03-30', 'ANDRES FELIPE ALCALA LORA', 'REDUCTOR BONFIGLIOLI VF44 F1 P10 P71 B14', 'CAROLINA', '28251', '30 DIAS', '349727', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(258, 133, '14244000.00', 2, '1', '2023-03-29 00:00:00', '2023-03-29', 'ALEJANDRO SUAREZ ', 'VARIADOR DE VELOCIDAD H100 50HP / 440V ', 'SANTIAGO ', '28252', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18506', 'LOCAL', '', '', '', 'IN DRIVER', NULL),
(259, 72, '8300000.00', 2, '1', '2023-03-29 00:00:00', '2023-03-30', 'JULIAN TORO ', 'MOTORREDUCTOR CON FRENO NMRV 150 i:60 7,5 HP ', 'SANTIAGO ', '28253', 'CONTADO ', 'WHATSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO ES CON MOTOFRENO \r\nEL REDUCTOR VA CON EJE HUECO Y BRAZO DE TORQUE ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(260, 135, '150000.00', 2, '1', '2023-03-29 00:00:00', '2023-03-29', 'JUAN JOSE ', 'PROGRAMACION DE VARIADOR ', 'SANTIAGO', '28254', 'CONTADO ', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE DEBE FACTURAR EL 1 DE ABRIL DE 2023 \r\nYA SE PRESTO EL SERVICIO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(261, 48, '2000000.00', 7, '1', '2023-03-29 00:00:00', '2023-03-30', 'ELIANA CALDERA', 'TELEMANDO DOS BOTONES TELECRANE', 'SEBASTIAN', '28258', 'CREDITO', 'OCN33673', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FACTURAR EN ABRIL\r\nENTREGAR EN BARBOSA\r\nSebastian brinda las indicaciones de como despachar y cuando debido a restricciones por ser zona franca', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(262, 134, '6825000.00', 2, '1', '2023-03-30 00:00:00', '2023-04-13', 'OSCAR TRIANA NIÑO', 'VARIADOR  MECANICO BONFIGLIOLI VBG2FD24HSHA1', 'SANTIAGO', '28255', '90 DIAS ', '012012', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'TM2201000 VARIADOR BONFIGLIOLI VBG2FD24HSHA1 EMPACADORA TECMI', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(263, 136, '5300000.00', 2, '1', '2023-03-30 00:00:00', '2023-04-07', 'BELISARIO GOMEZ ', 'REDUCTOR BONFIGLIOLI WR63 U 90 P71 B5 V6 ', 'SANTIAGO ', '28256', 'CONTADO ', '1440', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON BRAZO DE TORQUE \r\n\r\nENTREGAR EN PLANTA DE GIRÓN UBICADA EN LA CALLE 58 # 16 - 90 KM7 VIA GIRON  - FRENTE A COORDINADORA \r\n', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(264, 32, '3060000.00', 2, '1', '2023-03-30 00:00:00', '2023-03-30', 'ELISABETH ZORRO ZORRO ', 'REDUCTOR BONFIGLIOLI VF44 7 P71 B14 ', 'SANTIAGO ', '28257', '60 DIAS ', '6000224288', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y BRAZO DE TORQUE ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(265, 129, '38409329.00', 2, '1', '2023-03-30 00:00:00', '2023-06-30', 'DIEGO VEGA ', 'TANQUE 1500 LTS ESTAMPE ASME ', 'SANTIAGO ', '28259', 'CONTADO ', '4510586574', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Tanque para Aire de 1500 lts , bajo norma ASME seccion VIII div 1 ( con estampe ASME )\r\nDossier segun ASME, con procedimiento de soldaudra, pruebas y certificados completos\r\nTiempo de entrega : 120 dias', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(266, 137, '1072000.00', 3, '1', '2023-03-31 00:00:00', '2023-03-31', 'CAROL SANABRIA ', 'MOTORRREDDUCCTOR GK90 60W P25 ', 'SANTIAGO', '28260', 'CONTADDO ', 'POR WHATSAPP  ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(267, 96, '3000000.00', 3, '1', '2023-04-03 00:00:00', '2023-04-04', 'MARCELA GALVIS LOPEZ ', 'REDUCTOR BONFIGLIOLI VF44 P14 P71 B14 ', 'SANTIAGO ', '28262', 'CREDITO ', '18870', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(269, 117, '2280000.00', 3, '1', '2023-04-03 00:00:00', '2023-03-21', 'VERONICA TAPIAS ', 'CERTIFICACION 6 OPERARIOS PUENTE GRUA ', 'SEBASTIAN', '28261', 'CREDITO', '21525', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE MODIFICO RESPECCTO A LA OP 28219 DEBIDO A UE NO FUERON 7 SINO 6 OPERARIOS', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(270, 99, '3784000.00', 3, '1', '2023-04-04 00:00:00', '2023-04-04', 'JUAN FERNANDO MOLINA ZULUAGA', 'SERV URG DOMINGO MOTOR HOMOGENIZADOR B ', 'SANTIAGO ', '28264', '60 DIAS', '4500071986', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SOLO HAY QUE FACTURAR', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(271, 99, '4382000.00', 3, '1', '2023-04-04 00:00:00', '2023-04-04', 'JUAN FERNANDO MOLINA ZULUAGA', 'SER MOTOR DE SILO No  1 DE ALTA EFICIENC', 'SANTIAGO ', '28265', '60 DIAS ', '4500071987', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(272, 64, '4900000.00', 3, '1', '2023-04-05 00:00:00', '2023-04-05', 'JULIAN SALAZAR ', 'MOTORREDUCTOR BONFIGLIOLI VF49 F1 P40 P80 B14 0,75 HP ', 'SANTIAGO ', '28263', 'CONTADO', 'WHATSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(273, 15, '11400000.00', 3, '1', '2023-04-05 00:00:00', '2023-04-05', 'YEISON ANDRES JOVEN CALDERON ', 'REPUESTO BONFIGLIOLI 2G28010615036', 'SANTIAGO ', '28266', 'CREDITO ', 'PED00312434-1', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'PARTE Nº 2G28010615036\r\n\r\nDIRECCION ENTREGA: Carrera 69F #20-32\r\nPREGUNTAR POR: Carlos Sanchez – Edgar Vanegas – David Obando\r\nHORARIO: 8:00 AM A 4:00 PM (lunes-viernes)', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(274, 119, '3415000.00', 3, '1', '2023-04-05 00:00:00', '2023-04-05', 'LIZETH YAMILE NIÑO MORALES ', 'REDUCTOR VF49 P14 P71 B14 ', 'SANTIAGO ', '28267', '30 DIAS ', '4000130102', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(275, 138, '450000.00', 3, '1', '2023-04-05 00:00:00', '2023-04-05', 'ISABEL ARROYAVE ', 'MOTOR 220V AC MONOFASICO GK90 90W ', 'SANTIAGO ', '28268', '30 DIAS ', 'C03-00000387', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE DEBE ENVIAR SOLO EL MOTOR ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(276, 10, '3410000.00', 3, '1', '2023-04-05 00:00:00', '2023-04-05', 'TANIA DUARTE ', 'MOTORREDUTOR VF49 P14 P71 B14 0,5HP ', 'SANTIAGO ', '28269', 'CREDITO ', 'TR9312', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON BRAZO DE TORQUE Y EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(277, 71, '10960000.00', 3, '1', '2023-04-10 00:00:00', '2023-04-24', 'ADRIANA DUQUE ', 'MOTOR CON FRENO BA90LA4 1,1 KW', 'SANTIAGO ', '28270', '30 DIAS ', 'LOI0004701', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS 4 MOTORES VAN CON BRIDA B5 \r\n\r\nFAVOR RELACIONAR EL NÚMERO DE ORDEN DE COMPRA EN LA FACTURA, ESTA DEBE SER ENVIADA AL DEPARTAMENTO DE ALMACEN GENERAL A NOMBRE DE JASSON TRUJILLO.', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(278, 139, '14382000.00', 3, '1', '2023-04-10 00:00:00', '2023-04-14', 'LINA MARITZA GOMEZ PEÑA ', 'MOTORREDUCTORES BONFIGLIOLI ', 'SANTIAGO ', '28271', 'CONTADO ', '52165', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'TODOS LOS EQUIPOS VAN CON BRAZO DE TORQUE Y EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(279, 125, '4800000.00', 3, '1', '2023-04-11 00:00:00', '2023-04-14', 'KLISMAN GARCIA ', 'MOTORREDUCTOR VFC44 F1 P7 P71 B14 0,5 HP ', 'SANTIAGO ', '28272', '30 DIAS ', '4500105039', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'AMBOS EQUIPOS VAN CON FLANCHE Y CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(280, 140, '1967000.00', 3, '1', '2023-04-12 00:00:00', '2023-04-13', 'PAMELA QUINTERO', 'PANTALLA WEINTEK MT8102IP', 'LUISA', '28273', 'CREDITO', 'POR CORREO', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(281, 141, '450000.00', 7, '1', '2023-04-14 00:00:00', '2023-04-14', '', 'REPUESTOS POLIPASTOS', 'SEBASTIAN', '28275', 'CONTADO', 'EN LUGAR', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '', '', '', '', '', '', NULL),
(282, 142, '450000.00', 3, '1', '2023-04-14 00:00:00', '2023-04-14', 'JOHN SANCHEZ ', 'FUENTES DE VOLTAJE 24V / 5A', 'SANTIAGO ', '28274', 'CREDITO ', 'WHATSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SOLO SE MANDA 1, LAS OTRAS 2 YA SE HABIAN DESPACHADO \r\nSE DEBE ENVIAR CON LA CAJA PARA ATORNILLARLA ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(283, 90, '2500000.00', 3, '1', '2023-04-17 00:00:00', '2023-04-17', 'JUAN CARLOS VILLEGAS ', 'VARIADOR C100 7,5HP A 220V ', 'SANTIAGO ', '28276', 'CONTADO ', 'WPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(284, 10, '16384000.00', 3, '1', '2023-04-18 00:00:00', '2023-04-21', 'DIANA COLORADO ', 'MOTORREDUCTORES ', 'SANTIAGO ', '28277', 'CREDITO ', 'TR9333', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'TODOS LOS EQUIPOS VAN CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(285, 48, '8900000.00', 3, '1', '2023-04-18 00:00:00', '2023-05-18', 'ANDRES VALDES RIVERA ', 'ACOPLE REXNORD ', 'SANTIAGO ', '28278', '30 DIAS ', 'OCN-00033789', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'ACOPLE REXNORD/1030/G20/MOTOR/ID/FAN', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(286, 143, '2188000.00', 3, '1', '2023-04-18 00:00:00', '2023-04-19', 'RICARDO PRIETO ', 'VARIADORES DE VELOCIDAD IC5 0,5 HP A 220V ', 'SANTIAGO ', '28279', 'CONTADO ', 'POR WPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(287, 71, '5800000.00', 3, '1', '2023-04-20 09:26:00', '2023-08-31', 'ANGIE GUERRA', 'MOTOR DE INDUCCION 4IK40A-DFT', 'SANTIAGO ', '28280', '30 DIAS ', 'LOI0004734 000', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR DE INDUCCION 4IK40A-DFT\r\nHXM MOTOR 40W 2800/3600 RPM \r\n200/220V 0,5A', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(288, 99, '11800000.00', 3, '1', '2023-04-21 07:38:00', '2023-04-21', 'ANDREA MARTINEZ ESLAVA', 'ANALISIS TANQUE ASEPTICO MEDIANTE EL MET ', 'SANTIAGO ', '28281', '60 DIAS ', '4500067715', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18577', 'LOCAL', '', '', '', 'SERVICIO MANO DE OBRA', '2023-05-06 11:07:00'),
(289, 8, '2526250.00', 3, '1', '2023-04-21 14:44:00', '2023-04-21', 'ANDRES FELIPE ALCALA ', 'REDUCTOR W86 P30 P90 B5 ', 'SANTIAGO ', '28282', '30 DIAS ', '0000351036', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(290, 99, '4680000.00', 3, '1', '2023-04-24 11:33:00', '2023-04-24', 'JUAN FERNANDO MOLINA ', 'SERV. FABRICACIÓN DE TABLERO', 'SANTIAGO ', '28283', 'CREDITO ', '4500072581', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'PARA FACTURAR POR FAVOR', 'Seleccionar Estado', '', '', '', '', '', '', NULL);
INSERT INTO `ventas` (`id`, `id_cliente`, `total`, `id_usuario`, `tiposervicio`, `fecha`, `tiempoentrega`, `ordeno`, `descripcionfacturar`, `nombrevendedor`, `numeroorden`, `formapago`, `nordencompra`, `incluye`, `observaciones`, `estadoorden`, `numerofactura`, `mododespacho`, `numeroguia`, `archivo`, `tipo_archivo`, `observacion_despacho`, `fecha_factura`) VALUES
(291, 78, '4800000.00', 3, '1', '2023-04-24 11:54:00', '2023-04-24', 'NELSON GAMBOA ', 'REDUCTORES VF44 P14 P71 B14 ', 'SANTIAGO ', '28284', 'CONTADO ', 'JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'YA SE DESPACHO SOLO FACTURAR ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(292, 144, '3900000.00', 3, '1', '2023-04-24 12:27:00', '2023-04-24', 'JAMES ESTEDUAR OORIO MESA ', 'PANEL OPERACIONAL WEINTEK MT8071IE', 'SANTIAGO ', '28285', '30 DIAS ', '167962', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(293, 145, '3100000.00', 3, '1', '2023-04-24 14:10:00', '2023-06-24', 'CINDY PALACIOS ', 'FRENO PARA MOTOR BONFIGLIOLI ', 'SANTIAGO ', '28286', 'CONTADO ', '369', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FRENO PARA MOTOR BONFIGLIOLI \r\nBX90LA4 / 1,5 KW A 1735 RPM \r\nMOTOR TAMAÑO 90 \r\nFRENO FA05', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(294, 146, '1008000.00', 3, '1', '2023-04-24 15:16:00', '2023-04-24', 'ALEX GOMEZ ', 'CBALE 7300040004 / 4X4 mm2 ENCAUCHETADO ', 'SANTIAGO ', '28287', 'CONTADO ', 'WATHSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '18 METROS DE CABLE \r\nENVIAR FACTURA PROFORMA ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(295, 10, '3410000.00', 3, '1', '2023-04-25 08:28:00', '2023-04-25', 'DIANA COLORADO ', 'MOTORREDUCTOR SINFIN VF49 P14 P71 B14 B3 0,5HP ', 'SANTIAGO ', '28288', 'CREDITO ', 'TR9361', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y BRAZO DE TORQUE ', '6', ' 18585', 'TCC', ' 353327087', '', '', 'SE ENVIO CON LA OC 9400', '2023-05-10 11:26:00'),
(296, 147, '6140000.00', 3, '1', '2023-04-25 08:39:00', '2023-05-02', 'CLAUDIA PARADA ', 'MOTORREDUCTOR VF44 0,5HP REL 20:1 A 90 RPM  ', 'SANTIAGO ', '28289', 'CONTADO ', '22727', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON EJE HUECO Y BRAZO DE TORQUE ', '6', ' 18567', 'TCC', ' 353238824', '', '', 'MR SE ENVIARON POR TRANSPORTAD', '2023-05-04 10:32:00'),
(297, 148, '2285800.00', 3, '1', '2023-04-25 10:54:00', '2023-04-25', 'ANDRES FELIPE ALCALA', 'REDUCTOR VF30 P63 B14 REL 7 a 1', 'SANTIAGO ', '28290', '30 DIAS ', '0000056935', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO Y FLANCHE ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(298, 149, '3325000.00', 8, '1', '2023-04-25 12:11:00', '2023-04-26', 'RAMIRO GRISALES', 'MODULO WEINTEK cMT FHDX-220', 'LUISA', '28291', 'CONTADO', '1793A', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(299, 6, '1900000.00', 8, '1', '2023-04-25 17:14:00', '2023-04-26', 'DIANA PATRICIA MENA BLANDON', 'MOTOR 1.1/1.3 KW - 220/440V - BA 90 LA6', 'LUISA', '28292', 'CREDITO 30 DIAS', '1011364', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOR 1.5 HP 1800 RPM MOTOFRENO MGM, EJECUCION B5, BUJE 24MM', '6', '', '', '', '', '', '', NULL),
(300, 150, '8720000.00', 3, '1', '2023-04-26 16:43:00', '2023-05-02', 'IVAN CAMILO GOMEZ', 'MOTOREDUCTOR SINFÍN CORONA BONFIGLIOLI VF44 F1 P14 P71 B14 B3 0,5 HP', 'LUISA', '28293', 'CREDITO', '8000266178', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON EJE HUECO Y FLANCHE ', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(301, 104, '1520000.00', 3, '1', '2023-04-27 07:56:00', '2023-04-27', 'XIMENA ARANGO ', 'PANTALLA TOUH SCREEN WEINTEK HMI MT6070IP', 'SANTIAGO ', '28294', 'CREDITO ', 'C-4-30', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18568', 'TCC', ' 353238853', '', '', 'PANTALLA ENVIADA POR TCC', '2023-05-04 10:34:00'),
(302, 151, '690000.00', 3, '1', '2023-04-27 17:04:00', '2023-04-27', 'HEIDER LOPEZ', 'MOTORREDUCTOR GK60 300 220V', 'SANTIAGO ', '28295', 'CONTADO', 'POR WHATSAPP ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', '', '', '', '', '', '', NULL),
(303, 41, '21000000.00', 3, '1', '2023-04-28 10:39:00', '2023-05-12', 'JAVIER ENRIQUE BOTERO MARMOL', 'REDUCTOR X309 R2, BONFIGLIOLI, 66KW, 23:5 ', 'SANTIAGO ', '28296', '35 DIAS ', '4522739685', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(304, 61, '1967000.00', 3, '1', '2023-04-28 15:20:00', '2023-04-28', 'ANDRES RESTREPO', 'PANTALLA WEINTEK MT8102IP ', 'SANTIAGO', '28297', '30 DIAS ', 'OC-1-20230094', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18564', 'LOCAL', '', '', '', 'SE DESPACHA PANTALLA', '2023-05-03 10:22:00'),
(305, 46, '13205000.00', 3, '1', '2023-04-28 15:26:00', '2023-08-28', 'LUZ MARITZA OCHOA', 'VARIADOR FRECUENCIA AGL402-21 BONFIGLIOLI', 'SANTIAGO', '28298', '45 DIAS ', '44648415', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'VARIADOR FRECUENCIA AGL402-21 3 FA BONFIGLIOLI; PARAMETROS DE\r\nENTRADA:440V / 480V; 50-60 Hz; 3ph; 23,0 A; PARAMETROS DE SALIDA: 0-\r\nUinput, 0-1KHz, RANGO DE TEMPERATURA: 0-40aC; 7.50kW CAPACIDAD CORRIENTE\r\n17,0A/60S 25,5A/1S 34,04A; PARA MAQUINA CORRUGADOR BAVIERA;  (BOGOTÁ)\r\n', '1', '', '', '', '', '', '', NULL),
(306, 152, '13911000.00', 3, '1', '2023-05-02 12:23:00', '2023-05-05', 'LIZETH MARIANA CAÑON ', 'MOTORREDUCTOR BONFIGLIOLI', 'SANTIAGO ', '28299', '45 DIAS ', '3682430355', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO DE 2HP VA CON FLANCHE Y EJE HUECO\r\nEL EQUIPO DE 1HP VA CON BRAZO DE TORQUE Y EJE HUECO ', '6', ' 18565', 'TCC', ' 353278476', '', '', 'SE DESPACHA MOTOR DE 1.5HP PLA', '2023-05-03 11:55:00'),
(307, 125, '4830000.00', 6, '1', '2023-05-02 12:44:00', '2023-05-05', 'DESIRED MARTINEZ PUENTE', 'MOTOREDUCTOR SINFIN CORONA PARA MARINADO', 'YERALDINNE ', '28300', '30 DIAS ', '4500105881', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON FLANCHE Y CON EJE HUECO ', '6', ' 18572', 'TCC', ' 353278750', '', '', 'MR ENVIADOS POR TCC', '2023-05-04 10:42:00'),
(308, 69, '3290000.00', 3, '1', '2023-05-02 15:10:00', '2023-05-03', 'ISABEL LOPEZ ', 'MOTORREDUCTOR SIN FIN CORONA GIRAVAN ', 'SANTIAGO ', '28301', 'CREDITO ', '252', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'HAY QUE DESPACHAR UN FLANCHE CON EL EQUIPO Y EL OTRO A PARTE ', '2', '', '', '', '', '', '', NULL),
(309, 50, '350000.00', 2, '1', '2023-05-03 09:25:00', '2023-04-26', 'RAMIRO SIERRA', 'REPUESTO POLIPASTO 5T', 'SEBASTIAN ', '28302', 'CREDITO', 'CORREO', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18566', 'LOCAL', '', '', '', 'REPUESTO DE POLIPASTO', '2023-05-03 10:28:00'),
(310, 153, '15671000.00', 6, '1', '2023-05-03 15:18:00', '2023-05-15', 'MARICELLA ALARCON RUIZ ', 'MOTOREDUCTOR CON FRENO SINFIN CORONA BON ', 'YERALDINNE ', '28303', '30 DIAS ', '28303', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18573', 'TCC', ' 353278652', '', '', 'MOTOREDUCTOR W110 CON FRENO ', '2023-05-04 10:45:00'),
(311, 99, '14870000.00', 3, '1', '2023-05-04 08:16:00', '2023-05-04', 'PROF JUAN FERNANDO MOLINA ZULU', 'SERV. FABRICACIÓN LÍNEA DE EMPUJE PARA T ', 'SANTIAGO ', '28305', '60 DIAS ', '4500072851', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18569', 'LOCAL', '', '', '', 'SERVICIO MANO DE OBRA', '2023-05-04 10:37:00'),
(312, 99, '18875300.00', 3, '1', '2023-05-04 08:31:00', '2023-05-04', 'PROF JUAN FERNANDO MOLINA ZULU', 'SERV. PARA MODIFICACIÓN DE LA LÍNEA DE D ', 'SANTIAGO ', '28306', '60 DIAS ', '4500072580', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18570', 'LOCAL', '', '', '', 'SERVICIO MANO DE OBRA', '2023-05-04 10:39:00'),
(313, 99, '4680000.00', 3, '1', '2023-05-04 08:34:00', '2023-05-04', 'PROF JUAN FERNANDO MOLINA ZULU', 'SERV. FABRICACION DE TABLERO PARA CONEX ', 'SANTIAGO ', '28307', '60 DIAS ', '4500072581', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18571', 'LOCAL', '', '', '', 'SERVICIO MANO DE OBRA', '2023-05-04 10:40:00'),
(314, 10, '300000.00', 3, '1', '2023-05-04 15:50:00', '2023-05-04', 'TANIA DUARTE ', 'PATAS PARA REDUCTOR VF49', 'SANTIAGO', '28309', 'CREDITO ', 'TR9400', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18584', 'TCC', ' 353327087', '', '', 'SE ENVIA CON LA OC 9361', '2023-05-10 11:25:00'),
(315, 61, '1967000.00', 6, '1', '2023-05-04 15:43:00', '2023-05-08', 'ANDRES RESTREPO ', 'PANTALLA INDUSTRIAL WEINTEK 10.1 inch HMI, 1024x600, 528MHz Processor, 128MB RAM, Etherne, Dual Seri', 'YERALDINNE ', '28308', 'CONTADO', '4-2089', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'DIRECCIÓN DE ENTREGA (BODEGA PILARICA):\r\nCALLE 73 CARRERA 72 AB-85. BODEGA 10A MEDELLIN-ANTIOQUIA\r\nBUZÓN DE FACTURACIÓN ELECTRÓNICA: facturacion@controlmatica.com.co', '4', '', '', '', '', '', '', NULL),
(316, 155, '0.00', 7, '1', '0000-00-00 00:00:00', '2023-05-11', 'SAUL ORTIZ', 'CERTIFICACION OPERARIOS PUENTE GRUA', 'SEBASTIAN', '28310', 'CREDITO', 'V065', '', 'SE REALIZARAN 3 EL DÍA 11 DE MAYO Y OTROS 3 EL DIA 25 DE MAYO', '2', '', '', '', '', '', '', NULL),
(317, 156, '4570000.00', 3, '1', '2023-05-05 11:39:00', '2023-05-05', 'ANDREA GUALDRON', 'REDUCTORES BONFIGLIOLI ', 'SANTIAGO ', '28311', 'CONTADO', 'OC-1-10', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'LOS EQUIPOS VAN CON FLANCHE Y CON EJE HUECO ', '6', ' 18581', 'TCC', ' 353306321', '', '', 'SE ENVIA REDUCTORES POR TCC', '2023-05-08 11:15:00'),
(318, 35, '1550000.00', 3, '1', '2023-05-05 14:20:00', '2023-05-05', 'DIEGO HURTADO ', 'RECTIFICADOR DE VOLTAJE PARA FRENO VIS', 'SANTIAGO ', '28312', 'CREDITO ', 'WHATSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18578', 'LOCAL', '', '', '', 'ELECCTRICO DON GUSTAVO FUE HAC', '2023-05-08 11:08:00'),
(319, 81, '720000.00', 3, '1', '2023-05-05 15:38:00', '2023-05-05', 'BIBIANA SARMIENTO ', 'PLC XBC-DP14E,EXP', 'SANTIAGO ', '28313', 'CONTADO ', 'POR WHATSAPP', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'PLC \r\nXBC-DP14E,EXP\r\n8 IN - 6 OUT - 110V / 200V AC - TRANSISTOR SOURCE', '6', ' 18575', 'LOCAL', '', '', '', 'CLIENTE RECOGIO EN GIRAVAN', '2023-05-05 10:54:00'),
(320, 157, '799000.00', 3, '1', '2023-05-05 15:55:00', '2023-05-05', 'JAVIER AVENDAÑO ', 'REDUCTOR SIN FIN CORONA VFC49 P14 P80 B14 ', 'SANTIAGO ', '28314', 'CONTADO', 'WHTSAPP JOHN ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', '6', ' 18576', 'LOCAL', '', '', '', 'REDUCTOR', '2023-05-05 11:06:00'),
(321, 91, '10900000.00', 3, '1', '2023-05-05 17:03:00', '2023-05-09', 'KEVIN MARTINEZ', 'MOTORREDUCTOR GIRAVAN VFC 63 P25 P80 B5 1HP', 'SANTIAGO ', '28315', '30 DIAS ', '4500199325', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON PATAS Y CON EJE HUECO', '6', ' 18587', 'TCC', ' 353327458', '', '', 'SE ENVIA A LA PLANTA DE CIRUEL', '2023-05-10 11:30:00'),
(322, 154, '4990000.00', 8, '1', '2023-05-05 17:34:00', '2023-05-08', 'GIOVANNY PRADA', 'REDUCTOR BONFIGLIOLI W63UP80B5', 'LUISA', '28304', 'CONTADO', '697461', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18579', 'TCC', ' 353306006', '', '', 'SE ENVIA REDUCTOR POR TCC, FOR', '2023-05-08 11:11:00'),
(323, 158, '750000.00', 8, '1', '2023-05-08 08:06:00', '2023-05-10', 'ARIEL SUAREZ', 'REDUCTOR SINFIN CORONA GIRAVAN', 'LUISA', '28316', 'CONTADO', 'GP 074', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '6', ' 18582', 'TCC', ' 353306242', '', '', 'REDUCTOR SE ENVIA POR TCC', '2023-05-08 11:16:00'),
(329, 21, '15028800.00', 2, '1', '2023-05-08 09:14:00', '2023-05-15', 'ANDRES MONTOYA', 'POLIPASTO ELECTRICO A CADENA', 'KATHERINE', '28317', 'CREDITO ', 'A02-COC-00135541', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'Entregar en: ALMACEN SUMINISTROS SAN PEDRO LACTEOS  Contacto: FERNEY GARCIA LONDOÑO Dirección: CARRERA 49 N° 40-86 Ciudad: San Pedro De Los Milagros Celular: 3208527981 \r\nCortar 12m de cadena de 7.1mm diametro.\r\n', '6', '', '', '', '', '', '', NULL),
(330, 159, '3200000.00', 3, '1', '2023-05-08 09:27:00', '2023-06-19', 'IZUKAITZ OAR ', 'FRENO FA 05 PARA MOTOR BONFIGLIOLI', 'SANTIAGO ', '28319', 'CONTADO ', '23PC-0448', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FRENO PARA MOTOR BONFIGLIOLI BX 90LA 4 \r\nFRENO FA05 ', '2', '', '', '', '', '', '', NULL),
(331, 106, '100000.00', 8, '1', '2023-05-08 12:02:00', '2023-05-10', 'JEISON MANRIQUE', 'FLANCHE LATERAL DE ANCLAJE LARGO W63/BONFIGLIOLI', 'LUISA', '28320', 'CREDITO', 'OC 232142', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'La entrega debe ser en la oficina principal de TCC en Montevideo-Bogotá, allí la recoge el cliente', '6', ' 18580', 'TCC', ' 3533059409', '', '', 'SE ENVIA A PPAL DE TCC MONTEVI', '2023-05-08 11:13:00'),
(332, 160, '1894000.00', 8, '1', '2023-05-08 16:21:00', '2023-05-12', 'ING. YESID MARTELO', 'MOTOR ELECTRICO WEG 1 HP A 1800 RPM', 'LUISA', '28321', 'CONTADO', '303', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'FLANCHE B5, CARCASA 80S', '6', ' 18593', 'TCC', ' 353352138', '', '', 'SE ENVIA MOTOR CON FLANCHE B14', '2023-05-12 11:40:00'),
(333, 51, '2979000.00', 6, '1', '2023-05-09 08:06:00', '2023-05-09', 'EVELIN TATIANA OSPINA MACIAS ', 'MOTOREDUC BONFI VF44 P1-7 P71 B14 B3', 'YERALDINNE ', '28322', 'CREDITO', '4502565532', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON FLANCHE Y CON EJE HUECO ', '6', ' 18586', 'TCC', ' 353327309', '', '', 'MR SE ENVIO POR TCC', '2023-05-10 11:28:00'),
(334, 154, '4490000.00', 6, '1', '2023-05-10 09:07:00', '2023-05-10', 'GIOVANNY PRADA ', 'REDUCTOR W63U 15 P71 B5', 'SANTIAGO ', '28323', 'CREDITO ', '697640', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EL EQUIPO VA CON EJE HUECO ', '6', ' 18588', 'TCC', ' 353327509', '', '', 'REDUCTOR SE ENVIA POR TCC', '2023-05-10 11:31:00'),
(335, 52, '2942857.00', 6, '1', '2023-05-10 11:34:00', '2023-05-10', 'MAURICIO GALEANO ALVAREZ ', 'BA 80 B2 220-440 MOTOR ELE 1HP 3600RPM ', 'YERALDINNE', '28324', 'A 30 DIAS ', 'OC82552', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'SE REQUIERE CON BRIDA DE 200MM', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(336, 6, '3793000.00', 6, '1', '2023-05-10 15:40:00', '2023-05-17', 'JUAN ESTEBAN OSPINA TAMAYO', 'MOTORRED BONFLIGL  VF49 1.5HP 82RPM  220V', 'YERALDINNE', '28325', 'A 30 DIAS', '1011696', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'MOTOREDUCTOR VA CON EJE HUECO Y BRIDA PEQUEÑA.', '6', ' 18589 ', 'LOCAL', '', '', '', 'SE ENVIA MR SIN FLANCHE DE SAL', '2023-05-11 11:36:00'),
(337, 46, '5900000.00', 8, '1', '2023-05-11 08:11:00', '2023-09-25', 'KAREN RODADO', 'DRIVE EMERSON SKBSKB110075 120V AC 7.5A', 'LUISA', '28326', 'CREDITO 45 ', '44648981', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', '', '1', '', '', '', '', '', '', NULL),
(338, 8, '4255800.00', 6, '1', '2023-05-11 08:27:00', '2023-05-11', 'ANDRES FELIPE ALCALÁ', 'MOTOR REDUCTOR BONFIGLIOLI VF44. I=35. HP=0.33 P71B5', 'YERALDINNE', '28327', 'A 30 DIAS ', '0000352259', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'EJE HUECO Y BRIDA.', '6', ' 18590', 'TCC', ' 353352031', '', '', 'SE ENVIA MOTOR A 3600 CON RELA', '2023-05-11 11:37:00'),
(339, 161, '3900000.00', 3, '1', '2023-05-11 11:12:00', '2023-05-11', 'FABIAN GARCIA OSPINA ', 'VARIADOR DE VELOCIDADD SYN10 S 220 05 AF', 'SANTIAGO ', '28328', 'CONTADO', 'POR CORREO ', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'La dirección de entrega del producto es Autopista Medellin-Bogota km 28 entre retorno 7 y 8 Guarne, Antioquia centro de distriubucion Avon-Ecobranch contacto Juan Ceballos.\r\n\r\nLa factura se debe enviar al correo coordinador.aseo@la.avon.com y  siesaferecepcion@siesa.com\r\n\r\n', '1', '', '', '', '', '', '', NULL),
(340, 21, '15314284.00', 1, '1', '2023-05-17 09:57:00', '2023-05-20', 'ANDRES MAURICIO MONTOYA', 'CAJA REDUCTORA BONFIGLIOLI W86UP100B5', 'YERALDINNE', '28331', '60 Dias', '00136782', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'VDA SAN JUAN KM 6 Ciudad: Santa Rosa De Osos\nEmail: srosuministros@colanta.com.co\nHorario: Lun a Vie de 8 a 5 pm  Sab 8 a 12 pm', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(341, 60, '59260000.00', 6, '1', '2023-05-17 11:16:00', '2023-10-17', 'LUCIA LEDESMA', 'REDUCTOR,H1SH03- 4351616-0031-001,FL', 'SANTIAGO', '28333', 'A 90 DIAS', '4504321240', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'CON VENTILADOR EN EL EJE DE ENTRADA', '1', '', '', '', '', '', '', NULL),
(28361, 3, '0.00', 1, '1', '2023-01-01 01:00:00', '2023-05-18', 'LU', 'MOTOT', 'ESTEBAN', '', 'CONTADO', '0202', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'WDWD', 'Seleccionar Estado', '', '', '', '', '', '', NULL),
(28362, 3, '420000.00', 1, '1', '0000-00-00 00:00:00', '2023-01-01', 'IEFNEIF', 'MFOEMFOEMF', 'ESTEBAN', 'undefined', 'FFO', '92939', 'Producto1:                    Producto 2:                     Producto 3:                     Producto 4: ', 'OBSER', 'Seleccionar Estado', '', '', '', '', '', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  ADD PRIMARY KEY (`codestadoorden`);

--
-- Indices de la tabla `mododespacho`
--
ALTER TABLE `mododespacho`
  ADD PRIMARY KEY (`codmododespacho`);

--
-- Indices de la tabla `ordendecompra`
--
ALTER TABLE `ordendecompra`
  ADD PRIMARY KEY (`id_ordendecompra`);

--
-- Indices de la tabla `ordendecompraproductos`
--
ALTER TABLE `ordendecompraproductos`
  ADD PRIMARY KEY (`id_orden_productos`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `remision`
--
ALTER TABLE `remision`
  ADD PRIMARY KEY (`id_requisicion`) USING BTREE;

--
-- Indices de la tabla `remisionproductos`
--
ALTER TABLE `remisionproductos`
  ADD PRIMARY KEY (`id_remisionproductos`) USING BTREE;

--
-- Indices de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  ADD PRIMARY KEY (`codtiposervicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  MODIFY `codestadoorden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mododespacho`
--
ALTER TABLE `mododespacho`
  MODIFY `codmododespacho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ordendecompra`
--
ALTER TABLE `ordendecompra`
  MODIFY `id_ordendecompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordendecompraproductos`
--
ALTER TABLE `ordendecompraproductos`
  MODIFY `id_orden_productos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `remision`
--
ALTER TABLE `remision`
  MODIFY `id_requisicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `remisionproductos`
--
ALTER TABLE `remisionproductos`
  MODIFY `id_remisionproductos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  MODIFY `codtiposervicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28363;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
