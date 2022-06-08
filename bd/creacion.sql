-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2022 a las 19:10:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `creacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `unidad` int(200) DEFAULT NULL,
  `precio` varchar(10) NOT NULL,
  `oferta` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `unidad`, `precio`, `oferta`, `descripcion`) VALUES
(2, 'Tijeras', 2, '15', NULL, 'Las mejores del mercado'),
(4, 'juan', 1, '30', '', 'ironwan'),
(7, '32', 0, 'rafa', 'Corte', 'rafa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `tipo` set('Cortes','Rituales','Barba y Afeitado','Tinte y Coloración','Tratamientos','Depilación') NOT NULL,
  `oferta` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `nombre`, `precio`, `tipo`, `oferta`, `descripcion`) VALUES
(1, 'Diseño corte personzalizado', '12,00', 'Cortes', NULL, 'Te asesoramos y adaptamos tu cabello a tu estilo, genetica capilar y rostro. Lavado con shot de champu específico para tu cabello o cuero cabelludo con un masaje express. Corte localizado y aplicación de un producto específico de peinado.'),
(2, 'Corte o arreglo a máquina', '8,00', 'Cortes', NULL, 'Corte de cabello solo y exclusivo a máquina shot de champu específico para tu cabello o cuero cabelludo con un masaje express. Aplicación de producto específico de peinado.(degradado o rapado)'),
(3, 'Corte + barba', '18,00', 'Cortes', NULL, 'Diseño de corte personalizado + arreglo de barba completo.'),
(4, 'Corte máquina+barba exprés', '11,50', 'Cortes', NULL, 'Corte exclusivo a máquina + barba exclusiva a máquina'),
(5, 'Corte máquina + barba', '14,00', 'Cortes', NULL, 'Corte exclusivo a máquina + arreglo completo a máquina'),
(6, 'Corte niño', '9,00', 'Cortes', NULL, 'Para menores de 10 años'),
(7, 'Corte+barba exprés', '15,50', 'Cortes', NULL, 'Diseño de corte + barba exclusiva a máquina'),
(8, 'Corte Jubilado', '7,00', 'Cortes', NULL, ''),
(9, 'Pack familiar 2', '30,00', 'Cortes', NULL, 'Padre + 2 hijos (cualquier edad). Tendrán que acudir juntos a la cita.'),
(10, 'Pack familiar 1', '21,00', 'Cortes', NULL, 'Padre + un hijo (cualquier edad). Tendrán que asistir juntos'),
(11, 'Afeitado zona superior con navaja', '10,00', 'Cortes', NULL, 'Afeitado integral de cabeza con navaja, aplicación de toalla caliente sobre el cuero cabelludo para la preparación de la piel.'),
(12, 'Semipermanente barba no', '3,50', 'Barba y Afeitado', NULL, 'Picmentamos la barba tampando faltas de pelo o canosodad. Duracion 2-3 dias . Resultado muy natural.'),
(13, 'Barba exprés', '6,00', 'Barba y Afeitado', NULL, 'Barba exprés\r\nTe asesoramos en el diseño de tu barba mediante el estudio de tus facciones. Arreglo exclusivo a máquina.'),
(14, 'Ritual de afeitado', '15,00', 'Rituales', NULL, 'Preparación del afeitado com aplicación de una toalla caliente.Afeitado al modo tradicional com espuma premium de afeitar a favor del nacimiento del bello para un primer rasurado. Aplicación de una segunda toalla caliente para una segunda pasada y asi lodrar un afeitado óptimo Finalizaremos con una toalla fria para tener una experiencia de confort y la aplicación de un afthershave y crema hidratante específicos par reparar e hidratar la piel.'),
(15, 'Ritual de barba', '15,00', 'Rituales', NULL, 'Diseño de la barba, preafeitado con aplicación de una toalla caliente para la preparación de la piel.Afeitado al modo tradicional con espuma premium de afeitar. Lavado con champú específico para barba con masaje express. Aplicación de una segunda toalla caliente para la preparación de una limpieza facial, acompañada de un masaje facial relájate. Finalizaremos con un afthershave , aceites y crema hidratante específicos par reparar e hidratar la piel.\r\n'),
(16, 'Arreglo de barba completo', '8,00', 'Barba y Afeitado', NULL, 'Lavado con champú especializado para la barba, aplicación de una toalla caliente para la preparación de la piel . Diseño de la barba, limpieza de los contornos al modo tradicional con navaja y finalizaremos con un after shave específico y aceites naturales para reparar e hidratar la piel y devolverla a su estado natural.'),
(17, 'Afeitado a navaja', '8,00', 'Barba y Afeitado', NULL, 'Preparación de la piel con toalla caliente. Aplicación de una espuma de afeitar que facilita el deslizamiento de la navaja y hace que el afeitado tenga un confort máximo. Aplicación con masaje de aftershave específico para reparar e hidratar la piel y devolverla a su estado natural.'),
(18, 'Mechas hombre', '25,00', 'Tinte y Coloración', NULL, 'Mechas tradicionales con un mayor poder de aclaración para un look más desenfadado y casual, para los más atrevidos.'),
(19, 'Reflejos hombre', '12,00', 'Tinte y Coloración', NULL, 'Reflejos flash solar. Reflejos naturales imitando la aclaración producida por el sol en el cabello. Efectos muy naturales e integrados en el look del hombre.'),
(20, 'Colores fantasía', '40,00', 'Tinte y Coloración', NULL, 'Para los más atrevidos ofrecemos una gran variedad de colores para tu cabello.'),
(21, 'Mechas blancas', '35,00', 'Tinte y Coloración', NULL, 'Mechas blancas para un look más moderno y divertido.'),
(22, 'Peelling capilar', '4,00', 'Tratamientos', NULL, 'Regula el exceso de secreción sebácea, renueva la piel y cierra los poros. Sus activos detoxificantes devuelven un cuero cabelludo oxigenado y purificado'),
(23, 'Tratamiento reparador y nutritivo', '10,00', 'Tratamientos', NULL, 'Aceite de Argán, Colágeno marino, Acido hialurónico y Provitamina B5. Nutriente y reparador para pelo, barba, cuero cabelludo y facial. Equilibra el PH del pelo y la barba. Calma los picores provocados por la barba. Activa la circulación. Previene el cuero cabelludo hipotónico y oxigena el bulbo. Prolonga la vida del cabello.\r\n'),
(24, 'Ritual facial', '6,00', 'Rituales', NULL, 'Aplicación de un limpiador exfoliante que regula el exceso de secreción sebácea renueva la piel y cierra los poros. Sus activos detoxificantes devuelven una piel oxigenada y purificada. Tratamiento ideal para el pre afeitado.'),
(25, 'Tratamiento Anti-Caspa-Grasa', '10,00', 'Tratamientos', NULL, 'Contiene componentes como el aceite de árbol de té y de menta, Zinc, Provitamina B5, Niacinamida y Ácido Silicílico, todos con grandes principios activos que evitan la aparición de caspa en el casco. Sin duda es el mejor tratamiento anticaspa y anti grasa hasta el momento.'),
(26, 'Depilación cejas hombre', '5,00', 'Depilación', NULL, 'Depilación de cejas con pinza. Tomamos medidas del perímetro de tus cejas consiguiendo un acabado personalizado .Finalizaremos con aplicación de crema calmante.'),
(27, 'Depilación con cera de orejas y nariz', '4,00', 'Depilación', NULL, 'Depilación de las fosas nasales y oreja con cera.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `telefono` int(9) NOT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `tipo` set('admin','usuario') NOT NULL,
  `gmail` varchar(30) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  `contrasena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`telefono`, `dni`, `tipo`, `gmail`, `nombre`, `apellidos`, `id`, `contrasena`) VALUES
(671639726, '11111111D', 'admin', 'rabarub@gmail.com', 'Rafa', 'Barea Rubio', 1, '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
