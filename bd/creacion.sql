-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2022 a las 15:25:35
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
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(4) NOT NULL,
  `idUsuario` varchar(30) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `emoji` set('Contento','Serio') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id`, `idUsuario`, `texto`, `emoji`) VALUES
(18, 'Rafita', 'Hola que tal', 'Contento'),
(19, 'Rafita', 'No me gusta', 'Serio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `unidad` int(200) DEFAULT NULL,
  `precio` varchar(10) NOT NULL,
  `oferta` varchar(500) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `unidad`, `precio`, `oferta`, `descripcion`, `foto`) VALUES
(11, 'POWDER MAX', NULL, '17,99€', NULL, 'Aporta al cabello flexibilidad a la vez que lo nutre, evitando el encrespamiento o frizz y evita los enredos. También aporta antioxidantes y nutrientes para las fibras capilares, mejorando la estructura de la queratina del pelo.', 'producto2.jpeg'),
(12, 'POWDER MAX', NULL, '17,99€', NULL, 'Aporta al cabello flexibilidad a la vez que lo nutre, evitando el encrespamiento o frizz y evita los enredos. También aporta antioxidantes y nutrientes para las fibras capilares, mejorando la estructura de la queratina del pelo.', 'producto2.jpeg'),
(13, 'RIBER POWDER', NULL, '17,47', NULL, 'Hidrata la raíz del pelo y devuelve la vitalidad desde el folículo piloso.', 'producto3.jpeg'),
(14, 'Matt Max 100ml', NULL, '17,47', NULL, 'Formulada con cera de abejas, fijación 100% mate, textura fácil de utilizar. Cera de peinado acabado mate, formulada con cera de abeja incorpora un nuevo y exclusivo perfume, formato de 100 ml.', 'producto4.jpeg'),
(15, 'SPIDER WAX 100ml', NULL, '17,47€', NULL, 'Una cera que ofrece un peinado de efecto elástico, fijación media-alta, brillo medio.', 'producto1.jpeg'),
(16, 'Matt Spray 300 ml', NULL, '16,40€', NULL, 'Matt Spray es nuestro fijador en formato spray. Una laca masculina ecológica sin gas. Puede aplicarse directamente sobre el cabello o en la mano, aporta una sensación de limpieza profunda en el cabello.', 'producto5.jpeg'),
(17, 'Fijador en spray para hombres', NULL, '17,47€', NULL, 'Una fijación para hombres que además hidrata la raíz del pelo y devuelve la vitalidad desde el folículo piloso.', 'producto6.jpeg'),
(18, 'Fibra en formato gel líquido', NULL, '17,47€', NULL, 'Un fijador para el hombre que también nutre y rejuvenece el cabello.', 'producto7.jpeg'),
(19, 'ANTI DANDRUFF', NULL, '14,25€', NULL, 'Combate al hongo causante de la caspa y alivia los picores.', 'producto8.jpeg'),
(20, 'OBP/CHAMPU DAILY DIET', NULL, '14,25', NULL, 'Un champú con un gran poder de limpieza que además ayuda a controlar los niveles de grasa.', 'producto9.jpeg'),
(21, 'DAILY DIET 750ML', NULL, '51,26€', NULL, 'Sus principios activos aportan una mayor elasticidad al cabello masculino, además de proporcionar efectos reparadores y rejuvenecedores en la fibra capilar.', 'producto10.jpeg'),
(22, 'HAIR LOSS TREATMENT 250 ML', NULL, '14,25€', NULL, 'Con Capixil reactiva las células débiles del folículo, estimulando una intensa actividad revitalizante prolongando la vida del cabello en fase de crecimiento.', 'producto11.jpeg'),
(23, 'OBP TOTAL OIL 50 ML', NULL, '14,00€', NULL, 'Es un producto de gran valor ya que tiene una multifunción increíble. Es todo lo que necesitas para el cabello, la barba y la piel. Es natural y de alta calidad elaborado con aceites de Cannabis Albaricoque Jojoba y Almendra. Brinda a la barba nutrición, suavidad y perfume. Es antibactericida y antimicrobiano. El aceite sirve también para el afeitado, brindando anti-irritaciones y como after-shave.', 'producto12.jpeg'),
(24, 'Face & Scalp peeling Detox 200ml.', NULL, '50,82€', NULL, 'Este producto es un limpiador facial, que elimina células muertas y puntos negros. Ideal para utilizarse como el primer paso en el ritual del afeitado. Mejora la experiencia y además facilita el proceso.', 'producto13.jpeg'),
(25, 'FACIAL MOISTURIZER 200ML. HIDRATANTE FACIAL', NULL, '50,82€', NULL, 'Una mascarilla que aporta una nutrición facial profunda. Contiene componentes como el colágeno marino que aporta un mayor nivel de nutrición y vitalidad a la barba. Y además, no deja efecto graso.', 'producto14.jpeg'),
(26, 'Acondicionador nutriente para cabello y barba', NULL, '14,25€', NULL, 'Sus principios activos generan nutrición, hidratación y reestructuran el cabello prolongando su juventud.', 'producto15.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id` int(4) NOT NULL,
  `idUsuario` varchar(30) NOT NULL,
  `fechaReserva` date NOT NULL,
  `horaReserva` time NOT NULL,
  `total` int(4) NOT NULL,
  `idServicio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `nombre`, `precio`, `tipo`, `oferta`, `descripcion`, `foto`) VALUES
(1, 'Diseño corte personzalizado', '12,00', 'Cortes', '', 'Te asesoramos y adaptamos tu cabello a tu estilo, genetica capilar y rostro. Lavado con shot de champu específico para tu cabello o cuero cabelludo con un masaje express. Corte localizado y aplicación de un producto específico de peinado.', 'Corte.jpeg'),
(2, 'Corte o arreglo a máquina', '8,00', 'Cortes', NULL, 'Corte de cabello solo y exclusivo a máquina shot de champu específico para tu cabello o cuero cabelludo con un masaje express. Aplicación de producto específico de peinado.(degradado o rapado)', 'Cortes1.jpg\r\n'),
(3, 'Corte + barba', '18,00', 'Cortes', NULL, 'Diseño de corte personalizado + arreglo de barba completo.', 'Cortes3.jpg'),
(4, 'Corte máquina+barba exprés', '11,50', 'Cortes', NULL, 'Corte exclusivo a máquina + barba exclusiva a máquina', 'Cortes4.jpg'),
(5, 'Corte máquina + barba', '14,00', 'Cortes', NULL, 'Corte exclusivo a máquina + arreglo completo a máquina', 'Cortes5.jpg'),
(6, 'Corte niño', '9,00', 'Cortes', NULL, 'Para menores de 10 años', 'Cortes6.jpg'),
(7, 'Corte+barba exprés', '15,50', 'Cortes', NULL, 'Diseño de corte + barba exclusiva a máquina', 'Cortes7.jpg'),
(8, 'Corte Jubilado', '7,00', 'Cortes', NULL, '', 'Cortes8.jpg'),
(9, 'Pack familiar 2', '30,00', 'Cortes', NULL, 'Padre + 2 hijos (cualquier edad). Tendrán que acudir juntos a la cita.', 'Cortes9.jpg'),
(10, 'Pack familiar 1', '21,00', 'Cortes', NULL, 'Padre + un hijo (cualquier edad). Tendrán que asistir juntos', 'Cortes10.jpg'),
(11, 'Afeitado zona superior con navaja', '10,00', 'Cortes', NULL, 'Afeitado integral de cabeza con navaja, aplicación de toalla caliente sobre el cuero cabelludo para la preparación de la piel.', 'Cortes11.jpg'),
(12, 'Semipermanente barba no', '3,50', 'Barba y Afeitado', NULL, 'Picmentamos la barba tampando faltas de pelo o canosodad. Duracion 2-3 dias . Resultado muy natural.', 'barbas1.jpg'),
(13, 'Barba exprés', '6,00', 'Barba y Afeitado', NULL, 'Barba exprés\r\nTe asesoramos en el diseño de tu barba mediante el estudio de tus facciones. Arreglo exclusivo a máquina.', 'barbas2.jpg'),
(14, 'Ritual de afeitado', '15,00', 'Rituales', NULL, 'Preparación del afeitado com aplicación de una toalla caliente.Afeitado al modo tradicional com espuma premium de afeitar a favor del nacimiento del bello para un primer rasurado. Aplicación de una segunda toalla caliente para una segunda pasada y asi lodrar un afeitado óptimo Finalizaremos con una toalla fria para tener una experiencia de confort y la aplicación de un afthershave y crema hidratante específicos par reparar e hidratar la piel.', 'rituales1.jpg\r\n'),
(15, 'Ritual de barba', '15,00', 'Rituales', NULL, 'Diseño de la barba, preafeitado con aplicación de una toalla caliente para la preparación de la piel.Afeitado al modo tradicional con espuma premium de afeitar. Lavado con champú específico para barba con masaje express. Aplicación de una segunda toalla caliente para la preparación de una limpieza facial, acompañada de un masaje facial relájate. Finalizaremos con un afthershave , aceites y crema hidratante específicos par reparar e hidratar la piel.\r\n', 'rituales2.jpg'),
(16, 'Arreglo de barba completo', '8,00', 'Barba y Afeitado', NULL, 'Lavado con champú especializado para la barba, aplicación de una toalla caliente para la preparación de la piel . Diseño de la barba, limpieza de los contornos al modo tradicional con navaja y finalizaremos con un after shave específico y aceites naturales para reparar e hidratar la piel y devolverla a su estado natural.', 'barbas3.jpg'),
(17, 'Afeitado a navaja', '8,00', 'Barba y Afeitado', NULL, 'Preparación de la piel con toalla caliente. Aplicación de una espuma de afeitar que facilita el deslizamiento de la navaja y hace que el afeitado tenga un confort máximo. Aplicación con masaje de aftershave específico para reparar e hidratar la piel y devolverla a su estado natural.', 'barbas4.jpg'),
(18, 'Mechas hombre', '25,00', 'Tinte y Coloración', NULL, 'Mechas tradicionales con un mayor poder de aclaración para un look más desenfadado y casual, para los más atrevidos.', 'tintes1.jpg'),
(19, 'Reflejos hombre', '12,00', 'Tinte y Coloración', NULL, 'Reflejos flash solar. Reflejos naturales imitando la aclaración producida por el sol en el cabello. Efectos muy naturales e integrados en el look del hombre.', 'tintes2.jpg'),
(20, 'Colores fantasía', '40,00', 'Tinte y Coloración', NULL, 'Para los más atrevidos ofrecemos una gran variedad de colores para tu cabello.', 'tintes3.jpg'),
(21, 'Mechas blancas', '35,00', 'Tinte y Coloración', NULL, 'Mechas blancas para un look más moderno y divertido.', 'tintes4.jpg'),
(22, 'Peelling capilar', '4,00', 'Tratamientos', NULL, 'Regula el exceso de secreción sebácea, renueva la piel y cierra los poros. Sus activos detoxificantes devuelven un cuero cabelludo oxigenado y purificado', 'tratamientos1.jpg'),
(23, 'Tratamiento reparador y nutritivo', '10,00', 'Tratamientos', NULL, 'Aceite de Argán, Colágeno marino, Acido hialurónico y Provitamina B5. Nutriente y reparador para pelo, barba, cuero cabelludo y facial. Equilibra el PH del pelo y la barba. Calma los picores provocados por la barba. Activa la circulación. Previene el cuero cabelludo hipotónico y oxigena el bulbo. Prolonga la vida del cabello.\r\n', 'tratamientos2.jpg'),
(24, 'Ritual facial', '6,00', 'Rituales', NULL, 'Aplicación de un limpiador exfoliante que regula el exceso de secreción sebácea renueva la piel y cierra los poros. Sus activos detoxificantes devuelven una piel oxigenada y purificada. Tratamiento ideal para el pre afeitado.', 'rituales3.jpg'),
(25, 'Tratamiento Anti-Caspa-Grasa', '10,00', 'Tratamientos', NULL, 'Contiene componentes como el aceite de árbol de té y de menta, Zinc, Provitamina B5, Niacinamida y Ácido Silicílico, todos con grandes principios activos que evitan la aparición de caspa en el casco. Sin duda es el mejor tratamiento anticaspa y anti grasa hasta el momento.', 'tratamientos3.jpg'),
(26, 'Depilación cejas hombre', '5,00', 'Depilación', NULL, 'Depilación de cejas con pinza. Tomamos medidas del perímetro de tus cejas consiguiendo un acabado personalizado .Finalizaremos con aplicación de crema calmante.', 'depilacion1.jpg'),
(27, 'Depilación con cera de orejas y nariz', '4,00', 'Depilación', NULL, 'Depilación de las fosas nasales y oreja con cera.', 'depilacion2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(4) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `nombreYape` varchar(30) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `gmail` varchar(30) NOT NULL,
  `telefono` int(9) DEFAULT NULL,
  `confirmado` set('0','1') NOT NULL DEFAULT '0',
  `tipo` set('admin','usuario','trabajador') NOT NULL DEFAULT 'usuario',
  `direccion` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contrasena`, `nombreYape`, `dni`, `gmail`, `telefono`, `confirmado`, `tipo`, `direccion`) VALUES
(1, 'Rafita', 'Rafalote1', 'Rafa Barea', '77852962D', 'rabarub@gmail.com', 671639726, '0', 'admin', NULL),
(2, 'ZaloAparicio', 'Gonzalo1', 'Gonzalo Aparicio', '11111111F', 'gonzalo@gmail.com', 111111111, '0', 'trabajador', NULL),
(3, 'JoseManuel', 'JoseManuel1', 'José Manuel', '22222222D', 'josemanuel@gmail.com', 222222222, '0', 'trabajador', NULL),
(4, 'usuario1', 'usuario1', 'Usuario', '00000000J', 'usu@gmail.com', 0, '0', 'usuario', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`) USING BTREE;

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idServicio` (`idServicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idServicio`) REFERENCES `servicio` (`nombre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
