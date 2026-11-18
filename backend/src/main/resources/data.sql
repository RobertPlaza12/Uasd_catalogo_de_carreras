-- Datos del catalogo para el perfil demo (H2 en memoria).
-- Generados a partir de backend/database/catalogo_carreras.sql

INSERT INTO facultades (id,nombre,descripcion,color,logo,decano_nombre,decano_foto) VALUES
(1,'Facultad de Ingeniería y Arquitectura','Forma profesionales capaces de diseñar, desarrollar e implementar soluciones tecnológicas y de ingeniería.','#17349d','assets/facultades/ingenieria.png','Ing. Mayra Sanchez','assets/decanos/ingenieria.png'),
(2,'Facultad de Ciencias Económicas y Sociales','Promueve la formación de profesionales en economía, administración, negocios y ciencias sociales.','#e46b0d','assets/facultades/economia.png','Mtra. Maribel Lorenzo','assets/decanos/economia.png'),
(3,'Facultad de Ciencias','Apoya la investigación científica y la enseñanza de las ciencias exactas y naturales, sirviendo de base fundamental para el desarrollo tecnológico.','#16a0ea','assets/facultades/ciencias.jpeg','Carlos Féliz','assets/decanos/ciencias.png'),
(4,'Facultad de Humanidades','Formar profesionales en el área del pensamiento, la cultura, las letras y la filosofía promoviendo el estudio crítico de la sociedad.','#8f1498','assets/facultades/humanidades.jpeg','Dra. Ana Jacqueline Ureña','assets/decanos/humanidades.png'),
(5,'Facultad de Ciencias Juridicas y Politicas','Forma profesionales del derecho y las ciencias políticas, promoviendo la justicia, el estudio de las leyes.','#ee0202','assets/facultades/juridica.jpeg','Mtro. Martín Montilla Luciano','assets/decanos/juridica.png'),
(6,'Facultad de Ciencias de la Salud','Encargada de formar al personal médico, enfocándose en la prevención, diagnóstico y atención del bienestar humano.','#dadd1c','assets/facultades/salud.jpeg','Dr. Ángel Nadal','assets/decanos/salud.png'),
(7,'Facultad de Ciencias Agronomicas y Veterinarias','Promueve el desarrollo del sector agropecuario, la seguridad alimentaria y la medicina veterinaria.','#007511','assets/facultades/agronomia.png','Dr. Luis Antonio Matos Casado','assets/decanos/agronomia.png'),
(8,'Facultad de Arte','Espacio dedicado a la creación, expresión estética y profesionalización en diversas ramas de las bellas artes.','#8a8f00','assets/facultades/arte.jpeg','DRA. Anitza Gutierrez','assets/decanos/arte.png'),
(9,'Facultad de Ciencias de la Educación','Centrada en la formación de docentes y profesionales de la pedagogía altamente calificados para liderar los procesos educativos.','#920316','assets/facultades/educacion.png','Dr. Carlos M. Santiago Quevedo','assets/decanos/educacion.png')
;

INSERT INTO escuelas (id,nombre,descripcion,facultad_id) VALUES
(11, 'Escuela de Agrimensura', 'Forma en la medición, delimitación y representación geométrica de la superficie terrestre.', 1),
(12, 'Escuela de Arquitectura', 'Enfocada en el diseño, planificación y construcción de espacios habitables y urbanos.', 1),
(13, 'Escuela de Electromecánica', 'Estudia los sistemas eléctricos y mecánicos aplicados a la industria y la tecnología.', 1),
(14, 'Escuela de Ingeniería Civil', 'Estudia el diseño, construcción y mantenimiento de infraestructuras civiles.', 1),
(15, 'Escuela de Ingeniería Industrial', 'Optimiza procesos productivos, sistemas y gestión de recursos en las organizaciones.', 1),
(16, 'Escuela de Ingeniería Química', 'Transforma materias primas en productos útiles mediante procesos químicos y físicos.', 1),

(21, 'Escuela de Administración', 'Desarrolla competencias para dirigir organizaciones y gestionar recursos estratégicamente.', 2),
(22, 'Escuela de Contabilidad', 'Prepara en el registro, control y análisis financiero de las operaciones contables.', 2),
(23, 'Escuela de Economía', 'Analiza la producción, distribución y consumo de bienes y servicios a escala macro y micro.', 2),
(24, 'Escuela de Estadística', 'Especializada en la recolección, análisis e interpretación de datos cuantitativos.', 2),
(25, 'Escuela de Mercadotecnia', 'Estudia el comportamiento de los mercados y las estrategias comerciales.', 2),
(26, 'Escuela de Sociología', 'Investiga las estructuras sociales, los comportamientos colectivos y las dinámicas de grupo.', 2),
(27, 'Escuela de Turismo y Hotelería', 'Forma profesionales en la gestión de servicios turísticos, hotelería y recreación.', 2),

(31, 'Escuela de Biología', 'Estudia los seres vivos, su origen, evolución y relaciones con el medio ambiente.', 3),
(32, 'Escuela de Ciencias Geográficas', 'Analiza el espacio terrestre, la cartografía y los fenómenos físico-espaciales.', 3),
(33, 'Escuela de Física', 'Investiga las leyes fundamentales de la materia, la energía y el universo.', 3),
(34, 'Escuela de Informática', 'Forma profesionales en desarrollo de software, sistemas de información y tecnologías digitales.', 3),
(35, 'Escuela de Matemática', 'Estudia los sistemas abstractos, números, estructuras y cálculo avanzado.', 3),
(36, 'Escuela de Microbiología y Parasitología', 'Estudia los microorganismos, bacterias, virus y su impacto en la salud y el ambiente.', 3),
(37, 'Escuela de Química', 'Investiga la composición, estructura y propiedades de la materia y sus reacciones.', 3),

(41, 'Escuela de Comunicación Social', 'Forma profesionales en periodismo, medios masivos y comunicación estratégica.', 4),
(42, 'Escuela de Filosofía', 'Estudia el pensamiento crítico, la ética, la lógica y la historia de las ideas.', 4),
(43, 'Escuela de Historia y Antropología', 'Analiza los procesos históricos de la humanidad y el desarrollo sociocultural.', 4),
(44, 'Escuela de Idiomas', 'Enseña lenguas extranjeras y fomenta la competencia multilingüe.', 4),
(45, 'Escuela de Letras', 'Estudia la lingüística, la literatura y la gramática hispánica.', 4),
(46, 'Escuela de Psicología', 'Analiza la conducta humana, los procesos mentales y la salud emocional.', 4),

(51, 'Escuela de Ciencias Políticas', 'Estudia el poder, los sistemas de gobierno, la teoría y la acción política.', 5),
(52, 'Escuela de Derecho', 'Forma profesionales expertos en las leyes, la justicia y el ordenamiento jurídico.', 5),

(61, 'Escuela de Bioanálisis', 'Especializada en análisis clínicos y de laboratorio para el diagnóstico médico.', 6),
(62, 'Escuela de Enfermería', 'Forma personal enfocado en el cuidado clínico, preventivo y asistencial del paciente.', 6),
(63, 'Escuela de Farmacia', 'Estudia el diseño, producción y dispensación de medicamentos y compuestos químicos.', 6),
(64, 'Escuela de Medicina', 'Forma médicos cirujanos enfocados en la salud integral y la atención clínica.', 6),
(65, 'Escuela de Odontología', 'Capacita en la salud bucodental, prevención y tratamientos estomatológicos.', 6),
(66, 'Escuela de Salud Pública', 'Enfocada en la prevención de enfermedades y promoción de la salud a nivel poblacional.', 6),

(71, 'Escuela de Agronomía', 'Promueve técnicas avanzadas de cultivo, producción agrícola y seguridad alimentaria.', 7),
(72, 'Escuela de Veterinaria', 'Forma médicos veterinarios para la salud animal y la producción pecuaria.', 7),
(73, 'Escuela de Zootecnia', 'Estudia la producción, cría y mejora genética de los animales domésticos y de granja.', 7),

(81, 'Escuela de Artes Plásticas', 'Fomenta la creación visual, pintura, escultura y dibujo artístico.', 8),
(82, 'Escuela de Cine, TV y Fotografía', 'Forma creadores y técnicos en el lenguaje audiovisual, cinematográfico y fotográfico.', 8),
(83, 'Escuela de Crítica e Historia del Arte', 'Analiza, investiga y contextualiza la historia y la teoría estética de las artes.', 8),
(84, 'Escuela de Diseño Industrial y Modas', 'Diseña productos funcionales, objetos de consumo y tendencias de vestimenta.', 8),
(85, 'Escuela de Música', 'Capacita en ejecución instrumental, composición, teoría musical y dirección.', 8),
(86, 'Escuela de Publicidad', 'Crea estrategias creativas de comunicación comercial, persuasión y diseño publicitario.', 8),
(87, 'Escuela de Teatro', 'Forma actores, dramaturgos y directores para la escena dramática y las artes escénicas.', 8),

(91, 'Escuela de Bibliotecología, Tec. e Innova.', 'Gestiona información bibliográfica y tecnologías aplicadas al aprendizaje.', 9),
(92, 'Escuela de Educación Física y Cs. del Dep.', 'Forma docentes en educación física, entrenamiento deportivo y recreación.', 9),
(93, 'Escuela de Educación Infantil y Básica', 'Prepara pedagogos especializados en la enseñanza de la primera infancia y educación primaria.', 9),
(94, 'Escuela de Educación Media', 'Forma profesores orientados a los niveles de secundaria en distintas áreas académicas.', 9),
(95, 'Escuela de Orientación Educativa y Psicopedagogía', 'Brinda herramientas de orientación vocacional, apoyo y acompañamiento psicopedagógico.', 9),
(96, 'Escuela de Teoría y Gestión Educativa', 'Estudia la administración, planificación y las políticas públicas del sistema educativo.', 9)
;

INSERT INTO carreras (id,nombre,pensum,enlace,escuela_id) VALUES
(111, 'Agrimensura', 'assets/pensums/agrimensura.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-agrimensura/', 11),

(121, 'Arquitectura', 'assets/pensums/arquitectura.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-arquitectura/', 12),

(131, 'Ingeniería Electromecánica (Mención Eléctrica)', 'assets/pensums/electromecanica-electrica.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-electromecanica/', 13),
(132, 'Ingeniería Electromecánica (Mención Mecánica)', 'assets/pensums/electromecanica-mecanica.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-electromecanica/', 13),

(141, 'Ingeniería Civil', 'assets/pensums/ingenieria-civil.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-ingenieria-civil/', 14),

(151, 'Ingeniería Industrial', 'assets/pensums/ingenieria-industrial.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-ingenieria-industrial/', 15),

(161, 'Ingeniería Química', 'assets/pensums/ingenieria-quimica.pdf', 'https://uasd.edu.do/facultad-ingenieria/escuelas/escuela-de-ingenieria-quimica/', 16),

(211, 'Administración de Empresas', 'assets/pensums/administracion-empresas.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-administracion/', 21),

(221, 'Contabilidad', 'assets/pensums/contabilidad.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-contabilidad/', 22),

(231, 'Economía', 'assets/pensums/economia.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-economia/', 23),

(241, 'Estadística mención Socioeconómica', 'assets/pensums/estadistica-socioeconomica.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-estadistica/', 24),

(251, 'Mercadotecnia', 'assets/pensums/mercadotecnia.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-mercadotecnia/', 25),

(261, 'Sociología', 'assets/pensums/sociologia.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-sociologia/', 26),

(271, 'Licenciatura en Turismo y Hotelería', 'assets/pensums/turismo.pdf', 'https://uasd.edu.do/facultad-economia/escuelas/escuela-de-turismo/', 27),

(311, 'Biología (Orientada a la Educación Secundaria)', 'assets/pensums/biologia-educacion.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-biologia/', 31),
(312, 'Licenciatura en Biología', 'assets/pensums/biologia.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-biologia/', 31),

(321, 'Licenciatura en Ciencias Geográficas', 'assets/pensums/ciencias-geograficas.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-ciencias-geograficas/', 32),

(331, 'Física (Orientada a la Educación Secundaria)', 'assets/pensums/fisica-educacion.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-fisica/', 33),
(332, 'Licenciatura en Física', 'assets/pensums/fisica.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-fisica/', 33),

(341, 'Licenciatura en Informática', 'assets/pensums/informatica.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-informatica/', 34),
(342, 'Ingeniería en Sistemas y Computación', 'assets/pensums/sistemas.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-informatica/', 34),

(351, 'Matemática (Orientada a la Educación Secundaria)', 'assets/pensums/matematica-educacion.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-matematica/', 35),
(352, 'Licenciatura en Matemática', 'assets/pensums/matematica.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-matematica/', 35),

(361, 'Licenciatura en Microbiología', 'assets/pensums/microbiologia.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-microbiologia/', 36),

(371, 'Química (Orientada a la Educación Secundaria)', 'assets/pensums/quimica-educacion.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-quimica/', 37),
(372, 'Licenciatura en Química', 'assets/pensums/quimica.pdf', 'https://uasd.edu.do/facultad-ciencias/escuelas/escuela-de-quimica/', 37),

(411, 'Comunicación Social (Mención Periodismo)', 'assets/pensums/comunicacion-periodismo.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-comunicacion/', 41),
(412, 'Comunicación Social (Mención Relaciones Públicas)', 'assets/pensums/comunicacion-rrpp.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-comunicacion/', 41),
(413, 'Comunicación Social (Mención Audiovisual)', 'assets/pensums/comunicacion-audiovisual.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-comunicacion/', 41),

(421, 'Licenciatura en Filosofía', 'assets/pensums/filosofia.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-filosofia/', 42),

(431, 'Licenciatura en Historia', 'assets/pensums/historia.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-historia/', 43),

(441, 'Licenciatura en Lenguas Extranjeras (Mención Inglés)', 'assets/pensums/lenguas-ingles.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-idiomas/', 44),
(442, 'Licenciatura en Lenguas Extranjeras (Mención Francés)', 'assets/pensums/lenguas-frances.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-idiomas/', 44),

(451, 'Letras (Orientada a la Educación Secundaria)', 'assets/pensums/letras-educacion.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-letras/', 45),
(452, 'Licenciatura en Filología / Letras Puras', 'assets/pensums/letras-puras.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-letras/', 45),

(461, 'Licenciatura en Psicología (Mención Industrial)', 'assets/pensums/psicologia-industrial.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-psicologia/', 46),
(462, 'Licenciatura en Psicología (Mención Clínica)', 'assets/pensums/psicologia-clinica.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-psicologia/', 46),
(463, 'Licenciatura en Psicología (Mención Escolar)', 'assets/pensums/psicologia-escolar.pdf', 'https://uasd.edu.do/facultad-humanidades/escuelas/escuela-de-psicologia/', 46),

(511, 'Licenciatura en Ciencias Políticas', 'assets/pensums/ciencias-politicas.pdf', 'https://uasd.edu.do/facultad-juridicas/escuelas/escuela-de-ciencias-politicas/', 51),

(521, 'Licenciatura en Derecho', 'assets/pensums/derecho.pdf', 'https://uasd.edu.do/facultad-juridicas/escuelas/escuela-de-derecho/', 52),

(611, 'Licenciatura en Bioanálisis', 'assets/pensums/bioanalisis.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-bioanalisis/', 61),

(621, 'Licenciatura en Enfermería', 'assets/pensums/enfermeria.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-enfermeria/', 62),

(631, 'Licenciatura en Farmacia', 'assets/pensums/farmacia.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-farmacia/', 63),

(641, 'Doctor en Medicina', 'assets/pensums/medicina.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-medicina/', 64),
(642, 'Licenciatura en Imagenología', 'assets/pensums/imagenologia.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-medicina/', 64),
(643, 'Licenciatura en Terapia Física', 'assets/pensums/terapia-fisica.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-medicina/', 64),

(651, 'Doctor en Odontología', 'assets/pensums/odontologia.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-odontologia/', 65),

(661, 'Licenciatura en Salud Pública', 'assets/pensums/salud-publica.pdf', 'https://uasd.edu.do/facultad-salud/escuelas/escuela-de-salud-publica/', 66),

(711, 'Ingeniería Agronómica (Mención Cultivos)', 'assets/pensums/agronomia-cultivos.pdf', 'https://uasd.edu.do/facultad-agronomia/escuelas/escuela-de-agronomia/', 71),
(712, 'Ingeniería Agronómica (Mención Suelos y Riegos)', 'assets/pensums/agronomia-suelos.pdf', 'https://uasd.edu.do/facultad-agronomia/escuelas/escuela-de-agronomia/', 71),

(721, 'Doctor en Medicina Veterinaria', 'assets/pensums/veterinaria.pdf', 'https://uasd.edu.do/facultad-agronomia/escuelas/escuela-de-veterinaria/', 72),

(731, 'Licenciatura en Zootecnia', 'assets/pensums/zootecnia.pdf', 'https://uasd.edu.do/facultad-agronomia/escuelas/escuela-de-zootecnia/', 73),

(811, 'Licenciatura en Artes Plásticas (Mención Pintura)', 'assets/pensums/artes-plastica-pintura.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-artes-plasticas/', 81),
(812, 'Licenciatura en Artes Plásticas (Mención Escultura)', 'assets/pensums/artes-plastica-escultura.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-artes-plasticas/', 81),

(821, 'Licenciatura en Cine y Audiovisuales', 'assets/pensums/cine.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-cine/', 82),

(831, 'Licenciatura en Historia del Arte', 'assets/pensums/historia-del-arte.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-critica-arte/', 83),

(841, 'Licenciatura en Diseño Industrial', 'assets/pensums/diseno-industrial.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-diseno/', 84),
(842, 'Licenciatura en Diseño de Modas', 'assets/pensums/diseno-modas.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-diseno/', 84),

(851, 'Licenciatura en Música (Mención Instrumento)', 'assets/pensums/musica-instrumento.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-musica/', 85),
(852, 'Licenciatura en Música (Mención Educación Musical)', 'assets/pensums/musica-educacion.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-musica/', 85),

(861, 'Licenciatura en Publicidad (Mención Diseño)', 'assets/pensums/publicidad-diseno.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-publicidad/', 86),
(862, 'Licenciatura en Publicidad (Mención Creatividad y Redacción)', 'assets/pensums/publicidad-creatividad.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-publicidad/', 86),

(871, 'Licenciatura en Teatro', 'assets/pensums/teatro.pdf', 'https://uasd.edu.do/facultad-arte/escuelas/escuela-de-teatro/', 87),

(911, 'Licenciatura en Bibliotecología y Ciencias de la Información', 'assets/pensums/bibliotecologia.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-bibliotecologia/', 91),

(921, 'Licenciatura en Educación Física', 'assets/pensums/educacion-fisica.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-educacion-fisica/', 92),

(931, 'Licenciatura en Educación Inicial', 'assets/pensums/educacion-inicial.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-educacion-inicial/', 93),
(932, 'Licenciatura en Educación Básica', 'assets/pensums/educacion-basica.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-educacion-basica/', 93),

(941, 'Licenciatura en Educación (Mención Letras)', 'assets/pensums/educacion-letras.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-educacion-media/', 94),
(942, 'Licenciatura en Educación (Mención Ciencias Sociales)', 'assets/pensums/educacion-sociales.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-educacion-media/', 94),
(943, 'Licenciatura en Educación (Mención Matemáticas y Física)', 'assets/pensums/educacion-matematicas-fisica.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-educacion-media/', 94),

(951, 'Licenciatura en Orientación Académica', 'assets/pensums/orientacion-academica.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-orientacion/', 95),

(961, 'Licenciatura en Gestión y Administración Educativa', 'assets/pensums/gestion-educativa.pdf', 'https://uasd.edu.do/facultad-educacion/escuelas/escuela-de-teoria-educativa/', 96)
;

-- Fix pensum URLs en lugar de archivo local

-- Facultad de Ingeniería y Arquitectura
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-AGRI&plan=000012&nivel=GR' WHERE `id` = 111;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ARQ&plan=000013&nivel=GR' WHERE `id` = 121;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IEME&plan=000012&nivel=GR' WHERE `id` = 131;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IEMM&plan=000012&nivel=GR' WHERE `id` = 132;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ICIV&plan=000012&nivel=GR' WHERE `id` = 141;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IIND&plan=000012&nivel=GR' WHERE `id` = 151;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IQUI&plan=000012&nivel=GR' WHERE `id` = 161;

-- Facultad de Ciencias Económicas y Sociales
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ADME&plan=000013&nivel=GR' WHERE `id` = 211;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CONT&plan=000012&nivel=GR' WHERE `id` = 221;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ECON&plan=000013&nivel=GR' WHERE `id` = 231;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ESTS&plan=000012&nivel=GR' WHERE `id` = 241;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-MERC&plan=000013&nivel=GR' WHERE `id` = 251;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-SOCI&plan=000013&nivel=GR' WHERE `id` = 261;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-TURH&plan=201810&nivel=GR' WHERE `id` = 271;

-- Facultad de Ciencias
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMBQ&plan=201420&nivel=GR' WHERE `id` = 311;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-BIOL&plan=000012&nivel=GR' WHERE `id` = 312;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-GEOG&plan=000011&nivel=GR' WHERE `id` = 321;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMFM&plan=201420&nivel=GR' WHERE `id` = 331;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-FISI&plan=000012&nivel=GR' WHERE `id` = 332;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-INFO&plan=200820&nivel=GR' WHERE `id` = 341;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMFM&plan=201420&nivel=GR' WHERE `id` = 351;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-MATE&plan=201510&nivel=GR' WHERE `id` = 352;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-MICR&plan=201810&nivel=GR' WHERE `id` = 361;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMBQ&plan=201420&nivel=GR' WHERE `id` = 371;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-QUIM&plan=201110&nivel=GR' WHERE `id` = 372;

-- Facultad de Humanidades
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CSPE&plan=000012&nivel=GR' WHERE `id` = 411;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CSRP&plan=000012&nivel=GR' WHERE `id` = 412;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CSCG&plan=000012&nivel=GR' WHERE `id` = 413;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-FILO&plan=000012&nivel=GR' WHERE `id` = 421;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-HIST&plan=000012&nivel=GR' WHERE `id` = 431;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-LEMI&plan=000012&nivel=GR' WHERE `id` = 441;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-LEMF&plan=000012&nivel=GR' WHERE `id` = 442;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMML&plan=201420&nivel=GR' WHERE `id` = 451;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-LET&plan=000012&nivel=GR' WHERE `id` = 452;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-PSII&plan=000012&nivel=GR' WHERE `id` = 461;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-PSIC&plan=000012&nivel=GR' WHERE `id` = 462;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-PSIE&plan=000012&nivel=GR' WHERE `id` = 463;

-- Facultad de Ciencias Jurídicas y Políticas
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CSPO&plan=000012&nivel=GR' WHERE `id` = 511;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-DERE&plan=000012&nivel=GR' WHERE `id` = 521;

-- Facultad de Ciencias de la Salud
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-BIOA&plan=000014&nivel=GR' WHERE `id` = 611;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ENFE&plan=000013&nivel=GR' WHERE `id` = 621;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-FARM&plan=000012&nivel=GR' WHERE `id` = 631;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-DMED&plan=200920&nivel=GR' WHERE `id` = 641;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IMAG&plan=000014&nivel=GR' WHERE `id` = 642;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CODO&plan=000012&nivel=GR' WHERE `id` = 651;

-- Facultad de Ciencias Agronómicas y Veterinarias
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IAPC&plan=000012&nivel=GR' WHERE `id` = 711;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IASR&plan=000012&nivel=GR' WHERE `id` = 712;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-MEDV&plan=000012&nivel=GR' WHERE `id` = 721;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-IZOO&plan=201810&nivel=GR' WHERE `id` = 731;

-- Facultad de Artes
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ARPP&plan=201010&nivel=GR' WHERE `id` = 811;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ARPE&plan=201010&nivel=GR' WHERE `id` = 812;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-CINC&plan=201010&nivel=GR' WHERE `id` = 821;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-HISA&plan=201010&nivel=GR' WHERE `id` = 831;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-AIDI&plan=201010&nivel=GR' WHERE `id` = 841;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-AIDM&plan=201010&nivel=GR' WHERE `id` = 842;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-MUS&plan=200820&nivel=GR' WHERE `id` = 851;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-MUST&plan=201010&nivel=GR' WHERE `id` = 852;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-ARPD&plan=201010&nivel=GR' WHERE `id` = 861;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-PUBC&plan=201010&nivel=GR' WHERE `id` = 862;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-TEA&plan=200820&nivel=GR' WHERE `id` = 871;

-- Facultad de Ciencias de la Educación
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-BCIN&plan=201420&nivel=GR' WHERE `id` = 911;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EDFD&plan=201420&nivel=GR' WHERE `id` = 921;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EDUI&plan=201120&nivel=GR' WHERE `id` = 931;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EDBA&plan=201420&nivel=GR' WHERE `id` = 932;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EDFF&plan=201120&nivel=GR' WHERE `id` = 941;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMCS&plan=201420&nivel=GR' WHERE `id` = 942;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMFM&plan=201420&nivel=GR' WHERE `id` = 943;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EDOA&plan=201120&nivel=GR' WHERE `id` = 951;
UPDATE `carreras` SET `pensum` = 'https://app.uasd.edu.do/PensumGrado/?periodoV=999999&programa=P-EMGE&plan=201420&nivel=GR' WHERE `id` = 961;
