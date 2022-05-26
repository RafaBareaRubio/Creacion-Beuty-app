-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2022 a las 20:01:47
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
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `precio` varchar(10) NOT NULL,
  `oferta` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  `tipo` set('Cortes','Rituales','Barba y Afeitado','Tinte y Coloración','Tratamientos','Depilación') NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`precio`, `oferta`, `descripcion`, `tipo`, `nombre`, `id`) VALUES
('12,00', NULL, 'Te asesoramos y adaptamos tu cabello a tu estilo, genetica capilar y rostro. Lavado con shot de champu específico para tu cabello o cuero cabelludo con un masaje express. Corte localizado y aplicación de un producto específico de peinado.', 'Cortes', 'Diseño corte personzalizado', 1),
('8,00', NULL, 'Corte de cabello solo y exclusivo a máquina shot de champu específico para tu cabello o cuero cabelludo con un masaje express. Aplicación de producto específico de peinado.(degradado o rapado)', 'Cortes', 'Corte o arreglo a máquina', 2),
('18,00', NULL, 'Diseño de corte personalizado + arreglo de barba completo.', 'Cortes', 'Corte + barba', 3),
('11,50', NULL, 'Corte exclusivo a máquina + barba exclusiva a máquina', 'Cortes', 'Corte máquina+barba exprés', 4),
('14,00', NULL, 'Corte exclusivo a máquina + arreglo completo a máquina', 'Cortes', 'Corte máquina + barba', 5),
('9,00', NULL, 'Para menores de 10 años', 'Cortes', 'Corte niño', 6),
('15,50', NULL, 'Diseño de corte + barba exclusiva a máquina', 'Cortes', 'Corte+barba exprés', 7),
('7,00', NULL, '', 'Cortes', 'Corte Jubilado', 8),
('30,00', NULL, 'Padre + 2 hijos (cualquier edad). Tendrán que acudir juntos a la cita.', 'Cortes', 'Pack familiar 2', 9),
('21,00', NULL, 'Padre + un hijo (cualquier edad). Tendrán que asistir juntos', 'Cortes', 'Pack familiar 1', 10),
('10,00', NULL, 'Afeitado integral de cabeza con navaja, aplicación de toalla caliente sobre el cuero cabelludo para la preparación de la piel.', 'Cortes', 'Afeitado zona superior con navaja', 11),
('3,50', NULL, 'Picmentamos la barba tampando faltas de pelo o canosodad. Duracion 2-3 dias . Resultado muy natural.', 'Barba y Afeitado', 'Semipermanente barba no', 12),
('6,00', NULL, 'Barba exprés\r\nTe asesoramos en el diseño de tu barba mediante el estudio de tus facciones. Arreglo exclusivo a máquina.', 'Barba y Afeitado', 'Barba exprés', 13),
('15,00', NULL, 'Preparación del afeitado com aplicación de una toalla caliente.Afeitado al modo tradicional com espuma premium de afeitar a favor del nacimiento del bello para un primer rasurado. Aplicación de una segunda toalla caliente para una segunda pasada y asi lodrar un afeitado óptimo Finalizaremos con una toalla fria para tener una experiencia de confort y la aplicación de un afthershave y crema hidratante específicos par reparar e hidratar la piel.', 'Rituales', 'Ritual de afeitado', 14),
('15,00', NULL, 'Diseño de la barba, preafeitado con aplicación de una toalla caliente para la preparación de la piel.Afeitado al modo tradicional con espuma premium de afeitar. Lavado con champú específico para barba con masaje express. Aplicación de una segunda toalla caliente para la preparación de una limpieza facial, acompañada de un masaje facial relájate. Finalizaremos con un afthershave , aceites y crema hidratante específicos par reparar e hidratar la piel.\r\n', 'Rituales', 'Ritual de barba', 15),
('8,00', NULL, 'Lavado con champú especializado para la barba, aplicación de una toalla caliente para la preparación de la piel . Diseño de la barba, limpieza de los contornos al modo tradicional con navaja y finalizaremos con un after shave específico y aceites naturales para reparar e hidratar la piel y devolverla a su estado natural.', 'Barba y Afeitado', 'Arreglo de barba completo', 16),
('8,00', NULL, 'Preparación de la piel con toalla caliente. Aplicación de una espuma de afeitar que facilita el deslizamiento de la navaja y hace que el afeitado tenga un confort máximo. Aplicación con masaje de aftershave específico para reparar e hidratar la piel y devolverla a su estado natural.', 'Barba y Afeitado', 'Afeitado a navaja', 17),
('25,00', NULL, 'Mechas tradicionales con un mayor poder de aclaración para un look más desenfadado y casual, para los más atrevidos.', 'Tinte y Coloración', 'Mechas hombre', 18),
('12,00', NULL, 'Reflejos flash solar. Reflejos naturales imitando la aclaración producida por el sol en el cabello. Efectos muy naturales e integrados en el look del hombre.', 'Tinte y Coloración', 'Reflejos hombre', 19),
('40,00', NULL, 'Para los más atrevidos ofrecemos una gran variedad de colores para tu cabello.', 'Tinte y Coloración', 'Colores fantasía', 20),
('35,00', NULL, 'Mechas blancas para un look más moderno y divertido.', 'Tinte y Coloración', 'Mechas blancas', 21),
('4,00', NULL, 'Regula el exceso de secreción sebácea, renueva la piel y cierra los poros. Sus activos detoxificantes devuelven un cuero cabelludo oxigenado y purificado', 'Tratamientos', 'Peelling capilar', 22),
('10,00', NULL, 'Aceite de Argán, Colágeno marino, Acido hialurónico y Provitamina B5. Nutriente y reparador para pelo, barba, cuero cabelludo y facial. Equilibra el PH del pelo y la barba. Calma los picores provocados por la barba. Activa la circulación. Previene el cuero cabelludo hipotónico y oxigena el bulbo. Prolonga la vida del cabello.\r\n', 'Tratamientos', 'Tratamiento reparador y nutritivo', 23),
('6,00', NULL, 'Aplicación de un limpiador exfoliante que regula el exceso de secreción sebácea renueva la piel y cierra los poros. Sus activos detoxificantes devuelven una piel oxigenada y purificada. Tratamiento ideal para el pre afeitado.', 'Rituales', 'Ritual facial', 24),
('10,00', NULL, 'Contiene componentes como el aceite de árbol de té y de menta, Zinc, Provitamina B5, Niacinamida y Ácido Silicílico, todos con grandes principios activos que evitan la aparición de caspa en el casco. Sin duda es el mejor tratamiento anticaspa y anti grasa hasta el momento.', 'Tratamientos', 'Tratamiento Anti-Caspa-Grasa', 25),
('5,00', NULL, 'Depilación de cejas con pinza. Tomamos medidas del perímetro de tus cejas consiguiendo un acabado personalizado .Finalizaremos con aplicación de crema calmante.', 'Depilación', 'Depilación cejas hombre', 26),
('4,00', NULL, 'Depilación de las fosas nasales y oreja con cera.', 'Depilación', 'Depilación con cera de orejas y nariz', 27);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
