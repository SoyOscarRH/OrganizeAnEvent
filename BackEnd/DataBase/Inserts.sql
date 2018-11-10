/*EXPORT FROM MySQL:
cd C:\Program Files\MySQL\MySQL Server 5.7\bin
mysqldump -u root -p oae > C:\wamp64\www\OrganizeAnEvent\BackEnd\DataBase\CompleteData.sql*/

USE oae;

/* ===========================================================================
 * =================             INITIAL DATA          =======================
 * ===========================================================================
 */

/* ======================================================
* =================    EVENTS     =======================
* =======================================================
*/
insert into event values(1, 'DISTINCIONES AL MÉRITO POLITÉCNICO 2018', null, null, 'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.

EN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR 
');

/* ======================================================
* =================    INSTITUTES    ====================
* =======================================================
*/
insert into institute values(1, 'INSTITUTO POLITÉCNICO NACIONAL', 1);
insert into institute values(2, 'UNIVERSIDAD AUTÓNOMA DE MÉXICO', null);


/* ======================================================
* =================    PRIZES     =======================
* =======================================================
*/
insert into prize values (1, 'DIPLOMA A LA "EFICIENCIA Y EFICACIA"', 1, 'EL DIPLOMA A LA “EFICIENCIA Y EFICACIA” SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.
 
PARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.
 
CON LA ANUENCIA DE NUESTRAS AUTORIDADES, EN ESTE MOMENTO DAREMOS INICIO A LA ENTREGA DE DICHOS DIPLOMAS, PARA LO CUAL INVITAMOS A NUESTRO PRESIDIUM A PONERSE DE PIE PARA PROCEDER A LA ENTREGA CORRESPONDIENTE.', 221, 1);
insert into prize values(2, 'DIPLOMA DE MAESTRO EMÉRITO', 1, 'Que se otorga a los profesores e investigadores que habiéndose retirado o jubilado, se hubieran distinguido por su relevante labor docente o de investigación en el Instituto y que hayan prestado sus servicios en éste cuando menos durante veinticinco años.

CON LA ANUENCIA DE NUESTRAS AUTORIDADES EN ESTE MOMENTO RECIBE TAL DISTINCIÓN...
', 1, 1);
insert into prize values(3, 'DIPLOMA DE MAESTRO DECANO', 1, 'Para elegir al candidato de esta distinción, se deberá considerar además de la antigüedad del maestro, su trayectoria y aportaciones realizadas al Instituto, se otorgará al profesor que haya sido electo decano por el Consejo Técnico Consultivo Escolar. Reciben esta distinción:', 4, 1);
insert into prize values(4, 'DIPLOMA A LA INVESTIGACIÓN', 1, 'Este diploma se otorga a aquellos profesores que se hayan destacado en el campo de la investigación científica y tecnológica, o bien por la realización de una obra científica que por su contenido haya obtenido arbitraje nacional o internacional.
Reciben esta distinción:', 1, 1);
insert into prize values(5, 'DIPLOMA A LA CULTURA', 1, 'El diploma a la cultura es para aquellos miembros de la comunidad politécnica, que hayan apoyado o destaquen en eventos culturales de relevancia nacional o internacional, recibe esta distinción:
Reciben esta distinción:', 2, 1);
insert into prize values(6, 'DIPLOMA AL DEPORTE', 1, 'Se otorga a aquellos integrantes de la comunidad politécnica que hayan sobresalido en eventos deportivos nacionales o internacionales auspiciados por el Instituto Politécnico Nacional, o en representación del mismo o del País, recibe este galardón:', 1, 1);

/* ======================================================
* =================    SCHOOLS && AREAS     =============
* =======================================================
*/
insert into school values('O1A000','Centro de Estudios Científicos y Tecnológicos 1 "Gonzálo Vázquez Vela"', 'MEDIO SUPERIOR', 1);
insert into school values('O1B000','Centro de Estudios Científicos y Tecnológicos 2 "Miguel Bernard"', 'MEDIO SUPERIOR', 1);
insert into school values('O1C000','Centro de Estudios Científicos y Tecnológicos 3 "Estanislao Ramírez Ruíz"', 'MEDIO SUPERIOR', 1);
insert into school values('O1D000','Centro de Estudios Científicos y Tecnológicos 4 "Lázaro Cárdenas"', 'MEDIO SUPERIOR', 1);
insert into school values('O1M000','Centro de Estudios Científicos y Tecnológicos 5 "Benito Juárez"', 'MEDIO SUPERIOR', 1);
insert into school values('O1K000','Centro de Estudios Científicos y Tecnológicos 6 "Miguel Othón de Mendizabal"', 'MEDIO SUPERIOR', 1);
insert into school values('O1E000','Centro de Estudios Científicos y Tecnológicos 7 "Cuauhtémoc"', 'MEDIO SUPERIOR', 1);
insert into school values('O1F000','Centro de Estudios Científicos y Tecnológicos 8 "Narciso Bassols"', 'MEDIO SUPERIOR', 1);
insert into school values('O1G000','Centro de Estudios Científicos y Tecnológicos 9 "Juan de Dios Bátiz"', 'MEDIO SUPERIOR', 1);
insert into school values('O1H000','Centro de Estudios Científicos y Tecnológicos 10 "Carlos Vallejo Márquez"', 'MEDIO SUPERIOR', 1);
insert into school values('O1I000','Centro de Estudios Científicos y Tecnológicos 11 "Wilfrido Massieu"', 'MEDIO SUPERIOR', 1);
insert into school values('O1N000','Centro de Estudios Científicos y Tecnológicos 12 "José María Morelos"', 'MEDIO SUPERIOR', 1);
insert into school values('O1O000','Centro de Estudios Científicos y Tecnológicos 13 "Ricardo Flores Magón"', 'MEDIO SUPERIOR', 1);
insert into school values('O1P000','Centro de Estudios Científicos y Tecnológicos 14 "Luis Enrique Erro"', 'MEDIO SUPERIOR', 1);
insert into school values('O1L000','Centro de Estudios Científicos y Tecnológicos 15 "Diódoro Antúnez Echegaray"', 'MEDIO SUPERIOR', 1);
insert into school values('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 "Hidalgo"', 'MEDIO SUPERIOR', 1);
insert into school values('O1R000','Centro de Estudios Científicos y Tecnológicos 17 "León, Guanajuato"', 'MEDIO SUPERIOR', 1);
insert into school values('O1J000','Centro de Estudios Tecnológicos 1 "Walter Cross Buchanan"', 'MEDIO SUPERIOR', 1);
insert into school values('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco', 'SUPERIOR', 1);
insert into school values('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán', 'SUPERIOR', 1);
insert into school values('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco', 'SUPERIOR', 1);
insert into school values('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán', 'SUPERIOR', 1);
insert into school values('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco', 'SUPERIOR', 1);
insert into school values('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco', 'SUPERIOR', 1);
insert into school values('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán', 'SUPERIOR', 1);
insert into school values('O2H000','Escuela Superior de Ingeniería Textil', 'SUPERIOR', 1);
insert into school values('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas', 'SUPERIOR', 1);
insert into school values('O2J000','Escuela Superior de Física y Matemáticas', 'SUPERIOR', 1);
insert into school values('O2K000','Escuela Superior de Computación', 'SUPERIOR', 1);
insert into school values('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas', 'SUPERIOR', 1);
insert into school values('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas', 'SUPERIOR', 1);
insert into school values('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología', 'SUPERIOR', 1);
insert into school values('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato', 'SUPERIOR', 1);
insert into school values('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas', 'SUPERIOR', 1);
insert into school values('O2P000','Escuela Nacional de Ciencias Biológicas', 'SUPERIOR', 1);
insert into school values('O2Q000','Escuela Superior de Medicina', 'SUPERIOR', 1);
insert into school values('O2O000','Escuela Nacional de Medicina y Homeopatía', 'SUPERIOR', 1);
insert into school values('O2R000','Escuela Superior de Enfermería y Obstetricia', 'SUPERIOR', 1);
insert into school values('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás', 'SUPERIOR', 1);
insert into school values('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta', 'SUPERIOR', 1);
insert into school values('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás', 'SUPERIOR', 1);
insert into school values('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan', 'SUPERIOR', 1);
insert into school values('O2W000','Escuela Superior de Economía', 'SUPERIOR', 1);
insert into school values('O2X000','Escuela Superior de Turismo', 'SUPERIOR', 1);
insert into school values('P0A000','Centro Interdisciplinario de Ciencias Marinas', 'POSGRADO', 1);
insert into school values('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango', 'POSGRADO', 1);
insert into school values('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca', 'POSGRADO', 1);
insert into school values('P0L000','Centro de Investigación en Computación', 'POSGRADO', 1);
insert into school values('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales', 'POSGRADO', 1);
insert into school values('P0H000','Centro de Biotecnología Genómica', 'POSGRADO', 1);
insert into school values('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria', 'POSGRADO', 1);
insert into school values('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro', 'POSGRADO', 1);
insert into school values('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira', 'POSGRADO', 1);
insert into school values('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital', 'POSGRADO', 1);
insert into school values('P0Q000','Centro de Investigación e Innovación Tecnológica', 'POSGRADO', 1);
insert into school values('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo', 'POSGRADO', 1);
insert into school values('P0T000','Centro de Nanociencias y Micro y Nanotecnologías', 'POSGRADO', 1);
insert into school values('L10000','Dirección de Cómputo y Comunicaciones', 'ADMINISTRACIÓN', 1);
insert into school values('R5D000','Centro de Educación Contínua Unidad Culiacán', 'CENTRO', 1);
insert into school values('R5M000','Centro de Educación Contínua Unidad Durango', 'CENTRO', 1);
insert into school values('R5E000','Centro de Educación Contínua Unidad Los Mochis', 'CENTRO', 1);
insert into school values('R5K000','Centro de Educación Contínua Unidad Tijuana', 'CENTRO', 1);
insert into school values('JA1000','Secretaría Particular de la Dirección General', 'AREA', 1);
insert into school values('JD0000','Coordinación de Asesores', 'AREA', 1);
insert into school values('J60000','Coordinación de Comunicación Social', 'AREA', 1);
insert into school values('JE0000','Defensoría de los Derechos Politécnicos', 'AREA', 1);
insert into school values('XXXXXX','Coordinación Politécnica para la Sustentabilidad', 'AREA', 1);
insert into school values('N00000','Secretaría General', 'AREA', 1);
insert into school values('O00000','Secretaría Académica', 'AREA', 1);
insert into school values('O10000','Dirección de Educación Media Superior', 'AREA', 1);
insert into school values('R40000','Dirección de Publicaciones', 'AREA', 1);
insert into school values('Q00000','Secretaría de Servicios Educativos', 'AREA', 1);
insert into school values('Q30000','Dirección de Bibliotecas', 'AREA', 1);
insert into school values('Q10000','Dirección de Administración Escolar', 'AREA', 1);
insert into school values('Q50000','Dirección de Desarrollo y Fomento Deportivo', 'AREA', 1);
insert into school values('Q40000','Dirección de Difusión y Fomento a la Cultura', 'AREA', 1);
insert into school values('S30000','Dirección de Evaluación', 'AREA', 1);
insert into school values('T40000','Dirección de Gestión del Capital Humano', 'AREA', 1);
insert into school values('T50000','Dirección de Recursos Financieros', 'AREA', 1);
insert into school values('T60000','Dirección de Recursos Materiales y Servicios', 'AREA', 1);
insert into school values('K00000','Oficina del Abogado General', 'AREA', 1);
insert into school values('K20000','Dirección de Normatividad, Consulta y Dictaminación ', 'AREA', 1);
insert into school values('K10000','Dirección de Asuntos Jurídicos', 'AREA', 1);
insert into school values('L00000','Coordinación General de Servicios Informáticos', 'AREA', 1);
insert into school values('O0A000','Coordinación General de Formación e Innovación Educativa', 'AREA', 1);
insert into school values('R0F000','Unidad Politécnica para el Desarrollo y la Competitividad Empresarial', 'AREA', 1);
insert into school values('T63000','Coordinación de Centros de Desarrollo Infantil', 'AREA', 1);
insert into school values('T63020','Centro de Desarrollo Infantil "Amalia Solórzano de Cárdenas"', 'CENTRO', 1);
insert into school values('T63040','Centro de Desarrollo Infantil "Clementina Batalla de Bassols"', 'CENTRO', 1);
insert into school values('T63010','Centro de Desarrollo Infantil "Laura Pérez de Bátiz"', 'CENTRO', 1);
insert into school values('T63050','Centro de Desarrollo Infantil "Margarita Salazar de Erro"', 'CENTRO', 1);

/* ======================================================
* =================    GUESTS     =======================
* =======================================================
*/
insert into guest values('HEMP610409', 1, 'Patricia', 'Hernández', 'Monsalvo', null, null, null, null,'O1A000');
insert into guest values('GARV801005', 2, 'Viridiana Karina', 'García', 'Romero', null, null, null, null,'O1A000');
insert into guest values('GUSV811105', 3, 'María Vianey', 'Gudiño', 'Sánchez', null, null, null, null,'O1A000');
insert into guest values('SADV700522', 4, 'Víctor Manuel', 'Salas', 'Domínguez', null, null, null, null,'O1B000');
insert into guest values('SAMJ740319', 5, 'Josefina', 'Sánchez', 'Monroy', null, null, null, null,'O1B000');
insert into guest values('EAGC770416', 6, 'Carolina', 'Estrada', 'García', null, null, null, null,'O1B000');
insert into guest values('CABM811007', 7, 'Mariana Elizabeth', 'Chávez', 'Benítez', null, null, null, null,'O1C000');
insert into guest values('JIMA610709', 8, 'Alejandra', 'Jiménez', 'Méndez', null, null, null, null,'O1C000');
insert into guest values('ROCL700110', 9, 'José Luis Tonatihu', 'Rojas', 'Castro', null, null, null, null,'O1C000');
insert into guest values('MASC731120', 10, 'Carolina', 'Mares', 'Sandoval', null, null, null, null,'O1D000');
insert into guest values('BOMJ600427', 11, 'Jesús Roberto', 'Bolivar', 'Meza', null, null, null, null,'O1D000');
insert into guest values('LOFT610501', 12, 'María Teresa', 'López', 'Flores', null, null, null, null,'O1D000');
insert into guest values('CACJ620311', 13, 'María Josefina', 'Campos', 'Cano', null, null, null, null,'O1M000');
insert into guest values('SIGG840712', 14, 'Gustavo Rodolfo', 'Shields', 'García', null, null, null, null,'O1M000');
insert into guest values('GUHE740114', 15, 'Erika', 'Gutiérrez', 'Hernández', null, null, null, null,'O1M000');
insert into guest values('GARJ640319', 16, 'Juan José', 'García', 'Rivera', null, null, null, null,'O1K000');
insert into guest values('SACC820315', 17, 'Catalina', 'Sánchez', 'Castillo', null, null, null, null,'O1K000');
insert into guest values('RUBM600910', 18, 'María Margarita', 'Ruíz', 'Badillo', null, null, null, null,'O1K000');
insert into guest values('PESL790811', 19, 'María de Lourdes', 'Peregrino', 'Sánchez', null, null, null, null,'O1E000');
insert into guest values('CICM700907', 20, 'María Mireya', 'Cristino', 'Castillo', null, null, null, null,'O1E000');
insert into guest values('NEEL730512', 21, 'Laura Alicia', 'Neyra', 'Estrada', null, null, null, null,'O1E000');
insert into guest values('OELE810505', 22, 'Edgar Josué', 'Ojeda', 'Layseca', null, null, null, null,'O1F000');
insert into guest values('BUAI920831', 23, 'Ismael', 'Bruno', 'Arellano', null, null, null, null,'O1F000');
insert into guest values('NAMJ870131', 24, 'Joaquín Alejandro', 'Nares', 'Miller', null, null, null, null,'O1F000');
insert into guest values('SUCA511123', 25, 'Armando', 'Suárez', 'Caudillo', null, null, null, null,'O1G000');
insert into guest values('MOMA530924', 26, 'Alfonso', 'Morales', 'Martínez', null, null, null, null,'O1G000');
insert into guest values('MORA640123', 27, 'Arturo', 'Moreno', 'Reyes', null, null, null, null,'O1G000');
insert into guest values('PAGC570307', 28, 'Clotilde', 'Prado', 'García', null, null, null, null,'O1H000');
insert into guest values('TOPE551216', 29, 'María Eugenia', 'Tome', 'Pérez', null, null, null, null,'O1H000');
insert into guest values('MAIU850513', 30, 'Uriel', 'Martínez', 'Islas', null, null, null, null,'O1I000');
insert into guest values('SAME770202', 31, 'María Esther', 'Sánchez', 'Marín', null, null, null, null,'O1I000');
insert into guest values('BEMG581122', 32, 'Gerardo', 'Bernal', 'Méndez', null, null, null, null,'O1I000');
insert into guest values('AISL760127', 33, 'Lizeth', 'Avilés', 'Sánchez', null, null, null, null,'O1N000');
insert into guest values('ROLP651211', 34, 'Pedro', 'Rodríguez', 'Luevano', null, null, null, null,'O1N000');
insert into guest values('GUDE820907', 35, 'Edgar René', 'Guzmán', 'Delgado', null, null, null, null,'O1N000');
insert into guest values('CAAG560830', 36, 'Guadencio', 'Camacho', 'Alvarado', null, null, null, null,'O1O000');
insert into guest values('OUFA850727', 37, 'Andrea Patricia', 'Olguín', 'Ferreira', null, null, null, null,'O1O000');
insert into guest values('RALT520821', 38, 'María Teresa', 'Ramírez', 'Landeros', null, null, null, null,'O1O000');
insert into guest values('AAMA580502', 39, 'José Antonio', 'Andrade', 'Morales', null, null, null, null,'O1P000');
insert into guest values('REIH830819', 40, 'Héctor Yair', 'Reyes', 'Izquierdo', null, null, null, null,'O1P000');
insert into guest values('AAAC670607', 41, 'Celia', 'Ayala', 'Arellano', null, null, null, null,'O1P000');
insert into guest values('AAMJ550319', 42, 'José Juan', 'Aljama', 'Moral', null, null, null, null,'O1L000');
insert into guest values('CAFJ811202', 43, 'Janet', 'Cadena', 'Flores', null, null, null, null,'O1L000');
insert into guest values('RORE650831', 44, 'Evangelina', 'Rojas', 'Rodríguez', null, null, null, null,'O1L000');
insert into guest values('SILL681102', 45, 'Luis Enrique', 'Sigler', 'Licona', null, null, null, null,'O1R000');
insert into guest values('BEHM730706', 46, 'Ma. Guadalupe del Carmen', 'Belmonte', 'Hernández', null, null, null, null,'O1R000');
insert into guest values('CUPS631212', 47, 'Sonia Elizabeth', 'Cruz', 'Pérez', null, null, null, null,'O1J000');
insert into guest values('ROAJ530902', 48, 'Juan', 'Romero', 'Amaya', null, null, null, null,'O1J000');
insert into guest values('RORR590111', 49, 'Rocío', 'Rodas', 'Ruíz', null, null, null, null,'O1J000');
insert into guest (number, firstName, middleName, lastName, rfc, seat, email, assistance, representative, school) values 
(50,	'Ma. Victoria', 'Rafael', 'Valdivia', 'RAVM650728', null, null, null, null, 'O2D000'),
(51, 'Ana Laura', 'Villalpando', 'Nava',	'VINA780922', null, null, null, null, 'O2D000'),
(52, 'Víctor Alejandro', 'Banderas', 'Mérida', 'BAMV840328', null, null, null, null, 'O2B000'),
(53, 'Magdalena', 'Reyes', 'García',	'REGM590502', null, null, null, null, 'O2B000'),
(54, 'Ivonne', 'Romo', 'Hernández',	'ROHI710319', null, null, null, null, 'O2A000'),
(55, 'Patricia', 'Cervantes', 'Pérez', 'CEPP650317', null, null, null, null, 'O2C000'),
(56, 'Ana María', 'Almanza', 'Zendejas',	'AAZA700603', null, null, null, null, 'O2C000'),
(57, 'Claudia', 'Ramírez', 'Brassetti',	'RABC690320', null, null, null, null, 'O2C000'),
(58, 'Adolfo', 'Gómez', 'Flores', 'GOFA671026', null, null, null, null, 'O2G000'),
(59, 'Rosario Angélica', 'Zavala', 'Candelaria',	'ZACR760228', null, null, null, null, 'O2G000'),
(60, 'Edith Yuliana', 'Amador', 'López',	'AALE860922', null, null, null, null, 'O2G000'),
(61, 'Adaluz', 'López', 'Ángeles', 'LOAA770303', null, null, null, null, 'O2E000'),
(62, 'Victor', 'Sandoval', 'Lobato',	'SALV610526', null, null, null, null, 'O2E000'),
(63, 'Cornelio', 'Romero', 'Cruz', 'ROCC730916', null, null, null, null, 'O2E000'),
(64, 'Jorge Alberto', 'Gutiérrez', 'Ramírez', 'GURJ720122', null, null, null, null, 'O2F000'),
(65, 'Ana Aurora', 'Montoya', 'Ramírez',	'MORA740726', null, null, null, null, 'O2F000'),
(66, 'Alfredo', 'Torres', 'García', 'TOGA770224', null, null, null, null, 'O2F000'),
(67, 'Carlos', 'Aguilar', 'López', 'AULC650915', null, null, null, null, 'O2H000'),
(68, 'Isidro', 'Castillo', 'Bautista', 'CABI750704', null, null, null, null, 'O2H000'),
(69, 'Juana Leydy Yadira', 'Duarte', 'Mena', 'DUMJ520111', null, null, null, null, 'O2H000'),
(70, 'Nayeli', 'Caballero', 'Cerpa',	'CACN810816', null, null, null, null, 'O2I000'),
(71, 'Joselito Abilio', 'de Jesús', 'Herrera', 'JEHJ620923', null, null, null, null, 'O2I000'),
(72, 'Luis Francisco', 'Rodríguez', 'Hernández',	'ROHL720825', null, null, null, null, 'O2J000'),
(73, 'María Patricia', 'Godínez', 'Pavón', 'GOPP651210', null, null, null, null, 'O2J000'),
(74, 'José Isaías', 'Enríquez', 'Vicente', 'EIVI600524', null, null, null, null, 'O2J000'),
(75, 'Alma Delia', 'Morán', 'Ruíz', 'MORA621123', null, null, null, null, 'O2K000'),
(76, 'Itzel Marisol', 'Hernández', 'Luis', 'HELI891227', null, null, null, null, 'O2K000'),
(77, 'Dalia', 'Martínez', 'Próspero', 'MAPD850325', null, null, null, null, 'O2K000'),
(78, 'Ana Laura', 'Hernández', 'Medina',	'HEMA760104', null, null, null, null, 'O2M000'),
(79, 'Héctor', 'Peña', 'Domínguez', 'PEDH721121', null, null, null, null, 'O2L000'),
(80, 'José Claudio', 'Chávez', 'Jiménez', 'CAJC500324', null, null, null, null, 'O2L000'),
(81, 'Pablo Ricardo', 'Martínez', 'Téllez', 'MATP810925', null, null, null, null, 'O2L000'),
(82, 'Francisco Javier', 'Torres', 'Argüelles', 'TOAF601224', null, null, null, null, 'O2N000'),
(83, 'Francisco Alejandro', 'Ríos', 'Coria',	'RICF720523', null, null, null, null, 'O2N000'),
(84, 'Isabel Angélica', 'Gayosso', 'de la Cruz',	'GACI730704', null, null, null, null, 'O2N000'),
(85 ,'Claudia del Carmen', 'Mendoza', 'Delgado',	'MEDC870705', null, null, null, null, 'O2Y000'),
(86	,'Jesús', 'Franco', 'Gómez',	'FAGJ781015', null, null, null, null, 'O2Y000'),
(87	,'María Monserrat', 'Neria', 'Reyes',	'NERM870525', null, null, null, null, 'O2Z000'),
(88	,'Francisco', 'Juanes', 'Loera',	'JULF841004', null, null, null, null, 'O2Z000'),
(89	,'Adolfo', 'Cabrera', 'López',	'CALA700920', null, null, null, null, 'O2P000'),
(90	,'Gloria', 'Tovar', 'Rojo',	'TORG630413', null, null, null, null, 'O2P000'),
(91	,'Corina', 'López', 'Rangel',	'LORC630708', null, null, null, null, 'O2P000'),
(92	,'Eduardo', 'Torres', 'Buenrostro',	'TOBE620920', null, null, null, null, 'O2Q000'),
(93	,'Cesar Miguel', 'Mejía', 'Barradas',	'MEBC660713', null, null, null, null, 'O2Q000'),
(94	,'María Beatriz', 'Sánchez', 'Estrada',	'SAEB601008', null, null, null, null, 'O2Q000'),
(95	,'Felipe', 'González', 'Pérez',	'GOPF630603', null, null, null, null, 'O2O000'),
(96	,'Edgar', 'Hurtado', 'Ávila',	'HUAE800531', null, null, null, null, 'O2O000'),
(97	,'Luz María', 'Sánchez', 'Martínez',	'SAML711230', null, null, null, null, 'O2O000'),
(98	,'Daniel', 'Álvarez', 'Fuentes',	'AAFD851118', null, null, null, null, 'O2R000'),
(99	,'Marcelino', 'Guzmán', 'Gallardo',	'GUGM570426', null, null, null, null, 'O2R000'),
(100,'Epifanio Donato', 'Barbabosa', 'Beltrán',	'BABE570407', null, null, null, null, 'O2R000'),
(101,'Ramón', 'Herrera', 'Segovia',	'HESR530831', null, null, null, null, 'O2T000'),
(102,'Ana Montserrat', 'Romero', 'Paredes',	'ROPA880429', null, null, null, null, 'O2T000'),
(103,'Hilda', 'Banda', 'Hernández',	'BAHH520810', null, null, null, null, 'O2T000'),
(104,'Gustavo', 'Galicia', 'Xolalpa',	'GAXG691204', null, null, null, null, 'O2S000'),
(105,'Annel', 'Galicia', 'San Miguel',	'GASA810421', null, null, null, null, 'O2S000'),
(106,'Karina Vianey', 'Vergara', 'Camacho',	'VECK781228', null, null, null, null, 'O2S000'),
(107,'María del Rosario', 'Nájera', 'Ramírez',	'NARR700417', null, null, null, null, 'O2U000'),
(108,'Mario Iván', 'González', 'Abad',	'GOAM910530', null, null, null, null, 'O2U000'),
(109,'Francisco Javier', 'Sánchez', 'Romero',	'SARF761129', null, null, null, null, 'O2U000'),
(110,'Norma Alicia', 'Caltenco', 'Arceo',	'CAAN800412', null, null, null, null, 'O2V000'),
(111,'Yolanda', 'Gutiérrez', 'Cárdenas',	'GUCY710615', null, null, null, null, 'O2V000'),
(112,'José Juan', 'Cruz', 'Durán', 'CUDJ700330', null, null, null, null, 'O2V000'),
(113,'María Francisca', 'Flores', 'Bárcenas', 'FOBF680603', null, null, null, null, 'O2W000'),
(114,'María Alma', 'Benitez', 'Juárez',	'BEJA641207', null, null, null, null, 'O2W000'),
(115,'Martha', 'Hernández', 'Iturriaga', 'HEIM680226', null, null, null, null, 'O2W000'),
(116,'Norma Angélica', 'Pérez', 'Moctezuma', 'PEMN701116', null, null, null, null, 'O2X000'),
(117,'Jaime Ernesto', 'García', 'Jiménez',	'GAJJ611026', null, null, null, null, 'O2X000'),
(118,'Javier', 'Galván', 'Chávez',	'GACJ590822', null, null, null, null, 'O2X000'),
(119,'César Servando', 'Casas', 'Núñez',	'CANC800416', null, null, null, null, 'P0A000'),
(120,'Nereyda', 'Guadalupe', 'Ibarra',	'IANE820517', null, null, null, null, 'P0A000'),
(121,'Ubaldo', 'Hernández', 'Gutiérrez',	'HEGU731014', null, null, null, null, 'P0A000'),
(122,'María de Lourdes', 'García', 'López',	'GALL661221', null, null, null, null, 'P0C000'),
(123,'Flor Isela', 'Retana', 'Rentería', 'RERF841114', null, null, null, null, 'P0C000'),
(124,'Jorge', 'Noriega', 'Villa', 'NOVJ720424', null, null, null, null, 'P0C000'),
(125,'Álvaro', 'Martínez', 'Reyes',	'MARA810111', null, null, null, null, 'P0F000'),
(126,'Raquel', 'Ramón', 'Sosa', 'RASR710510', null, null, null, null, 'P0F000'),
(127,'Roberto Antonio', 'Guzmán', 'León', 'GULR860123', null, null, null, null, 'P0F000'),
(128,'Jorge Ivan', 'Carrillo', 'Tellez', 'CATJ800217', null, null, null, null, 'P0L000'),
(129,'Elda', 'Baranda', 'Esquivel',	'BAEE770115', null, null, null, null, 'P0L000'),
(130,'Irene', 'Plata', 'Monroy', 'PAMI691010', null, null, null, null, 'P0N000'),
(131,'Luis', 'Rizo', 'Ruíz', 'RIRL780924', null, null, null, null, 'P0N000'),
(132,'Pablo', 'Cabrera', 'Alvarado', 'CAAP690310', null, null, null, null, 'P0H000'),
(133,'Esthela', 'Moreno', 'Chapa',	'MOCE800511', null, null, null, null, 'P0H000'),
(134,'María del Carmen', 'Quiroz', 'Herrera', 'QUHC650913', null, null, null, null, 'P0H000'),
(135,'Artemio', 'González', 'Zamudio',	'GOZA600901', null, null, null, null, 'P0I000'),
(136,'Arturo', 'Méndez', 'Romero',	'MERA550906', null, null, null, null, 'P0I000'),
(137,'Gabino', 'Martínez', 'Pérez',	'MAPG741025', null, null, null, null, 'P0I000'),
(138,'María de Lourdes', 'Galicia', 'Galicia',	'GAGL620822', null, null, null, null, 'P0K000'),
(139,'María de Lourdes', 'Correa', 'Saldaña',	'COSL680114', null, null, null, null, 'P0K000'),
(140,'Elías', 'Gutiérrez', 'Páramo',	'GUPE640521', null, null, null, null, 'P0K000'),
(141,'Aida', 'Cruz', 'Vega', 'CUVA600612', null, null, null, null, 'P0J000'),
(142,'José', 'López', 'Ríos', 'LORJ690319', null, null, null, null, 'P0M000'),
(143,'María Martha', 'García', 'Coronado',	'GACM710712', null, null, null, null, 'P0M000'),
(144,'Verónica', 'Medina', 'Corral', 'MECV841214', null, null, null, null, 'P0M000'),
(145,'Dulce María', 'Juárez', 'Banda',	'JUBD720623', null, null, null, null, 'P0Q000'),
(146,'José Federico', 'Sánchez', 'Sosa', 'SASF660302', null, null, null, null, 'P0Q000'),
(147,'Teresita', 'Cardona', 'Juárez', 'CAJT580925', null, null, null, null, 'P0Q000'),
(148,'Juan Manuel', 'Guzmán', 'Salas',	'GUSJ751114', null, null, null, null, 'P0P000'),
(149,'Joel', 'Toledo', 'Molano', 'TOMJ650420', null, null, null, null, 'P0P000'),
(150,'Edith Berenitze', 'Calvillo', 'Ramirez',	'CARE870706', null, null, null, null, 'P0T000'),
(151,'Jazmín', 'Guerra', 'Alcántara', 'GUAJ850112', null, null, null, null, 'L10000'),
(152,'Luis Paul', 'Gutiérrez', 'Hernández',	'GUHL810712', null, null, null, null, 'L10000'),
(153,'María Magdalena', 'Martínez', 'Carrillo',	'MACM640411', null, null, null, null, 'L10000');
insert into guest (number, firstName, middleName, lastName, rfc, seat, email, assistance, representative, school) values 
(154,'Sofía', 'Macías', ' ', 'MASO581005', null, null, null, null, 'R5D000'),
(155,'Georgina Irasema', 'Estrada', 'Rivera',	'EARG821010', null, null, null, null, 'R5D000'),
(156,'María del Rosario', 'Rivera', 'Samaniego',	'RISR610808', null, null, null, null, 'R5D000'),
(157,'Viridiana', 'del Toro', 'López',	'TOLV710602', null, null, null, null, 'R5M000'),
(158,'Ramón Octavio', 'Ruíz', 'Carlón',	'RUCR841028', null, null, null, null, 'R5E000'),
(159,'José Andrés', 'Álvarez', 'Ibarra',	'AAIA810312', null, null, null, null, 'R5E000'),
(160,'Arianna Arozibel', 'Pineda', 'Carrasco',	'PICA790917', null, null, null, null, 'R5E000'),
(161,'Esperanza', 'Aviña', 'García',	'AIGE760708', null, null, null, null, 'R5K000'),
(162,'Karol Angélica', 'Marín', 'Nova',	'MANK750818', null, null, null, null, 'R5K000');
insert into guest (number, firstName, middleName, lastName, rfc, seat, email, assistance, representative, school) values 
(163,	'María Guadalupe', 'Parga', 'López',	'PALG831114', null, null, null, null, 'JA1000'),
(164,	'Diana Laura', 'Ramírez', 'Álvarez',	'RAAD681019', null, null, null, null, 'JD0000'),
(165,	'José Ramón', 'Rodríguez', 'Ojeda',	'ROOR690527', null, null, null, null, 'JD0000'),
(166,	'Ángela', 'Félix', 'Reyes',	'FERA561101', null, null, null, null, 'J60000'),
(167,	'Patricia', 'Hernández', 'Balderas',	'HEBP580102', null, null, null, null, 'J60000'),
(168,	'Ma. Guadalupe', 'Trejo', 'Martínez',	'TEMG631204', null, null, null, null, 'JE0000'),
(169,	'Erick', 'Gordillo', 'Escobar', 	'GOEE930613', null, null, null, null, 'JE0000'),
(170,	'Sergio Yair', 'Xicotencatl', 'Llera',	'XILS910302', null, null, null, null, 'JE0000'),
(171,	'María Cristina', 'Colín', 'Villanueva',	'COVC500403', null, null, null, null, 'XXXXXX'),
(172,	'Alberto Jorge', 'González', 'Díaz',	'GODA750831', null, null, null, null, 'XXXXXX'),
(173,	'Fanny', 'Sauza', 'Hernández',	'SAHF780227', null, null, null, null, 'XXXXXX'),
(174,	'Ma. Julia', 'Morales', 'Álvarez',	'MOAJ631206', null, null, null, null, 'N00000'),
(175,	'Ma. Isabel', 'Juárez', 'Lara',	'JULM671105', null, null, null, null, 'N00000'),
(176,	'Juan Jesús', 'Sánchez', 'Marín',	'SAMJ870323', null, null, null, null, 'O00000'),
(177,	'Elizabeth', 'Solis', 'Ocampo',	'SOOE761215', null, null, null, null, 'O00000'),
(178,	'Araceli', 'Vázquez', 'Betancourt',	'VABA721101', null, null, null, null, 'O10000'),
(179,	'María Elena', 'Álvarez', 'Rodríguez',	'AARE791201', null, null, null, null, 'O10000'),
(180,	'César', 'Basurto', 'Acevedo',	'BAAC641022', null, null, null, null, 'R40000'),
(181,	'Norma Angélica', 'Godínez', 'Vallejo',	'GOVN621207', null, null, null, null, 'Q00000'),
(182,	'Alejandro', 'Rojas', 'Guzmán',	'ROGA801023', null, null, null, null, 'Q30000'),
(183,	'Víctor Alberto', 'Martínez', 'Bautista',	'MABV750223', null, null, null, null, 'Q30000'),
(184,	'Pablo', 'Monjarás', 'López',	'MOLP601009', null, null, null, null, 'Q10000'),
(185,	'Alfredo', 'Ramirez', 'Arechar',	'RAAA740815', null, null, null, null, 'Q10000'),
(186,	'Antonio', 'Castillo', 'Rivas',	'CARA550419', null, null, null, null, 'Q50000'),
(187,	'Pablo', 'Poo', 'Mendieta',	'POMP800723', null, null, null, null, 'Q40000'),
(188,	'Gloria Araceli', 'Cedillo', 'González',	'CEGG770409', null, null, null, null, 'Q40000'),
(189,	'María Eugenia', 'Contreras', 'Gallardo',	'COGX700718', null, null, null, null, 'Q40000'),
(190,	'Luis', 'Ceballos', 'Barragán',	'CEBL641209', null, null, null, null, 'S30000'),
(191,	'Víctor Manuel', 'Islas', 'Olivos',	'IAOV730304', null, null, null, null, 'S30000'),
(192,	'Víctor Manuel', 'Delgado', 'Arellano',	'DEAV540628', null, null, null, null, 'S30000'),
(193,	'Enedelia', 'Ibarra', 'Pineda',	'IAPE721117', null, null, null, null, 'T40000'),
(194,	'SiIvia Rosa', 'Lopeandia', 'Urbina',	'LOUS630530', null, null, null, null, 'T40000'),
(195,	'Javier', 'Tadeo', 'Márquez', 	'TAMJ711204', null, null, null, null, 'T40000'),
(196,	'Carolina', 'Oropeza', 'Ramírez',	'OORC880806', null, null, null, null, 'T50000'),
(197,	'Armando', 'Reséndiz', 'Hernández',	'REHA740406', null, null, null, null, 'T50000'),
(198,	'Silvino', 'Guerrero', 'Peña',	'GUPS640707', null, null, null, null, 'T50000'),
(199,	'José Isaac', 'García', 'Carmona',	'GACI590603', null, null, null, null, 'T60000'),
(200,	'María Teresa', 'García', 'Vázquez',	'GAVT670924', null, null, null, null, 'T60000'),
(201,	'Fabiola', 'García', 'Durán',	'GADF790414', null, null, null, null, 'T60000'),
(202,	'Rubén', 'Fonseca', 'Gutiérrez',	'FOGR691218', null, null, null, null, 'K00000'),
(203,	'Víctor Manuel', 'Aguilar', 'Tlapale',	'AUTV660101', null, null, null, null, 'K20000'),
(204,	'Ana María', 'Baeza', 'Gómez',	'BAGA541105', null, null, null, null, 'K10000'),
(205,	'Rosario', 'Márquez', 'Ramírez',	'MARR730921', null, null, null, null, 'L00000'),
(206,	'Alfredo Erasto', 'Ortiz', 'Rodríguez',	'OIRA730527', null, null, null, null, 'O0A000'),
(207,	'Dalia', 'Rosas', 'Olivos', 'ROOD790509', null, null, null, null, 'O0A000'),
(208,	'Alejandra Danae', 'Martínez', 'López',	'MALA861025', null, null, null, null, 'O0A000'),
(209,	'Héctor Gilberto Gabriel', 'Valencia', 'Trujillo',	'VATH760227', null, null, null, null, 'R0F000'),
(210,	'Vianey', 'Guerra', 'Alcantara',	'GUAV770529', null, null, null, null, 'R0F000'),
(211,	'Ernesto Saúl', 'Galván', 'González',	'GAGE930619', null, null, null, null, 'T63000'),
(212,	'Francisco', 'Pulido', 'Morales',	'PUMF820301', null, null, null, null, 'T63000'),
(213,	'Martha', 'Escalante', 'Morales',	'EAMM710909', null, null, null, null, 'T63020'),
(214,	'María del Pilar', 'Roa', 'Hernández',	'ROHP740712', null, null, null, null, 'T63020'),
(215,	'Esmirna Concepción', 'López', 'Gallegos',	'LOGE810825', null, null, null, null, 'T63040'),
(216,	'Lizeth Araceli', 'Toledo', 'Escalante',	'TOEL840404', null, null, null, null, 'T63040'),
(217,	'Miriam Selene', 'Somera', 'Martinez',	'SOMM790430', null, null, null, null, 'T63040'),
(218,	'Alicia', 'Hernández', 'Ramírez',	'HERA631206', null, null, null, null, 'T63010'),
(219,	'Narda Araceli', 'Quintana', 'Diosdado',	'QUDN750305', null, null, null, null, 'T63050'),
(220,	'Olga Alicia', 'Sánchez', 'López',	'SALO680206', null, null, null, null, 'T63050'),
(221,	'Catalina', 'Ramos', 'Ramos',	'RARC621127', null, null, null, null, 'T63050');
insert into guest (number, firstName, middleName, lastName, rfc, seat, email, assistance, representative, school) values 
(222,	'José Guadalupe', 'Torres y', 'Ortega',	'TOOG450118',null, null, null, null, 'O2A000'),
(223,	'Rafael', 'Castañeda', 'Díaz',	'CADR791106',null, null, null, null, 'O2Z000'),
(224,	'José Roberto de Jesús', 'Bastarrachea', 'Sabido',	'BASR381220',null, null, null, null, 'O2Q000'),
(225,	'Luis Arturo', 'González', 'Hernández',	'GOHL460918',null, null, null, null, 'P0M000'),
(226,	'David', 'Jaramillo', 'Vigueras',	'JAVD540613',null, null, null, null, 'P0Q000'),
(227,	'Sonia Mayra', 'Pérez', 'Tapia',	'PETS750209',null, null, null, null, 'O2P000'),
(228,	'Papik Alfredo', 'Ramírez', 'Bernal',	'RABP720605',null, null, null, null, 'R5D000'),
(229,	'Ricardo', 'Medel', 'Esquivel',	'MEER810505',null, null, null, null, 'P0I000'),
(230,	'Dante Mir', 'Schmitter', 'Sánchez',	'SISD970602',null, null, null, null, 'O2P000');

/* ======================================================
* =================    GUEST'S PRIZE     ================
* =======================================================
*/
insert into guest_prize values('TOOG450118', 2);
insert into guest_prize values('CADR791106', 3);
insert into guest_prize values('BASR381220', 3);
insert into guest_prize values('GOHL460918', 3);
insert into guest_prize values('JAVD540613', 3);
insert into guest_prize values('PETS750209', 4);
insert into guest_prize values('RABP720605', 5);
insert into guest_prize values('MEER810505', 5);
insert into guest_prize values('SISD970602', 6);
insert into guest_prize values
('AAAC670607', 1),('AAFD851118', 1),('AAIA810312', 1),('AALE860922', 1),
('AAMA580502', 1),('AAMJ550319', 1),('AARE791201', 1),('AAZA700603', 1),
('AIGE760708', 1),('AISL760127', 1),('AULC650915', 1),('AUTV660101', 1),
('BAAC641022', 1),('BABE570407', 1),('BAEE770115', 1),('BAGA541105', 1),
('BAHH520810', 1),('BAMV840328', 1),('BEHM730706', 1),('BEJA641207', 1),
('BEMG581122', 1),
('BOMJ600427', 1),
('BUAI920831', 1),
('CAAG560830', 1),
('CAAN800412', 1),
('CAAP690310', 1),
('CABI750704', 1),
('CABM811007', 1),
('CACJ620311', 1),
('CACN810816', 1),
('CAFJ811202', 1),
('CAJC500324', 1),
('CAJT580925', 1),
('CALA700920', 1),
('CANC800416', 1),
('CARA550419', 1),
('CARE870706', 1),
('CATJ800217', 1),
('CEBL641209', 1),
('CEGG770409', 1),
('CEPP650317', 1),
('CICM700907', 1),
('COGX700718', 1),
('COSL680114', 1),
('COVC500403', 1),
('CUDJ700330', 1),
('CUPS631212', 1),
('CUVA600612', 1),
('DEAV540628', 1),
('DUMJ520111', 1),
('EAGC770416', 1),
('EAMM710909', 1),
('EARG821010', 1),
('EIVI600524', 1),
('FAGJ781015', 1),
('FERA561101', 1),
('FOBF680603', 1),
('FOGR691218', 1),
('GACI590603', 1),
('GACI730704', 1),
('GACJ590822', 1),
('GACM710712', 1),
('GADF790414', 1),
('GAGE930619', 1),
('GAGL620822', 1),
('GAJJ611026', 1),
('GALL661221', 1),
('GARJ640319', 1),
('GARV801005', 1),
('GASA810421', 1),
('GAVT670924', 1),
('GAXG691204', 1),
('GOAM910530', 1),
('GODA750831', 1),
('GOEE930613', 1),
('GOFA671026', 1),
('GOPF630603', 1),
('GOPP651210', 1),
('GOVN621207', 1),
('GOZA600901', 1),
('GUAJ850112', 1),
('GUAV770529', 1),
('GUCY710615', 1),
('GUDE820907', 1),
('GUGM570426', 1),
('GUHE740114', 1),
('GUHL810712', 1),
('GULR860123', 1),
('GUPE640521', 1),
('GUPS640707', 1),
('GURJ720122', 1),
('GUSJ751114', 1),
('GUSV811105', 1),
('HEBP580102', 1),
('HEGU731014', 1),
('HEIM680226', 1),
('HELI891227', 1),
('HEMA760104', 1),
('HEMP610409', 1),
('HERA631206', 1),
('HESR530831', 1),
('HUAE800531', 1),
('IANE820517', 1),
('IAOV730304', 1),
('IAPE721117', 1),
('JEHJ620923', 1),
('JIMA610709', 1),
('JUBD720623', 1),
('JULF841004', 1),
('JULM671105', 1),
('LOAA770303', 1),
('LOFT610501', 1),
('LOGE810825', 1),
('LORC630708', 1),
('LORJ690319', 1),
('LOUS630530', 1),
('MABV750223', 1),
('MACM640411', 1),
('MAIU850513', 1),
('MALA861025', 1),
('MANK750818', 1),
('MAPD850325', 1),
('MAPG741025', 1),
('MARA810111', 1),
('MARR730921', 1),
('MASC731120', 1),
('MASO581005', 1),
('MATP810925', 1),
('MEBC660713', 1),
('MECV841214', 1),
('MEDC870705', 1),
('MERA550906', 1),
('MOAJ631206', 1),
('MOCE800511', 1),
('MOLP601009', 1),
('MOMA530924', 1),
('MORA621123', 1),
('MORA640123', 1),
('MORA740726', 1),
('NAMJ870131', 1),
('NARR700417', 1),
('NEEL730512', 1),
('NERM870525', 1),
('NOVJ720424', 1),
('OELE810505', 1),
('OIRA730527', 1),
('OORC880806', 1),
('OUFA850727', 1),
('PAGC570307', 1),
('PALG831114', 1),
('PAMI691010', 1),
('PEDH721121', 1),
('PEMN701116', 1),
('PESL790811', 1),
('PICA790917', 1),
('POMP800723', 1),
('PUMF820301', 1),
('QUDN750305', 1),
('QUHC650913', 1),
('RAAA740815', 1),
('RAAD681019', 1),
('RABC690320', 1),
('RALT520821', 1),
('RARC621127', 1),
('RASR710510', 1),
('RAVM650728', 1),
('REGM590502', 1),
('REHA740406', 1),
('REIH830819', 1),
('RERF841114', 1),
('RICF720523', 1),
('RIRL780924', 1),
('RISR610808', 1),
('ROAJ530902', 1),
('ROCC730916', 1),
('ROCL700110', 1),
('ROGA801023', 1),
('ROHI710319', 1),
('ROHL720825', 1),
('ROHP740712', 1),
('ROLP651211', 1),
('ROOD790509', 1),
('ROOR690527', 1),
('ROPA880429', 1),
('RORE650831', 1),
('RORR590111', 1),
('RUBM600910', 1),
('RUCR841028', 1),
('SACC820315', 1),
('SADV700522', 1),
('SAEB601008', 1),
('SAHF780227', 1),
('SALO680206', 1),
('SALV610526', 1),
('SAME770202', 1),
('SAMJ740319', 1),
('SAMJ870323', 1),
('SAML711230', 1),
('SARF761129', 1),
('SASF660302', 1),
('SIGG840712', 1),
('SILL681102', 1),
('SOMM790430', 1),
('SOOE761215', 1),
('SUCA511123', 1),
('TAMJ711204', 1),
('TEMG631204', 1),
('TOAF601224', 1),
('TOBE620920', 1),
('TOEL840404', 1),
('TOGA770224', 1),
('TOLV710602', 1),
('TOMJ650420', 1),
('TOPE551216', 1),
('TORG630413', 1),
('VABA721101', 1),
('VATH760227', 1),
('VECK781228', 1),
('VINA780922', 1),
('XILS910302', 1),
('ZACR760228', 1);

UPDATE guest SET guest.assistance = 0;

