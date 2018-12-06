/*EXPORT FROM MySQL:
cd C:\Program Files\MySQL\MySQL Server 5.7\bin
mysqldump --routines=true -u root -p OrganizeAnEvent > C:\wamp64\www\OrganizeAnEvent\BackEnd\DataBase\CompleteData.sql*/

USE OrganizeAnEvent;

/* ===========================================================================
 * =================             INITIAL DATA          =======================
 * ===========================================================================
 */

/* ======================================================
* =================    INSTITUTION    ===================
* =======================================================
*/
INSERT INTO Institution (InstitutionID, Name) VALUES 
(1, 'INSTITUTO POLITÉCNICO NACIONAL'),
(2, 'UNIVERSIDAD AUTÓNOMA DE MÉXICO');

SHOW WARNINGS;


/* ======================================================
* =================    EVENT     ========================
* =======================================================
*/
INSERT INTO Event (EventID, Name, Description, InstitutionID) VALUES 
(1, 'DISTINCIONES AL MÉRITO POLITÉCNICO 2018', 'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.

EN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR', 1);

SHOW WARNINGS;

INSERT INTO Event (EventID, Name, Description, InstitutionID) VALUES 
(2, 'Premio Fundación UNAM-CFE de Energía 2017', 'Con el propósito de promover y reconocer la investigación científica y el desarrollo
tecnológico en las materias del sector energía, la Fundación Universidad Nacional
Autónoma de México A.C., “FUNAM”, y la Comisión Federal de Electricidad, “CFE”,', 2);

SHOW WARNINGS;

/* ======================================================
* =================    USERS     ========================
* =======================================================
*/
/*Password = 'root'*/
INSERT INTO User (Username, Password, Type) VALUES 
    (2014081268, '$2y$10$qbkKR8HshR8sTTNgHJs60uIQnU8YUYxPLcZ2KVWsFLTSk2tiFkV8y', 'Admin'),
    (1234567890, '$2y$10$qbkKR8HshR8sTTNgHJs60uIQnU8YUYxPLcZ2KVWsFLTSk2tiFkV8y', 'Standard');

SHOW WARNINGS;


/* ======================================================
* =================    USER EVENT    ====================
* =======================================================
*/
INSERT INTO UserEvent (Username, EventID) VALUES 
    (1234567890, 1), 
    (1234567890, 2), 
    (2014081268, 1);

SHOW WARNINGS;


/* ======================================================
* =================    PRIZE     ========================
* =======================================================
*/
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('DIPLOMA A LA "EFICIENCIA Y EFICACIA"', 1, 'EL DIPLOMA A LA “EFICIENCIA Y EFICACIA” SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.
 
PARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.
 
CON LA ANUENCIA DE NUESTRAS AUTORIDADES, EN ESTE MOMENTO DAREMOS INICIO A LA ENTREGA DE DICHOS DIPLOMAS, PARA LO CUAL INVITAMOS A NUESTRO PRESIDIUM A PONERSE DE PIE PARA PROCEDER A LA ENTREGA CORRESPONDIENTE.', 221, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('DIPLOMA DE MAESTRO EMÉRITO', 1, 'Que se otorga a los profesores e investigadores que habiéndose retirado o jubilado, se hubieran distinguido por su relevante labor docente o de investigación en el Instituto y que hayan prestado sus servicios en éste cuando menos durante veinticinco años.

CON LA ANUENCIA DE NUESTRAS AUTORIDADES EN ESTE MOMENTO RECIBE TAL DISTINCIÓN...
', 1, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('DIPLOMA DE MAESTRO DECANO', 1, 'Para elegir al candidato de esta distinción, se deberá considerar además de la antigüedad del maestro, su trayectoria y aportaciones realizadas al Instituto, se otorgará al profesor que haya sido electo decano por el Consejo Técnico Consultivo Escolar. Reciben esta distinción:', 4, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('DIPLOMA A LA INVESTIGACIÓN', 1, 'Este diploma se otorga a aquellos profesores que se hayan destacado en el campo de la investigación científica y tecnológica, o bien por la realización de una obra científica que por su contenido haya obtenido arbitraje nacional o internacional.
Reciben esta distinción:', 1, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('DIPLOMA A LA CULTURA', 1, 'El diploma a la cultura es para aquellos miembros de la comunidad politécnica, que hayan apoyado o destaquen en eventos culturales de relevancia nacional o internacional, recibe esta distinción:
Reciben esta distinción:', 2, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('DIPLOMA AL DEPORTE', 1, 'Se otorga a aquellos integrantes de la comunidad politécnica que hayan sobresalido en eventos deportivos nacionales o internacionales auspiciados por el Instituto Politécnico Nacional, o en representación del mismo o del País, recibe este galardón:', 1, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('PRESEA JUAN DE DIOS BÁTIZ', 2, 'JUAN DE DIOS BÁTIZ, DISTINGUIDO MEXICANO, NACIDO EN EL ESTADO DE SINALOA, DESARROLLÓ ACTIVIDADES DE CARÁCTER MILITAR, POLÍTICO Y EDUCATIVO, DENTRO DE LAS QUE SE DESTACA, LA DE HABER SIDO EL PRINCIPAL PROMOTOR Y UNO DE LOS FUNDADORES DEL INSTITUTO POLITÉCNICO NACIONAL.

LA PRESEA “JUAN DE DIOS BÁTIZ” ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL ACADÉMICO Y DE APOYO Y ASISTENCIA A LA EDUCACIÓN,  QUE HAYA CUMPLIDO TREINTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.
CON LA ANUENCIA DE NUESTRAS AUTORIDADES, PROCEDEREMOS A LA ENTREGA DE TAN DISTINGUIDO RECONOCIMIENTO, LA “PRESEA JUAN DE DIOS BÁTIZ”, QUE ESTE AÑO RECONOCE A:
', 275, 1);
INSERT INTO Prize (Name, Block, Speech, Amount, EventID) VALUES ('PRESEA CARLOS VALLEJO MÁRQUEZ', 3, 'EL MOMENTO CUMBRE DE ESTA CEREMONIA HA LLEGADO, 
 
LA PRESEA “CARLOS VALLEJO MÁRQUEZ” ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE HAYA CUMPLIDO CINCUENTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.
 
ESTE AÑO RECIBE ESTE GALARDON:', 39, 1);

SHOW WARNINGS;

/* ======================================================
* =================    PlACES, SCHOOL && AREA     =======
* =======================================================
*/
INSERT INTO Place VALUES ('O1A000','Centro de Estudios Científicos y Tecnológicos 1 "Gonzálo Vázquez Vela"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1B000','Centro de Estudios Científicos y Tecnológicos 2 "Miguel Bernard"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1C000','Centro de Estudios Científicos y Tecnológicos 3 "Estanislao Ramírez Ruíz"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1D000','Centro de Estudios Científicos y Tecnológicos 4 "Lázaro Cárdenas"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1M000','Centro de Estudios Científicos y Tecnológicos 5 "Benito Juárez"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1K000','Centro de Estudios Científicos y Tecnológicos 6 "Miguel Othón de Mendizabal"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1E000','Centro de Estudios Científicos y Tecnológicos 7 "Cuauhtémoc"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1F000','Centro de Estudios Científicos y Tecnológicos 8 "Narciso Bassols"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1G000','Centro de Estudios Científicos y Tecnológicos 9 "Juan de Dios Bátiz"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1H000','Centro de Estudios Científicos y Tecnológicos 10 "Carlos Vallejo Márquez"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1I000','Centro de Estudios Científicos y Tecnológicos 11 "Wilfrido Massieu"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1N000','Centro de Estudios Científicos y Tecnológicos 12 "José María Morelos"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1O000','Centro de Estudios Científicos y Tecnológicos 13 "Ricardo Flores Magón"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1P000','Centro de Estudios Científicos y Tecnológicos 14 "Luis Enrique Erro"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1L000','Centro de Estudios Científicos y Tecnológicos 15 "Diódoro Antúnez Echegaray"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 "Hidalgo"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1R000','Centro de Estudios Científicos y Tecnológicos 17 "León, Guanajuato"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O1J000','Centro de Estudios Tecnológicos 1 "Walter Cross Buchanan"', 'MEDIO SUPERIOR', 1);
INSERT INTO Place VALUES ('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2H000','Escuela Superior de Ingeniería Textil', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2J000','Escuela Superior de Física y Matemáticas', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2K000','Escuela Superior de Computación', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2P000','Escuela Nacional de Ciencias Biológicas', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2Q000','Escuela Superior de Medicina', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2O000','Escuela Nacional de Medicina y Homeopatía', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2R000','Escuela Superior de Enfermería y Obstetricia', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2W000','Escuela Superior de Economía', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('O2X000','Escuela Superior de Turismo', 'SUPERIOR', 1);
INSERT INTO Place VALUES ('P0A000','Centro Interdisciplinario de Ciencias Marinas', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0E000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Michoacán', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0L000','Centro de Investigación en Computación', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0H000','Centro de Biotecnología Genómica', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0Q000','Centro de Investigación e Innovación Tecnológica', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo', 'POSGRADO', 1);
INSERT INTO Place VALUES ('P0T000','Centro de Nanociencias y Micro y Nanotecnologías', 'POSGRADO', 1);
INSERT INTO Place VALUES ('L10000','Dirección de Cómputo y Comunicaciones', 'ADMINISTRACIÓN', 1);
INSERT INTO Place VALUES ('R5D000','Centro de Educación Contínua Unidad Culiacán', 'CENTRO', 1);
INSERT INTO Place VALUES ('R5M000','Centro de Educación Contínua Unidad Durango', 'CENTRO', 1);
INSERT INTO Place VALUES ('R5E000','Centro de Educación Contínua Unidad Los Mochis', 'CENTRO', 1);
INSERT INTO Place VALUES ('R5K000','Centro de Educación Contínua Unidad Tijuana', 'CENTRO', 1);
INSERT INTO Place VALUES ('JA1000','Secretaría Particular de la Dirección General', 'AREA', 1);
INSERT INTO Place VALUES ('JD0000','Coordinación de Asesores', 'AREA', 1);
INSERT INTO Place VALUES ('J60000','Coordinación de Comunicación Social', 'AREA', 1);
INSERT INTO Place VALUES ('JE0000','Defensoría de los Derechos Politécnicos', 'AREA', 1);
INSERT INTO Place VALUES ('XXXXXX','Coordinación Politécnica para la Sustentabilidad', 'AREA', 1);
INSERT INTO Place VALUES ('N00000','Secretaría General', 'AREA', 1);
INSERT INTO Place VALUES ('O00000','Secretaría Académica', 'AREA', 1);
INSERT INTO Place VALUES ('O10000','Dirección de Educación Media Superior', 'AREA', 1);
INSERT INTO Place VALUES ('R40000','Dirección de Publicaciones', 'AREA', 1);
INSERT INTO Place VALUES ('Q00000','Secretaría de Servicios Educativos', 'AREA', 1);
INSERT INTO Place VALUES ('Q30000','Dirección de Bibliotecas', 'AREA', 1);
INSERT INTO Place VALUES ('Q10000','Dirección de Administración Escolar', 'AREA', 1);
INSERT INTO Place VALUES ('Q50000','Dirección de Desarrollo y Fomento Deportivo', 'AREA', 1);
INSERT INTO Place VALUES ('Q40000','Dirección de Difusión y Fomento a la Cultura', 'AREA', 1);
INSERT INTO Place VALUES ('S30000','Dirección de Evaluación', 'AREA', 1);
INSERT INTO Place VALUES ('T40000','Dirección de Gestión del Capital Humano', 'AREA', 1);
INSERT INTO Place VALUES ('T50000','Dirección de Recursos Financieros', 'AREA', 1);
INSERT INTO Place VALUES ('T60000','Dirección de Recursos Materiales y Servicios', 'AREA', 1);
INSERT INTO Place VALUES ('K00000','Oficina del Abogado General', 'AREA', 1);
INSERT INTO Place VALUES ('K20000','Dirección de Normatividad, Consulta y Dictaminación ', 'AREA', 1);
INSERT INTO Place VALUES ('K10000','Dirección de Asuntos Jurídicos', 'AREA', 1);
INSERT INTO Place VALUES ('L00000','Coordinación General de Servicios Informáticos', 'AREA', 1);
INSERT INTO Place VALUES ('O0A000','Coordinación General de Formación e Innovación Educativa', 'AREA', 1);
INSERT INTO Place VALUES ('R0F000','Unidad Politécnica para el Desarrollo y la Competitividad Empresarial', 'AREA', 1);
INSERT INTO Place VALUES ('T63000','Coordinación de Centros de Desarrollo Infantil', 'AREA', 1);
INSERT INTO Place VALUES ('T63020','Centro de Desarrollo Infantil "Amalia Solórzano de Cárdenas"', 'CENTRO', 1);
INSERT INTO Place VALUES ('T63040','Centro de Desarrollo Infantil "Clementina Batalla de Bassols"', 'CENTRO', 1);
INSERT INTO Place VALUES ('T63010','Centro de Desarrollo Infantil "Laura Pérez de Bátiz"', 'CENTRO', 1);
INSERT INTO Place VALUES ('T63050','Centro de Desarrollo Infantil "Margarita Salazar de Erro"', 'CENTRO', 1);
INSERT INTO Place VALUES ('P0G000','Centro de Desarrollo de Productos Bióticos', 'CENTRO', 1);
INSERT INTO Place VALUES ('P0B000','Centro Interdisciplinario de Investigaciones y Estudios sobre Medio Ambiente y Desarrollo', 'CENTRO', 1);
INSERT INTO Place VALUES ('YYYYYY','Centro Educación Continua Ing. Eugenio Méndez Docurro', 'CENTRO', 1);
INSERT INTO Place VALUES ('J00000','Dirección General', 'AREA', 1);
INSERT INTO Place VALUES ('O20000','Dirección de Educación Superior', 'AREA', 1);
INSERT INTO Place VALUES ('Q20000','Dirección de Servicios Estudiantiles', 'AREA', 1);
INSERT INTO Place VALUES ('O0C000','Unidad Politécnica para la Educación Virtual', 'AREA', 1);
INSERT INTO Place VALUES ('S40000','Coordinación del Sistema Institucional de Información', 'AREA', 1);

SHOW WARNINGS;


/* ======================================================
* =================    GUESTS     =======================
* =======================================================
*/
INSERT INTO Guest VALUES ('HEMP610409','Patricia', 'Hernández', 'Monsalvo', null,'O1A000');
INSERT INTO Guest VALUES ('GARV801005','Viridiana Karina', 'García', 'Romero', null,'O1A000');
INSERT INTO Guest VALUES ('GUSV811105','María Vianey', 'Gudiño', 'Sánchez', null,'O1A000');
INSERT INTO Guest VALUES ('SADV700522','Víctor Manuel', 'Salas', 'Domínguez', null,'O1B000');
INSERT INTO Guest VALUES ('SAMJ740319','Josefina', 'Sánchez', 'Monroy', null,'O1B000');
INSERT INTO Guest VALUES ('EAGC770416','Carolina', 'Estrada', 'García', null,'O1B000');
INSERT INTO Guest VALUES ('CABM811007','Mariana Elizabeth', 'Chávez', 'Benítez', null,'O1C000');
INSERT INTO Guest VALUES ('JIMA610709','Alejandra', 'Jiménez', 'Méndez', null,'O1C000');
INSERT INTO Guest VALUES ('ROCL700110','José Luis Tonatihu', 'Rojas', 'Castro', null,'O1C000');
INSERT INTO Guest VALUES ('MASC731120', 'Carolina', 'Mares', 'Sandoval', null,'O1D000');
INSERT INTO Guest VALUES ('BOMJ600427', 'Jesús Roberto', 'Bolivar', 'Meza', null,'O1D000');
INSERT INTO Guest VALUES ('LOFT610501', 'María Teresa', 'López', 'Flores', null,'O1D000');
INSERT INTO Guest VALUES ('CACJ620311', 'María Josefina', 'Campos', 'Cano', null,'O1M000');
INSERT INTO Guest VALUES ('SIGG840712', 'Gustavo Rodolfo', 'Shields', 'García', null,'O1M000');
INSERT INTO Guest VALUES ('GUHE740114', 'Erika', 'Gutiérrez', 'Hernández', null,'O1M000');
INSERT INTO Guest VALUES ('GARJ640319', 'Juan José', 'García', 'Rivera', null,'O1K000');
INSERT INTO Guest VALUES ('SACC820315', 'Catalina', 'Sánchez', 'Castillo', null,'O1K000');
INSERT INTO Guest VALUES ('RUBM600910', 'María Margarita', 'Ruíz', 'Badillo', null,'O1K000');
INSERT INTO Guest VALUES ('PESL790811', 'María de Lourdes', 'Peregrino', 'Sánchez', null,'O1E000');
INSERT INTO Guest VALUES ('CICM700907', 'María Mireya', 'Cristino', 'Castillo', null,'O1E000');
INSERT INTO Guest VALUES ('NEEL730512', 'Laura Alicia', 'Neyra', 'Estrada', null,'O1E000');
INSERT INTO Guest VALUES ('OELE810505', 'Edgar Josué', 'Ojeda', 'Layseca', null,'O1F000');
INSERT INTO Guest VALUES ('BUAI920831', 'Ismael', 'Bruno', 'Arellano', null,'O1F000');
INSERT INTO Guest VALUES ('NAMJ870131', 'Joaquín Alejandro', 'Nares', 'Miller', null,'O1F000');
INSERT INTO Guest VALUES ('SUCA511123', 'Armando', 'Suárez', 'Caudillo', null,'O1G000');
INSERT INTO Guest VALUES ('MOMA530924', 'Alfonso', 'Morales', 'Martínez', null,'O1G000');
INSERT INTO Guest VALUES ('MORA640123', 'Arturo', 'Moreno', 'Reyes', null,'O1G000');
INSERT INTO Guest VALUES ('PAGC570307', 'Clotilde', 'Prado', 'García', null,'O1H000');
INSERT INTO Guest VALUES ('TOPE551216', 'María Eugenia', 'Tome', 'Pérez', null,'O1H000');
INSERT INTO Guest VALUES ('MAIU850513', 'Uriel', 'Martínez', 'Islas', null,'O1I000');
INSERT INTO Guest VALUES ('SAME770202', 'María Esther', 'Sánchez', 'Marín', null,'O1I000');
INSERT INTO Guest VALUES ('BEMG581122', 'Gerardo', 'Bernal', 'Méndez', null,'O1I000');
INSERT INTO Guest VALUES ('AISL760127', 'Lizeth', 'Avilés', 'Sánchez', null,'O1N000');
INSERT INTO Guest VALUES ('ROLP651211', 'Pedro', 'Rodríguez', 'Luevano', null,'O1N000');
INSERT INTO Guest VALUES ('GUDE820907', 'Edgar René', 'Guzmán', 'Delgado', null,'O1N000');
INSERT INTO Guest VALUES ('CAAG560830', 'Guadencio', 'Camacho', 'Alvarado', null,'O1O000');
INSERT INTO Guest VALUES ('OUFA850727', 'Andrea Patricia', 'Olguín', 'Ferreira', null,'O1O000');
INSERT INTO Guest VALUES ('RALT520821', 'María Teresa', 'Ramírez', 'Landeros', null,'O1O000');
INSERT INTO Guest VALUES ('AAMA580502', 'José Antonio', 'Andrade', 'Morales', null,'O1P000');
INSERT INTO Guest VALUES ('REIH830819', 'Héctor Yair', 'Reyes', 'Izquierdo', null,'O1P000');
INSERT INTO Guest VALUES ('AAAC670607', 'Celia', 'Ayala', 'Arellano', null,'O1P000');
INSERT INTO Guest VALUES ('AAMJ550319', 'José Juan', 'Aljama', 'Moral', null,'O1L000');
INSERT INTO Guest VALUES ('CAFJ811202', 'Janet', 'Cadena', 'Flores', null,'O1L000');
INSERT INTO Guest VALUES ('RORE650831', 'Evangelina', 'Rojas', 'Rodríguez', null,'O1L000');
INSERT INTO Guest VALUES ('SILL681102', 'Luis Enrique', 'Sigler', 'Licona', null,'O1R000');
INSERT INTO Guest VALUES ('BEHM730706', 'Ma. Guadalupe del Carmen', 'Belmonte', 'Hernández', null,'O1R000');
INSERT INTO Guest VALUES ('CUPS631212', 'Sonia Elizabeth', 'Cruz', 'Pérez', null,'O1J000');
INSERT INTO Guest VALUES ('ROAJ530902', 'Juan', 'Romero', 'Amaya', null,'O1J000');
INSERT INTO Guest VALUES ('RORR590111', 'Rocío', 'Rodas', 'Ruíz', null,'O1J000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, Email, PlaceID) VALUES 
('Ma. Victoria', 'Rafael', 'Valdivia', 'RAVM650728', null, 'O2D000'),
('Ana Laura', 'Villalpando', 'Nava',	'VINA780922', null, 'O2D000'),
('Víctor Alejandro', 'Banderas', 'Mérida', 'BAMV840328', null, 'O2B000'),
('Magdalena', 'Reyes', 'García',	'REGM590502', null, 'O2B000'),
('Ivonne', 'Romo', 'Hernández',	'ROHI710319', null, 'O2A000'),
('Patricia', 'Cervantes', 'Pérez', 'CEPP650317', null, 'O2C000'),
('Ana María', 'Almanza', 'Zendejas',	'AAZA700603', null, 'O2C000'),
('Claudia', 'Ramírez', 'Brassetti',	'RABC690320', null, 'O2C000'),
('Adolfo', 'Gómez', 'Flores', 'GOFA671026', null, 'O2G000'),
('Rosario Angélica', 'Zavala', 'Candelaria',	'ZACR760228', null, 'O2G000'),
('Edith Yuliana', 'Amador', 'López',	'AALE860922', null, 'O2G000'),
('Adaluz', 'López', 'Ángeles', 'LOAA770303', null, 'O2E000'),
('Victor', 'Sandoval', 'Lobato',	'SALV610526', null, 'O2E000'),
('Cornelio', 'Romero', 'Cruz', 'ROCC730916', null, 'O2E000'),
('Jorge Alberto', 'Gutiérrez', 'Ramírez', 'GURJ720122', null, 'O2F000'),
('Ana Aurora', 'Montoya', 'Ramírez',	'MORA740726', null, 'O2F000'),
('Alfredo', 'Torres', 'García', 'TOGA770224', null, 'O2F000'),
('Carlos', 'Aguilar', 'López', 'AULC650915', null, 'O2H000'),
('Isidro', 'Castillo', 'Bautista', 'CABI750704', null, 'O2H000'),
('Juana Leydy Yadira', 'Duarte', 'Mena', 'DUMJ520111', null, 'O2H000'),
('Nayeli', 'Caballero', 'Cerpa',	'CACN810816', null, 'O2I000'),
('Joselito Abilio', 'de Jesús', 'Herrera', 'JEHJ620923', null, 'O2I000'),
('Luis Francisco', 'Rodríguez', 'Hernández',	'ROHL720825', null, 'O2J000'),
('María Patricia', 'Godínez', 'Pavón', 'GOPP651210', null, 'O2J000'),
('José Isaías', 'Enríquez', 'Vicente', 'EIVI600524', null, 'O2J000'),
('Alma Delia', 'Morán', 'Ruíz', 'MORA621123', null, 'O2K000'),
('Itzel Marisol', 'Hernández', 'Luis', 'HELI891227', null, 'O2K000'),
('Dalia', 'Martínez', 'Próspero', 'MAPD850325', null, 'O2K000'),
('Ana Laura', 'Hernández', 'Medina',	'HEMA760104', null, 'O2M000'),
('Héctor', 'Peña', 'Domínguez', 'PEDH721121', null, 'O2L000'),
('José Claudio', 'Chávez', 'Jiménez', 'CAJC500324', null, 'O2L000'),
('Pablo Ricardo', 'Martínez', 'Téllez', 'MATP810925', null, 'O2L000'),
('Francisco Javier', 'Torres', 'Argüelles', 'TOAF601224', null, 'O2N000'),
('Francisco Alejandro', 'Ríos', 'Coria',	'RICF720523', null, 'O2N000'),
('Isabel Angélica', 'Gayosso', 'de la Cruz',	'GACI730704', null, 'O2N000'),
('Claudia del Carmen', 'Mendoza', 'Delgado',	'MEDC870705', null, 'O2Y000'),
('Jesús', 'Franco', 'Gómez',	'FAGJ781015', null, 'O2Y000'),
('María Monserrat', 'Neria', 'Reyes',	'NERM870525', null, 'O2Z000'),
('Francisco', 'Juanes', 'Loera',	'JULF841004', null, 'O2Z000'),
('Adolfo', 'Cabrera', 'López',	'CALA700920', null, 'O2P000'),
('Gloria', 'Tovar', 'Rojo',	'TORG630413', null, 'O2P000'),
('Corina', 'López', 'Rangel',	'LORC630708', null, 'O2P000'),
('Eduardo', 'Torres', 'Buenrostro',	'TOBE620920', null, 'O2Q000'),
('Cesar Miguel', 'Mejía', 'Barradas',	'MEBC660713', null, 'O2Q000'),
('María Beatriz', 'Sánchez', 'Estrada',	'SAEB601008', null, 'O2Q000'),
('Felipe', 'González', 'Pérez',	'GOPF630603', null, 'O2O000'),
('Edgar', 'Hurtado', 'Ávila',	'HUAE800531', null, 'O2O000'),
('Luz María', 'Sánchez', 'Martínez',	'SAML711230', null, 'O2O000'),
('Daniel', 'Álvarez', 'Fuentes',	'AAFD851118', null, 'O2R000'),
('Marcelino', 'Guzmán', 'Gallardo',	'GUGM570426', null, 'O2R000'),
('Epifanio Donato', 'Barbabosa', 'Beltrán',	'BABE570407', null, 'O2R000'),
('Ramón', 'Herrera', 'Segovia',	'HESR530831', null, 'O2T000'),
('Ana Montserrat', 'Romero', 'Paredes',	'ROPA880429', null, 'O2T000'),
('Hilda', 'Banda', 'Hernández',	'BAHH520810', null, 'O2T000'),
('Gustavo', 'Galicia', 'Xolalpa',	'GAXG691204', null, 'O2S000'),
('Annel', 'Galicia', 'San Miguel',	'GASA810421', null, 'O2S000'),
('Karina Vianey', 'Vergara', 'Camacho',	'VECK781228', null, 'O2S000'),
('María del Rosario', 'Nájera', 'Ramírez',	'NARR700417', null, 'O2U000'),
('Mario Iván', 'González', 'Abad',	'GOAM910530', null, 'O2U000'),
('Francisco Javier', 'Sánchez', 'Romero',	'SARF761129', null, 'O2U000'),
('Norma Alicia', 'Caltenco', 'Arceo',	'CAAN800412', null, 'O2V000'),
('Yolanda', 'Gutiérrez', 'Cárdenas',	'GUCY710615', null, 'O2V000'),
('José Juan', 'Cruz', 'Durán', 'CUDJ700330', null, 'O2V000'),
('María Francisca', 'Flores', 'Bárcenas', 'FOBF680603', null, 'O2W000'),
('María Alma', 'Benitez', 'Juárez',	'BEJA641207', null, 'O2W000'),
('Martha', 'Hernández', 'Iturriaga', 'HEIM680226', null, 'O2W000'),
('Norma Angélica', 'Pérez', 'Moctezuma', 'PEMN701116', null, 'O2X000'),
('Jaime Ernesto', 'García', 'Jiménez',	'GAJJ611026', null, 'O2X000'),
('Javier', 'Galván', 'Chávez',	'GACJ590822', null, 'O2X000'),
('César Servando', 'Casas', 'Núñez',	'CANC800416', null, 'P0A000'),
('Nereyda', 'Guadalupe', 'Ibarra',	'IANE820517', null, 'P0A000'),
('Ubaldo', 'Hernández', 'Gutiérrez',	'HEGU731014', null, 'P0A000'),
('María de Lourdes', 'García', 'López',	'GALL661221', null, 'P0C000'),
('Flor Isela', 'Retana', 'Rentería', 'RERF841114', null, 'P0C000'),
('Jorge', 'Noriega', 'Villa', 'NOVJ720424', null, 'P0C000'),
('Álvaro', 'Martínez', 'Reyes',	'MARA810111', null, 'P0F000'),
('Raquel', 'Ramón', 'Sosa', 'RASR710510', null, 'P0F000'),
('Roberto Antonio', 'Guzmán', 'León', 'GULR860123', null, 'P0F000'),
('Jorge Ivan', 'Carrillo', 'Tellez', 'CATJ800217', null, 'P0L000'),
('Elda', 'Baranda', 'Esquivel',	'BAEE770115', null, 'P0L000'),
('Irene', 'Plata', 'Monroy', 'PAMI691010', null, 'P0N000'),
('Luis', 'Rizo', 'Ruíz', 'RIRL780924', null, 'P0N000'),
('Pablo', 'Cabrera', 'Alvarado', 'CAAP690310', null, 'P0H000'),
('Esthela', 'Moreno', 'Chapa',	'MOCE800511', null, 'P0H000'),
('María del Carmen', 'Quiroz', 'Herrera', 'QUHC650913', null, 'P0H000'),
('Artemio', 'González', 'Zamudio',	'GOZA600901', null, 'P0I000'),
('Arturo', 'Méndez', 'Romero',	'MERA550906', null, 'P0I000'),
('Gabino', 'Martínez', 'Pérez',	'MAPG741025', null, 'P0I000'),
('María de Lourdes', 'Galicia', 'Galicia',	'GAGL620822', null, 'P0K000'),
('María de Lourdes', 'Correa', 'Saldaña',	'COSL680114', null, 'P0K000'),
('Elías', 'Gutiérrez', 'Páramo',	'GUPE640521', null, 'P0K000'),
('Aida', 'Cruz', 'Vega', 'CUVA600612', null, 'P0J000'),
('José', 'López', 'Ríos', 'LORJ690319', null, 'P0M000'),
('María Martha', 'García', 'Coronado',	'GACM710712', null, 'P0M000'),
('Verónica', 'Medina', 'Corral', 'MECV841214', null, 'P0M000'),
('Dulce María', 'Juárez', 'Banda',	'JUBD720623', null, 'P0Q000'),
('José Federico', 'Sánchez', 'Sosa', 'SASF660302', null, 'P0Q000'),
('Teresita', 'Cardona', 'Juárez', 'CAJT580925', null, 'P0Q000'),
('Juan Manuel', 'Guzmán', 'Salas',	'GUSJ751114', null, 'P0P000'),
('Joel', 'Toledo', 'Molano', 'TOMJ650420', null, 'P0P000'),
('Edith Berenitze', 'Calvillo', 'Ramirez',	'CARE870706', null, 'P0T000'),
('Jazmín', 'Guerra', 'Alcántara', 'GUAJ850112', null, 'L10000'),
('Luis Paul', 'Gutiérrez', 'Hernández',	'GUHL810712', null, 'L10000'),
('María Magdalena', 'Martínez', 'Carrillo',	'MACM640411', null, 'L10000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, Email, PlaceID) VALUES 
('Sofía', 'Macías', ' ', 'MASO581005', null, 'R5D000'),
('Georgina Irasema', 'Estrada', 'Rivera',	'EARG821010', null, 'R5D000'),
('María del Rosario', 'Rivera', 'Samaniego',	'RISR610808', null, 'R5D000'),
('Viridiana', 'del Toro', 'López',	'TOLV710602', null, 'R5M000'),
('Ramón Octavio', 'Ruíz', 'Carlón',	'RUCR841028', null, 'R5E000'),
('José Andrés', 'Álvarez', 'Ibarra',	'AAIA810312', null, 'R5E000'),
('Arianna Arozibel', 'Pineda', 'Carrasco',	'PICA790917', null, 'R5E000'),
('Esperanza', 'Aviña', 'García',	'AIGE760708', null, 'R5K000'),
('Karol Angélica', 'Marín', 'Nova',	'MANK750818', null, 'R5K000'),
('María Guadalupe', 'Parga', 'López',	'PALG831114', null, 'JA1000'),
('Diana Laura', 'Ramírez', 'Álvarez',	'RAAD681019', null, 'JD0000'),
('José Ramón', 'Rodríguez', 'Ojeda',	'ROOR690527', null, 'JD0000'),
('Ángela', 'Félix', 'Reyes',	'FERA561101', null, 'J60000'),
('Patricia', 'Hernández', 'Balderas',	'HEBP580102', null, 'J60000'),
('Ma. Guadalupe', 'Trejo', 'Martínez',	'TEMG631204', null, 'JE0000'),
('Erick', 'Gordillo', 'Escobar', 	'GOEE930613', null, 'JE0000'),
('Sergio Yair', 'Xicotencatl', 'Llera',	'XILS910302', null, 'JE0000'),
('María Cristina', 'Colín', 'Villanueva',	'COVC500403', null, 'XXXXXX'),
('Alberto Jorge', 'González', 'Díaz',	'GODA750831', null, 'XXXXXX'),
('Fanny', 'Sauza', 'Hernández',	'SAHF780227', null, 'XXXXXX'),
('Ma. Julia', 'Morales', 'Álvarez',	'MOAJ631206', null, 'N00000'),
('Ma. Isabel', 'Juárez', 'Lara',	'JULM671105', null, 'N00000'),
('Juan Jesús', 'Sánchez', 'Marín',	'SAMJ870323', null, 'O00000'),
('Elizabeth', 'Solis', 'Ocampo',	'SOOE761215', null, 'O00000'),
('Araceli', 'Vázquez', 'Betancourt',	'VABA721101', null, 'O10000'),
('María Elena', 'Álvarez', 'Rodríguez',	'AARE791201', null, 'O10000'),
('César', 'Basurto', 'Acevedo',	'BAAC641022', null, 'R40000'),
('Norma Angélica', 'Godínez', 'Vallejo',	'GOVN621207', null, 'Q00000'),
('Alejandro', 'Rojas', 'Guzmán',	'ROGA801023', null, 'Q30000'),
('Víctor Alberto', 'Martínez', 'Bautista',	'MABV750223', null, 'Q30000'),
('Pablo', 'Monjarás', 'López',	'MOLP601009', null, 'Q10000'),
('Alfredo', 'Ramirez', 'Arechar',	'RAAA740815', null, 'Q10000'),
('Antonio', 'Castillo', 'Rivas',	'CARA550419', null, 'Q50000'),
('Pablo', 'Poo', 'Mendieta',	'POMP800723', null, 'Q40000'),
('Gloria Araceli', 'Cedillo', 'González',	'CEGG770409', null, 'Q40000'),
('María Eugenia', 'Contreras', 'Gallardo',	'COGX700718', null, 'Q40000'),
('Luis', 'Ceballos', 'Barragán',	'CEBL641209', null, 'S30000'),
('Víctor Manuel', 'Islas', 'Olivos',	'IAOV730304', null, 'S30000'),
('Víctor Manuel', 'Delgado', 'Arellano',	'DEAV540628', null, 'S30000'),
('Enedelia', 'Ibarra', 'Pineda',	'IAPE721117', null, 'T40000'),
('SiIvia Rosa', 'Lopeandia', 'Urbina',	'LOUS630530', null, 'T40000'),
('Javier', 'Tadeo', 'Márquez', 	'TAMJ711204', null, 'T40000'),
('Carolina', 'Oropeza', 'Ramírez',	'OORC880806', null, 'T50000'),
('Armando', 'Reséndiz', 'Hernández',	'REHA740406', null, 'T50000'),
('Silvino', 'Guerrero', 'Peña',	'GUPS640707', null, 'T50000'),
('José Isaac', 'García', 'Carmona',	'GACI590603', null, 'T60000'),
('María Teresa', 'García', 'Vázquez',	'GAVT670924', null, 'T60000'),
('Fabiola', 'García', 'Durán',	'GADF790414', null, 'T60000'),
('Rubén', 'Fonseca', 'Gutiérrez',	'FOGR691218', null, 'K00000'),
('Víctor Manuel', 'Aguilar', 'Tlapale',	'AUTV660101', null, 'K20000'),
('Ana María', 'Baeza', 'Gómez',	'BAGA541105', null, 'K10000'),
('Rosario', 'Márquez', 'Ramírez',	'MARR730921', null, 'L00000'),
('Alfredo Erasto', 'Ortiz', 'Rodríguez',	'OIRA730527', null, 'O0A000'),
('Dalia', 'Rosas', 'Olivos', 'ROOD790509', null, 'O0A000'),
('Alejandra Danae', 'Martínez', 'López',	'MALA861025', null, 'O0A000'),
('Héctor Gilberto Gabriel', 'Valencia', 'Trujillo',	'VATH760227', null, 'R0F000'),
('Vianey', 'Guerra', 'Alcantara',	'GUAV770529', null, 'R0F000'),
('Ernesto Saúl', 'Galván', 'González',	'GAGE930619', null, 'T63000'),
('Francisco', 'Pulido', 'Morales',	'PUMF820301', null, 'T63000'),
('Martha', 'Escalante', 'Morales',	'EAMM710909', null, 'T63020'),
('María del Pilar', 'Roa', 'Hernández',	'ROHP740712', null, 'T63020'),
('Esmirna Concepción', 'López', 'Gallegos',	'LOGE810825', null, 'T63040'),
('Lizeth Araceli', 'Toledo', 'Escalante',	'TOEL840404', null, 'T63040'),
('Miriam Selene', 'Somera', 'Martinez',	'SOMM790430', null, 'T63040'),
('Alicia', 'Hernández', 'Ramírez',	'HERA631206', null, 'T63010'),
('Narda Araceli', 'Quintana', 'Diosdado',	'QUDN750305', null, 'T63050'),
('Olga Alicia', 'Sánchez', 'López',	'SALO680206', null, 'T63050'),
('Catalina', 'Ramos', 'Ramos',	'RARC621127', null, 'T63050'),
('José Guadalupe', 'Torres y', 'Ortega',	'TOOG450118', null, 'O2A000'),
('Rafael', 'Castañeda', 'Díaz',	'CADR791106', null, 'O2Z000'),
('José Roberto de Jesús', 'Bastarrachea', 'Sabido',	'BASR381220', null, 'O2Q000'),
('Luis Arturo', 'González', 'Hernández',	'GOHL460918', null, 'P0M000'),
('David', 'Jaramillo', 'Vigueras',	'JAVD540613', null, 'P0Q000'),
('Sonia Mayra', 'Pérez', 'Tapia',	'PETS750209', null, 'O2P000'),
('Papik Alfredo', 'Ramírez', 'Bernal',	'RABP720605', null, 'R5D000'),
('Ricardo', 'Medel', 'Esquivel',	'MEER810505', null, 'P0I000'),
('Dante Mir', 'Schmitter', 'Sánchez',	'SISD970602', null, 'O2P000');
INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Everardo Elías', 'Martinez', 'Flores',	'MAFE621217' ,'O1B000'),
('Pedro Roberto', 'Hernández', 'García',	'HEGP610330' ,'O1B000'),
('Carlos Fernando', 'Montes de Oca', 'Rasgado',	'MORC551103' ,'O1B000'),
('Enrique', 'Portillo', 'Arenas',	'POAE661230' ,'O1B000'),
('Alfredo', 'Rodríguez', 'Gómez',	'ROGA651102' ,'O1B000'),
('Jorge', 'Sánchez', 'Leal',	'SALJ650711' ,'O1C000'),
('Norma Ángelica', 'Sánchez', 'Barragán',	'SABN621118' ,'O1C000'),
('Juan Manuel', 'García', 'Barrios',	'GABJ630131' ,'O1C000'),
('Miguel Ángel', 'Rodríguez', 'Ruíz',	'RORM630319' ,'O1C000'),
('Olivia', 'Martínez', 'Abad',	'MAAO560123' ,'O1C000'),
('Laura Felicitas', 'Rodríguez', 'Ortega',	'ROOL570306' ,'O1C000'),
('Jorge', 'Barrón', '',	'BAJO591030' ,'O1C000'),
('Enrique', 'Salinas', 'Rodríguez',	'SARE620826' ,'O1C000'),
('Carmelo', 'Villanueva', 'Ruíz',	'VIRC600318' ,'O1C000'),
('Mario', 'Silva', 'Barrera',	'SIBM600702' ,'O1D000'),
('Carolina Margarita', 'Sánchez', 'Díaz',	'SADC571215' ,'O1D000'),
('Ma. Anastasia Mónica', 'Gordiano', 'Cervantes',	'GOCA520427' ,'O1D000'),
('María Ines', 'Centeno', 'Quintanar',	'CEQI610121' ,'O1D000'),
('Jorge', 'Jiménez', 'Cervantes',	'JICJ500418' ,'O1D000'),
('Rubén', 'Rosas', 'Casados',	'ROCR620603' ,'O1M000'),
('Vicente Hugo', 'González', 'Majul',	'GOMV580325' ,'O1M000'),
('Lucas', 'Encinas', 'García ',	'EIGL470116' ,'O1K000'),
('Engracia Mireya', 'García', 'Hernández',	'GAHE570925' ,'O1K000'),
('Magdalena', 'Licona', 'Flores',	'LIFM570506' ,'O1K000'),
('Aida Areli', 'Castro', 'Aguirre',	'CAAA660515' ,'O1K000'),
('Fernando', 'Ramírez', 'Saavedra',	'RASF610711' ,'O1E000'),
('María', 'de la Luz', 'Santillán',	'SALU600601' ,'O1E000'),
('José Luis', 'Tagle', 'Vargas',	'TAVL610516' ,'O1E000'),
('Filiberto', 'García', 'Hernández',	'GAHF630822' ,'O1F000'),
('José Francisco', 'Huerta', 'Gutiérrez',	'HUGF680607' ,'O1F000'),
('Ángel Francisco', 'Paz', 'Orzuna',	'PAOA571102' ,'O1F000'),
('Felipe', 'Rivera', 'Hernández',	'RIHF580501' ,'O1F000'),
('Juan', 'Álvarez', 'Mendoza',	'AAMJ470215' ,'O1F000'),
('Ubaldo', 'Olguín', 'García',	'OUGU580124' ,'O1G000'),
('Bersain', 'Vázquez', 'Rincón',	'VARB570219' ,'O1G000'),
('Guillermo', 'Carrasco', 'García',	'CAGG640505' ,'O1G000'),
('Alfonso Javier', 'Álvarez', 'Sierra',	'AASA570727' ,'O1H000'),
('Juana', 'Hernández', 'Gutiérrez',	'HEGJ590310' ,'O1H000'),
('Rocío', 'Bizarro', 'Moreno',	'BIMR670106' ,'O1H000'),
('María Guadalupe', 'Alonso', 'Ríos',	'AORG480916' ,'O1I000'),
('Alberto', 'Trejo', 'Moreno',	'TEMA670502' ,'O1I000'),
('Germán Adalberto', 'Sandoval', 'Gonzalez',	'SAGG641221' ,'O1I000'),
('Gloria', 'Salgado', 'Morgan',	'SAMG560528' ,'O1I000'),
('María Dolores', 'Cervantes', 'Cadena',	'CECD550401' ,'O1N000'),
('Patricia Ramona', 'Cisneros', 'Díaz',	'CIDP680624' ,'O1O000'),
('Eleazar', 'Sosa', 'González',	'SOGE650823' ,'O1O000'),
('Mario Alberto', 'Ballesteros', 'Curiel',	'BACM520429' ,'O1O000'),
('Angelina', 'Cadena', 'Flores',	'CAFA661128' ,'O1O000'),
('María Guadalupe', 'Castelán', 'Jiménez',	'CAJG620516' ,'O1O000'),
('Graciela', 'Erreguín', 'González',	'EEGG660911' ,'O1P000'),
('María Elena', 'Pérez', 'Lucio',	'PELE580813' ,'O1P000'),
('Celia', 'Carrasco', 'Jiménez ',	'CAJC700425' ,'O1P000'),
('Rosa Martha', 'Alcántara', 'Escamilla',	'AAER600805' ,'O1P000'),
('Miriam', 'Martínez', 'Pradel',	'MAPM660426' ,'O1L000'),
('Julio', 'Aquino', 'Aquino',	'AUAJ590101' ,'O1L000'),
('Héctor', 'Villanueva', 'Silva',	'VISH570106' ,'O1L000'),
('Luis Emilio', 'Sánchez', 'Licéaga',	'SALL490808' ,'O1L000'),
('Alma Araceli', 'Erceg', 'Bravo',	'EEBA650625' ,'O1J000'),
('Judith', 'Betancourt', 'Ruiz',	'BERJ620714' ,'O1J000'),
('Julian', 'Cordero', 'Pérez',	'COPJ590902' ,'O1J000'),
('Abel', 'Gonzalez', 'Reyes',	'GORA611230' ,'O1J000'),
('Gema', 'Cancino', 'Calderón',	'CACG660118' ,'O2D000'),
('Victor', 'Zepeda', 'González',	'ZEGV620728' ,'O2D000'),
('Miroslava', 'Castelán', 'Olguín',	'CAOM641215' ,'O2D000'),
('Mayra Elizabeth', 'Zuñiga', 'Coss',	'ZUCM690919' ,'O2D000'),
('Alejandro Isauro', 'Villagrán', 'Hernández',	'VIHA670801' ,'O2D000'),
('Guillermina Isabel', 'Oliva', 'Vallejo',	'OIVG660721' ,'O2D000'),
('María Magdalena', 'Salazar', 'Páramo',	'SAPM670320' ,'O2D000'),
('Jorge', 'García', 'Ángeles',	'GAAJ580420' ,'O2D000'),
('Maria Haydee', 'Bernal', 'Sanchez',	'BESH660721' ,'O2D000'),
('Mauricio Darío', 'Sánchez', 'Ramos',	'SARM610123' ,'O2D000'),
('María Susana', 'Martínez', 'Morales',	'MAMS570302' ,'O2D000'),
('Ezequiel', 'Solis', 'Araujo',	'SOAE590718' ,'O2D000'),
('Luis Héctor', 'Hernández', 'Gómez',	'HEGL560415' ,'O2D000'),
('Salvador Ricardo', 'Meneses', 'González',	'MEGS581117' ,'O2D000'),
('María Eugenia', 'Cruz', 'Reyes',	'CURE671008' ,'O2B000'),
('Bernabe', 'Rodríguez', 'Almanza',	'ROAB630611' ,'O2B000'),
('Álvaro', 'Sánchez', 'Osuna',	'SAOA620508' ,'O2B000'),
('Eduardo', 'Pérez', 'Orta',	'PEOE560828' ,'O2B000'),
('José Luis', 'Villareal', 'Aguirre',	'VIAL571012' ,'O2B000'),
('Victor Manuel', 'Cedillo', 'Estrada',	'CEEV640206' ,'O2A000'),
('Virginia', 'Chávez', 'Orozco',	'CAOV650225' ,'O2A000'),
('Antonio', 'García', 'Aguilar',	'GAAA630612' ,'O2A000'),
('Agustín Humberto', 'Ángeles', 'Mejía',	'AEMA610302' ,'O2A000'),
('Luis', 'Castillo', 'Olivares',	'CAOL521221' ,'O2A000'),
('Mauricio', 'Pedraza', 'Pérez',	'PEPM451130' ,'O2A000'),
('José Trinidad', 'Tapia', 'Cisneros',	'TACT460218','O2A000'),
('Martín', 'Ramírez', 'Pérez',	'RAPM631028' ,'O2A000'),
('José Luis', 'González', '',	'GOLU570429' ,'O2A000'),
('Jorge', 'Pérez', 'Rosas',	'PERJ440727' ,'O2A000'),
('Amada Gabriela', 'Brenes', 'López',	'BELA640913' ,'O2C000'),
('Mario Alfredo', 'Batta', 'Fonseca',	'BAFM531103' ,'O2C000'),
('Cesárea Rosa María', 'Garduño', 'Mendieta',	'GAMC530827' ,'O2C000'),
('Saúl', 'Vega', 'Pérez',	'VEPS580519' ,'O2C000'),
('Ma. de los Ángeles', 'Martínez', 'Ortega',	'MAOA620915' ,'O2E000'),
('Juan Raymundo', 'Mayorga', 'Cervantes',	'MACJ590327' ,'O2E000'),
('Homar Jorge', 'Bautista', 'Lugo',	'BALH681010' ,'O2F000'),
('José Luis', 'Rosas', 'López',	'ROLL520413' ,'O2F000'),
('Rodrigo', 'Mondragón', 'Guzmán',	'MOGR571111' ,'O2F000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Claudia Adriana', 'Moreno', 'Arenas'	,'MOAC701121', 'O2G000'),
('Sergio Cesar', 'Arroyo', 'Trejo'	,'AOTS630428', 'O2G000'),
('Victor Manuel', 'Martínez', 'Fuentes'	,'MAFV600123', 'O2G000'),
('Juan Alejandro', 'Perales', 'Pastrana'	,'PEPJ550328', 'O2G000'),
('Jaime Roberto', 'Ruíz y Zurvia', 'Flores'	,'RUZJ530430', 'O2G000'),
('Heriberto Efrén', 'Maldonado', 'Victoria'	,'MAVH550316', 'O2G000'),
('Jorge', 'Gallegos', 'Contreras'	,'GACJ570530', 'O2G000'),
('Ana María', 'Islas', 'Cortes'	,'IACA610703', 'O2H000'),
('José Luis', 'Carvajal', 'Gómez'	,'CAGL570825', 'O2H000'),
('Gonzalo Isidro', 'Alvarado', 'González'	,'AAGG570404', 'O2I000'),
('Jesús Gonzalo', 'Benítez', 'Escobar'	,'BEEJ580206', 'O2I000'),
('Guadalupe', 'Jiménez', 'Pérez'	,'JIPG660523', 'O2I000'),
('Ramón Leonardo', 'Martínez', 'Montes'	,'MAMR670830', 'O2I000'),
('María Adoración', 'Ruíz', 'Ramírez'	,'RURA600723', 'O2I000'),
('Florencio Enrique', 'Ramírez', 'Pérez'	,'RAPF560820', 'O2I000'),
('Sergio', 'Flores', 'Meza'	,'FOMS580218', 'O2I000'),
('María de los Ángeles', 'Núñez', 'Robles'	,'NURA470505', 'O2I000'),
('Gerardo', 'Sosa',	'','SOGE490329', 'O2I000'),
('Gustavo', 'Velázquez', 'Corichi'	,'VECG481101', 'O2I000'),
('José Manuel', 'Hallen', 'López'	,'HALM580923', 'O2I000'),
('Hilda Jesús', 'Quezada', 'Villegas'	,'QUVH590512', 'O2J000'),
('María del Rocío', 'Zamora', 'Mendoza'	,'ZAMR680730', 'O2J000'),
('Ignacio', 'Jiménez', 'Martínez'	,'JIMI631018', 'O2J000'),
('Concepción', 'Mejía', 'García'	,'MEGC640919', 'O2J000'),
('Luis Alfonso', 'Godinez', 'Contreras'	,'GOCL610302', 'O2J000'),
('Enrique', 'Anaya', 'Ornelas'	,'AAOE530715', 'O2M000'),
('Manuela', 'Calva', 'Pérez'	,'CAPM560515', 'O2M000'),
('Javier', 'Rivera', 'Flores'	,'RIFJ621206', 'O2M000'),
('Enrique', 'Vignati', 'Sánchez'	,'VISE630124', 'O2M000'),
('Dionisio Salomon', 'Fernández', 'Tapia'	,'FETD600118', 'O2M000'),
('Orlando', 'Palacios', 'Yañez'	,'PAYO680604', 'O2N000'),
('Samuel', 'Dorantes', 'Álvarez'	,'DOAS541112', 'O2N000'),
('Gonzalo', 'Galvez', 'Coyt'	,'GACG621104', 'O2N000'),
('Samuel', 'Suazo', 'Abarca'	,'SUAS530117', 'O2N000'),
('Miguel Ángel', 'Correa', 'Ascencio'	,'COAM650109', 'O2P000'),
('Julia', 'Grijalva', 'García'	,'GIGJ590910', 'O2P000'),
('Fernando Raul', 'Aguilar', 'Martínez'	,'AUMF640309', 'O2P000'),
('David Filiberto', 'Calderón', 'Quintana'	,'CAQD650908', 'O2P000'),
('José Salvador', 'Contreras', 'Mascota'	,'COMS580919', 'O2P000'),
('José Alberto', 'Chagolla', 'Guerrero'	,'CAGX671023', 'O2P000'),
('Noe Marina', 'Chagolla', 'Guerrero'	,'CAGN631226', 'O2P000'),
('Mónica', 'Durán', 'Velasco'	,'DUVM620927', 'O2P000'),
('Paulino', 'García', 'Altamirano'	,'GAAP490622', 'O2P000'),
('Othón Enrique', 'Herrera', 'Villegas'	,'HEVO590818', 'O2P000'),
('Carlos', 'Moreno', 'Ayala'	,'MOAC651030', 'O2P000'),
('Isaac', 'Perusquia', 'Medina'	,'PEMI611213', 'O2P000'),
('Evaristo Gabino', 'Ramírez', 'Rojas'	,'RARE551026', 'O2P000'),
('Ángel', 'Rodríguez y', 'Leyva'	,'ROLA460505', 'O2P000'),
('Rosa Gabriela', 'Sotelo', 'Candelaria'	,'SOCR591028', 'O2P000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('María de Lourdes', 'Valdes', 'Alcantar'	,'VAAL680202', 'O2P000'),
('Jesús Raúl', 'Aguilar', 'Caballero'	,'AUCJ600223', 'O2P000'),
('Maria Elena', 'Campos', 'Aldrete'	,'CAAE620708', 'O2P000'),
('Fernando Martín', 'Guerra', 'Infante'	,'GUIF610129', 'O2P000'),
('Rosa María', 'Ribas', 'Jaimes'	,'RIJR571220', 'O2P000'),
('Laura Patricia', 'Salas', 'Rangel'	,'SARL560604', 'O2P000'),
('Pedro Antonio', 'Loyola', 'Abitia'	,'LOAP630409', 'O2P000'),
('Francisco', 'Nava', 'Cervantes'	,'NACF571118', 'O2P000'),
('Blanca Rosa', 'Aguilar', 'Figueroa'	,'AUFB570717', 'O2P000'),
('Juan Carlos', 'Mares', 'Gutiérrez'	,'MAGJ611102', 'O2P000'),
('María del Rosario', 'Salinas', 'Tobón'	,'SATR610723', 'O2P000'),
('Jesús', 'Herrnández', 'Almaguer'	,'HEAJ480905', 'O2Q000'),
('Alejandro', 'Cruz', 'Paniagua',	'CUPA641214','O2Q000' ),
('Diana Rocío', 'Castañeda', 'García'	,'CAGD601102', 'O2Q000'),
('Miguel Alejandro', 'Buendía', 'Meneses'	,'BUMM681026', 'O2Q000'),
('Santiago', 'Rodríguez', 'Rojas'	,'RORS491127', 'O2Q000'),
('Sergio', 'Rea', 'Blanquet'	,'REBS560910', 'O2Q000'),
('Juventino', 'Pineda', 'Sánchez'	,'PISJ580125', 'O2Q000'),
('Enedino', 'Pérez', 'Mendoza'	,'PEME560514', 'O2Q000'),
('Salvador', 'López', 'Chávez'	,'LOCS670617', 'O2Q000'),
('Juan', 'Castro', 'Carrillo'	,'CACJ361020', 'O2Q000'),
('Blanca Leticia', 'Callejas', 'Dávila'	,'CADB581204', 'O2Q000'),
('Leonel', 'Kelly', 'Mexia'	,'KEML370228', 'O2Q000'),
('Guillermo', 'Velazquez', 'Samano'	,'VESG530225', 'O2Q000'),
('Etelvina', 'Zavala', 'Suárez'	,'ZASE420615', 'O2Q000'),
('Ixtaccihuatl Alejandra', 'Padilla', 'García'	,'PAGI560421', 'O2Q000'),
('Jorge Arturo', 'Aviña', 'Valencia'	,'AIVJ410529', 'O2Q000'),
('Gloria', 'Gutierrez', 'Menchaca'	,'GUMG560331', 'O2Q000'),
('Gregorio', 'Gómez', 'Hernández'	,'GOHG580525', 'O2Q000'),
('Judith', 'Benitez', 'Hernández'	,'BEHJ600304', 'O2Q000'),
('Armando', 'Frausto', 'Guerrero'	,'FAGA530612', 'O2Q000'),
('Nadia', 'Garín', 'Aguilar'	,'GAAN560517', 'O2Q000'),
('Yolanda', 'Iriarte', 'Arteaga'	,'IIAY431021', 'O2O000'),
('Benito', 'Hernández', 'García'	,'HEGB680314', 'O2O000'),
('Sofía Beatríz', 'Moreno', 'Acosta'	,'MOAS610429', 'O2O000'),
('Crisóforo', 'Ordoñes', 'López'	,'OOLC571220', 'O2O000'),
('Lucía', 'Román', 'Hinojosa'	,'ROHL600403', 'O2T000'),
('Pascual', 'Puebla', 'Robles '	,'PURP650517', 'O2S000'),
('Susana', 'López', 'Valenzuela'	,'LOVS570524', 'O2S000'),
('Baldomero', 'Morales', 'Campos'	,'MOCB620227', 'O2S000'),
('Ma. Elena', 'Zavala', 'Castillo'	,'ZACM620126', 'O2S000'),
('José Armando', 'Campos', 'Martínez'	,'CAMA630623', 'O2U000'),
('Maria Teresa', 'Bustamante', 'Garcia'	,'BUGT430510', 'O2U000'),
('Octavio', 'Rojas', 'Rodriguez'	,'RORO370912', 'O2U000'),
('Griselda', 'Puebla', 'Espinosa'	,'PUEG530218', 'O2U000'),
('Santa Adriana', 'Hernandez', 'Hernandez'	,'HEHS611127', 'O2U000'),
('Felipe Placido', 'Hueramo', 'Acosta'	,'HUAF470205', 'O2U000'),
('Gerardo Bonifacio', 'Nava', 'Hernandez'	,'NAHG510514', 'O2U000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Cesareo', 'Guillén', 'García'	,'GUGC640225' ,'O2V000'),
('Venustiano', 'Pérez', 'Medina'	,'PEMV670606' ,'O2V000'),
('José Luis', 'Ramírez', 'Contreras'	,'RACL670606' ,'O2V000'),
('José Artemio', 'Rodríguez', 'Salas'	,'ROSA580505' ,'O2V000'),
('Marcos', 'Salazar', 'Bolaños'	,'SABM670425' ,'O2V000'),
('Enrique', 'Villaseñor', 'Rosas'	,'VIRE550813' ,'O2V000'),
('Josefina', 'Martínez', 'Guzmán'	,'MAGJ460629' ,'O2V000'),
('Laura Catalina', 'Romero', 'Sotomayor'	,'ROSL540909' ,'O2V000'),
('Silvia', 'Galicia', 'Villanueva'	,'GAVS530520' ,'O2V000'),
('Venustiano', 'Martinez', 'Jimenez'	,'MAJV541230' ,'O2V000'),
('Heriberto', 'Reyes', 'Mantilla'	,'REMH610209' ,'O2W000'),
('Graciela', 'Portillo', 'Padilla'	,'POPG570126' ,'O2W000'),
('Alberto', 'Sandoval', 'Romero'	,'SARA500917' ,'O2W000'),
('Armando', 'Morales', 'Meza'	,'MOMA540122' ,'O2W000'),
('María Sara', 'Serrano', 'Perez'	,'SEPS580912' ,'O2W000'),
('Juana', 'González', 'Monroy'	,'GOMJ590712' ,'O2X000'),
('Rebeca', 'Tovar', 'Ramírez'	,'TORR491029' ,'O2X000'),
('Juan Bautista', 'Morales', 'Rodriguez'	,'MORJ410214' ,'O2X000'),
('José Guadalupe', 'Becerra', 'Ferreyra'	,'BEFG410730' ,'O2X000'),
('Silva', 'Gallegos', 'Alcantara'	,'GAAS600109' ,'O2X000'),
('María del Consuelo', 'Vázquez', 'Romero'	,'VARC580808' ,'O2K000'),
('Laura Leticia', 'Barrera', 'Necha'	,'BANL531018' ,'P0G000'),
('Macario', 'Camacho', 'Valdez'	,'CAVM560102' ,'P0A000'),
('José Teodoro', 'Silva', 'García'	,'SIGT601109' ,'P0E000'),
('Emilio Alberto', 'Cruz', 'Aguirre'	,'CUAE610405' ,'P0F000'),
('Enrique', 'Frasco', 'Tapia'	,'FATE610606' ,'P0F000'),
('Carlos', 'Martínez', 'Álvarez'	,'MAAC530822' ,'P0F000'),
('Gabino Alberto', 'Martínez', 'Gutiérrez'	,'MAGG600807' ,'P0F000'),
('Maria Eugenia', 'Gutiérrez', 'Castillo'	,'GUCE590602' ,'P0B000'),
('Dora María', 'Fonseca', 'López'	,'FOLD600328' ,'P0K000'),
('Sandra Carolina', 'Marín', 'López'	,'MALS631205' ,'P0K000'),
('Adolfo', 'Esquivel', 'Martínez'	,'EUMA630826' ,'P0M000'),
('Moisés', 'Sánchez', 'Adame'	,'SAAM630318' ,'P0M000'),
('María Luisa', 'González', 'Moreno'	,'GOML560209' ,'P0P000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Emilio', 'Arroyo', 'Orrala'	,'AOOE651222' ,'P0P000'),
('Eduardo', 'Vega', 'Alvarado'	,'VEAE651027' ,'P0P000'),
('Ignacio', 'Minjares', 'Tarazena'	,'MITI600219' ,'P0P000'),
('Oscar', 'Camacho', 'Nieto'	,'CANO650124' ,'P0P000'),
('Juan Carlos', 'González', 'Robles'	,'GORJ580113' ,'P0P000'),
('Olga Goretty', 'Mandujano', 'Pérez'	,'MAPO581026' ,'P0T000'),
('Denise', 'Córdova', 'Just'	,'COJD560226' ,'YYYYYY');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Noemí', 'del Real', 'Rodríguez'	,'RERN651110' ,'J00000'),
('Alicia Marcela', 'Ramírez', 'Guzmán'	,'RAGA691007' ,'J00000'),
('Silvia Lucila', 'Chávez', 'Valdez'	,'CAVS680901' ,'N00000'),
('Miguel', 'Franco', 'Romano'	,'FARM481129' ,'N00000'),
('María Martha', 'Juárez', 'Morales'	,'JUMM651228' ,'N00000'),
('Héctor Hugo', 'García', 'Castillo'	,'GACH581217' ,'O10000'),
('María del Pilar', 'Rodríguez', 'Olmedo'	,'ROOP561012' ,'O10000'),
('Guillermo', 'Romero', 'Carsolio'	,'ROCG600508' ,'O10000'),
('Blanca Rosa', 'Servin', 'Gonzalez'	,'SEGB500831' ,'O20000'),
('Gloria', 'Olivos', 'Rosas'	,'OIRG550715' ,'Q30000');

SHOW WARNINGS;


INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('María de Jesús', 'Calva', 'Calva'	,'CACJ600212' ,'Q40000'),
('Magdaleno Rafael', 'Juárez', 'Sánchez'	,'JUSM570722' ,'Q40000'),
('Adolfo', 'Tapia', 'Sánchez'	,'TASA630119' ,'Q40000'),
('Jorge', 'Gómez', 'Contreras'	,'GOCJ540509' ,'Q40000'),
('Ángel', 'Rodríguez', 'Paez'	,'ROPA550531' ,'Q40000'),
('Adrián', 'Valdez', 'Rodríguez'	,'VARA570908' ,'T60000'),
('María Guadalupe', 'Morales', 'Vázquez'	,'MOVG601118' ,'J60000'),
('Ricardo', 'Moreno', 'Ibarra'	,'MOIR590502' ,'O0C000'),
('Norma Marisol', 'Ordoñez', 'Sánchez'	,'OOSN660502' ,'O0C000'),
('Martha', 'Pérez', 'Vargas'	,'PEVM561221' ,'S40000'),
('Guadalupe del Socorro', 'Reyes', 'García'	,'REGG611025' ,'T63000');

SHOW WARNINGS;

INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Rosa Isela', 'Quiterio', 'Martinez'	,'QUMR681113' ,'Q10000'),
('Verónica', 'Morales', 'Hernández'	,'MOHV680927' ,'Q20000'),
('Margarita del Pilar', 'Sam', 'Rodríguez'	,'SARM501017' ,'R40000'),
('Filomeno', 'Gutiérrez', 'Toribio'	,'GUTF561129' ,'R40000'),
('Higinio', 'Carballar', 'Aranda',	'CAAH551119', 'Q50000' ),
('Fernando Javier', 'Montes de Oca', 'Segura'	,'MOSF661214' ,'Q50000'),
('Erik Gilberto', 'Strevel', 'Roche'	,'SERE560311' ,'Q50000'),
('Sergio Federico', 'Eckstein', 'Ugarte'	,'EEUS570818' ,'Q40000'),
('Eva', 'Moreno', 'Reyes'	,'MORE680104' ,'Q40000'),
('Rosaura', 'Amador', 'Sánchez'	,'AASR630322' ,'Q40000');

SHOW WARNINGS;

INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('José Luis', 'Mejía', 'Soler'	,'MESL420327' ,'O2J000'),
('Juan Ignacio', 'Reyes', 'García'	,'REGJ420909' ,'O2M000'),
('Jaime', 'Celis', 'Méndez'	,'CEMJ490521' ,'O2N000'),
('Juana Mercedes', 'Espinosa', 'Lara'	,'EILJ440328' ,'O2P000'),
('Rogelio', 'Maldonado', 'Rodríguez'	,'MARR450109' ,'O2P000'),
('María Estela', 'Melendez', 'Camargo'	,'MECE501109' ,'O2P000'),
('Jorge Helio', 'Altamirano', 'Aguilar'	,'AAAJ410118' ,'O2P000'),
('Blanca Margarita', 'Berdeja', 'Martínez'	,'BEMB431109' ,'O2P000'),
('Armando', 'Guerra', 'Trejo'	,'GUTA410412' ,'O2P000'),
('Felipe Ignacio', 'Jiménez', 'García'	,'JIGF420129' ,'O2P000'),
('Filiberto', 'Vázquez', 'Dávila'	,'VADF430822' ,'O2P000'),
('Oscar', 'Rojas', 'Espinosa'	,'ROEO430714' ,'O2P000'),
('Jorge', 'Rivera', 'Salcedo '	,'RISJ410709' ,'O2V000'),
('Guadalupe', 'Salinas', 'Castillo'	,'SACG371110' ,'O2V000'),
('Albertina', 'Espinoza', 'Venegas'	,'EIVA450412' ,'O2V000'),
('Alberto', 'Perez', 'Calderón'	,'PECA340531' ,'O2W000'),
('Lucio', 'Alemán', 'Rodríguez'	,'AERL450609' ,'O2T000'),
('José', 'Madrid', 'Flores'	,'MAFJ450121' ,'J00000'),
('Mirta Araceli', 'Toledo', 'Rojas'	,'TORM471203' ,'Q20000'),
('Salvador', 'Mata', 'Ramírez'	,'MARS461224' ,'T60000'),
('Rosa Isabel', 'Hernández', 'Gómez'	,'HEGR450905' ,'O2B000'),
('Macrino', 'Sánchez', 'Lara'	,'SALM390114' ,'O2B000'),
('Aurelio', 'Gómez', 'Velázquez'	,'GOVA480616' ,'O2B000'),
('Rafael', 'Ávila', 'Reyes'	,'AIRR361024' ,'O2E000'),
('José', 'Osuna', 'Díaz'	,'OUDJ370713' ,'O2E000'),
('Gildardo Carlos', 'Magdaleno', 'Domínguez'	,'MADG430608' ,'O2G000'),
('Rubén Joel', 'García', 'Barajas'	,'GABR450924' ,'O2I000'),
('Rafael', 'Xala', 'Camacho'	,'XACR421024' ,'O2I000'),
('Roberto Segundo', 'Acosta', 'Abreu'	,'AOAR441112' ,'O2J000'),
('Modesto', 'Cárdenas', 'García'	,'CAGM440225' ,'O2J000'),
('Fernando', 'Angulo', 'Brown'	,'AUBF470810' ,'O2J000'),
('Alfonso', 'Salazar', 'Zorrilla'	,'SAZA451003' ,'O2D000'),
('Daniel', 'Barajas y', 'Valencia'	,'BAVD370403' ,'O2D000'),
('Rafael', 'Sánchez', 'López'	,'SALR400622' ,'O2D000'),
('Miguel Ángel', 'Toledo', 'Martínez'	,'TOMM430929' ,'O2D000'),
('Gabriel', 'García', 'Hernández'	,'GAHG471123' ,'O1D000'),
('Salvador', 'Álvarez', 'Ballesteros'	,'AABS460521' ,'O2D000'),
('Samuel', 'Alcantara', 'Montes'	,'AAMS420723' ,'O2D000'),
('Francisco', 'Hernández', 'Rangel'	,'HERF391001' ,'O2D000');

SHOW WARNINGS;

INSERT INTO Guest (Name, FirstSurname, SecondSurname, RFC, PlaceID) VALUES 
('Claudia', 'Garces', 'Peñaloza',	'GAPC680404' ,'O1A000'),
('Blanca Estela', 'Cuevas', 'Bribiesca',	'CUBB650629' ,'O1A000'),
('Cecilia Yolanda', 'Pérez', 'López',	'PELC600109' ,'O1A000'),
('Luis Manuel', 'Martínez', 'Reyes',	'MARL600702' ,'O1A000'),
('Emilio', 'Calixto', 'González',	'CAGE550405' ,'O1A000'),
('Arturo', 'García', 'González',	'GAGA651215' ,'O1A000'),
('Leobardo', 'Sánchez','Pimentel',	'SAPL540211' ,'O1A000');
/* ======================================================
* =================    GUEST'S COMMENTS     =============
* =======================================================
*/
INSERT INTO Comment (Text, RFC, EventID) VALUES('Primera fila incapacidad', 'SARM501017', 1);
INSERT INTO Comment (Text, RFC, EventID) VALUES('Dificultad para caminar, requiere acompañante', 'PECA340531', 1);

SHOW WARNINGS;

/* ======================================================
* =================    GUEST'S PRIZE     ================
* =======================================================
*/
INSERT INTO GuestPrize VALUES ('TOOG450118', 2);
INSERT INTO GuestPrize VALUES ('CADR791106', 3);
INSERT INTO GuestPrize VALUES ('BASR381220', 3);
INSERT INTO GuestPrize VALUES ('GOHL460918', 3);
INSERT INTO GuestPrize VALUES ('JAVD540613', 3);
INSERT INTO GuestPrize VALUES ('PETS750209', 4);
INSERT INTO GuestPrize VALUES ('RABP720605', 5);
INSERT INTO GuestPrize VALUES ('MEER810505', 5);
INSERT INTO GuestPrize VALUES ('SISD970602', 6);
INSERT INTO GuestPrize VALUES
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

SHOW WARNINGS;

INSERT INTO GuestPrize VALUES
('GAPC680404', 7),
('CUBB650629', 7),
('PELC600109', 7),
('MARL600702', 7),
('CAGE550405', 7),
('GAGA651215', 7),
('SAPL540211', 7);

SHOW WARNINGS;

INSERT INTO GuestPrize VALUES
('MAFE621217', 7),
('HEGP610330', 7),
('MORC551103', 7),
('POAE661230', 7),
('ROGA651102', 7),
('SALJ650711', 7),
('SABN621118', 7),
('GABJ630131', 7),
('RORM630319', 7),
('MAAO560123', 7),
('ROOL570306', 7),
('BAJO591030', 7),
('SARE620826', 7),
('VIRC600318', 7),
('SIBM600702', 7),
('SADC571215', 7),
('GOCA520427', 7),
('CEQI610121', 7),
('JICJ500418', 7),
('ROCR620603', 7),
('GOMV580325', 7),
('EIGL470116', 7),
('GAHE570925', 7),
('LIFM570506', 7),
('CAAA660515', 7),
('RASF610711', 7),
('SALU600601', 7),
('TAVL610516', 7),
('GAHF630822', 7),
('HUGF680607', 7),
('PAOA571102', 7),
('RIHF580501', 7),
('AAMJ470215', 7),
('OUGU580124', 7),
('VARB570219', 7),
('CAGG640505', 7),
('AASA570727', 7),
('HEGJ590310', 7),
('BIMR670106', 7),
('AORG480916', 7),
('TEMA670502', 7),
('SAGG641221', 7),
('SAMG560528', 7),
('CECD550401', 7),
('CIDP680624', 7),
('SOGE650823', 7),
('BACM520429', 7),
('CAFA661128', 7),
('CAJG620516', 7),
('EEGG660911', 7),
('PELE580813', 7),
('CAJC700425', 7),
('AAER600805', 7),
('MAPM660426', 7),
('AUAJ590101', 7),
('VISH570106', 7),
('SALL490808', 7),
('EEBA650625', 7),
('BERJ620714', 7),
('COPJ590902', 7),
('GORA611230', 7),
('CACG660118', 7),
('ZEGV620728', 7),
('CAOM641215', 7),
('ZUCM690919', 7),
('VIHA670801', 7),
('OIVG660721', 7),
('SAPM670320', 7),
('GAAJ580420', 7),
('BESH660721', 7),
('SARM610123', 7),
('MAMS570302', 7),
('SOAE590718', 7),
('HEGL560415', 7),
('MEGS581117', 7),
('CURE671008', 7),
('ROAB630611', 7),
('SAOA620508', 7),
('PEOE560828', 7),
('VIAL571012', 7),
('CEEV640206', 7),
('CAOV650225', 7),
('GAAA630612', 7),
('AEMA610302', 7),
('CAOL521221', 7),
('PEPM451130', 7),
('TACT460218', 7),
('RAPM631028', 7),
('GOLU570429', 7),
('PERJ440727', 7),
('BELA640913', 7),
('BAFM531103', 7),
('GAMC530827', 7),
('VEPS580519', 7),
('MAOA620915', 7),
('MACJ590327', 7),
('BALH681010', 7),
('ROLL520413', 7),
('MOGR571111', 7);

SHOW WARNINGS;

INSERT INTO GuestPrize VALUES
('MOAC701121', 7),
('AOTS630428', 7),
('MAFV600123', 7),
('PEPJ550328', 7),
('RUZJ530430', 7),
('MAVH550316', 7),
('GACJ570530', 7),
('IACA610703', 7),
('CAGL570825', 7),
('AAGG570404', 7),
('BEEJ580206', 7),
('JIPG660523', 7),
('MAMR670830', 7),
('RURA600723', 7),
('RAPF560820', 7),
('FOMS580218', 7),
('NURA470505', 7),
('SOGE490329', 7),
('VECG481101', 7),
('HALM580923', 7),
('QUVH590512', 7),
('ZAMR680730', 7),
('JIMI631018', 7),
('MEGC640919', 7),
('GOCL610302', 7),
('AAOE530715', 7),
('CAPM560515', 7),
('RIFJ621206', 7),
('VISE630124', 7),
('FETD600118', 7),
('PAYO680604', 7),
('DOAS541112', 7),
('GACG621104', 7),
('SUAS530117', 7),
('COAM650109', 7),
('GIGJ590910', 7),
('AUMF640309', 7),
('CAQD650908', 7),
('COMS580919', 7),
('CAGX671023', 7),
('CAGN631226', 7),
('DUVM620927', 7),
('GAAP490622', 7),
('HEVO590818', 7),
('MOAC651030', 7),
('PEMI611213', 7),
('RARE551026', 7),
('ROLA460505', 7),
('SOCR591028', 7),
('VAAL680202', 7),
('AUCJ600223', 7),
('CAAE620708', 7),
('GUIF610129', 7),
('RIJR571220', 7),
('SARL560604', 7),
('LOAP630409', 7),
('NACF571118', 7),
('AUFB570717', 7),
('MAGJ611102', 7),
('SATR610723', 7),
('HEAJ480905', 7),
('CUPA641214', 7),
('CAGD601102', 7),
('BUMM681026', 7),
('RORS491127', 7),
('REBS560910', 7),
('PISJ580125', 7),
('PEME560514', 7),
('LOCS670617', 7),
('CACJ361020', 7),
('CADB581204', 7),
('KEML370228', 7),
('VESG530225', 7),
('ZASE420615', 7),
('PAGI560421', 7),
('AIVJ410529', 7),
('GUMG560331', 7),
('GOHG580525', 7),
('BEHJ600304', 7),
('FAGA530612', 7),
('GAAN560517', 7),
('IIAY431021', 7),
('HEGB680314', 7),
('MOAS610429', 7),
('OOLC571220', 7),
('ROHL600403', 7),
('PURP650517', 7),
('LOVS570524', 7),
('MOCB620227', 7),
('ZACM620126', 7),
('CAMA630623', 7),
('BUGT430510', 7),
('RORO370912', 7),
('PUEG530218', 7),
('HEHS611127', 7),
('HUAF470205', 7),
('NAHG510514', 7);

SHOW WARNINGS;

INSERT INTO GuestPrize VALUES
('GUGC640225', 7),
('PEMV670606', 7),
('RACL670606', 7),
('ROSA580505', 7),
('SABM670425', 7),
('VIRE550813', 7),
('MAGJ460629', 7),
('ROSL540909', 7),
('GAVS530520', 7),
('MAJV541230', 7),
('REMH610209', 7),
('POPG570126', 7),
('SARA500917', 7),
('MOMA540122', 7),
('SEPS580912', 7),
('GOMJ590712', 7),
('TORR491029', 7),
('MORJ410214', 7),
('BEFG410730', 7),
('GAAS600109', 7),
('VARC580808', 7),
('BANL531018', 7),
('CAVM560102', 7),
('SIGT601109', 7),
('CUAE610405', 7),
('FATE610606', 7),
('MAAC530822', 7),
('MAGG600807', 7),
('GUCE590602', 7),
('FOLD600328', 7),
('MALS631205', 7),
('EUMA630826', 7),
('SAAM630318', 7),
('GOML560209', 7),
('AOOE651222', 7),
('VEAE651027', 7),
('MITI600219', 7),
('CANO650124', 7),
('GORJ580113', 7),
('MAPO581026', 7),
('COJD560226', 7),
('RERN651110', 7),
('RAGA691007', 7),
('CAVS680901', 7),
('FARM481129', 7),
('JUMM651228', 7),
('GACH581217', 7),
('ROOP561012', 7),
('ROCG600508', 7),
('SEGB500831', 7),
('OIRG550715', 7),
('QUMR681113', 7),
('MOHV680927', 7),
('SARM501017', 7),
('GUTF561129', 7),
('CAAH551119', 7),
('MOSF661214', 7),
('SERE560311', 7),
('EEUS570818', 7),
('MORE680104', 7),
('AASR630322', 7),
('CACJ600212', 7),
('JUSM570722', 7),
('TASA630119', 7),
('GOCJ540509', 7),
('ROPA550531', 7),
('VARA570908', 7),
('MOVG601118', 7),
('MOIR590502', 7),
('OOSN660502', 7),
('PEVM561221', 7),
('REGG611025', 7);

SHOW WARNINGS;

INSERT INTO GuestPrize VALUES
('GAHG471123', 8),
('AABS460521', 8),
('AAMS420723', 8),
('HERF391001', 8),
('SAZA451003', 8),
('BAVD370403', 8),
('SALR400622', 8),
('TOMM430929', 8),
('HEGR450905', 8),
('SALM390114', 8),
('GOVA480616', 8),
('AIRR361024', 8),
('OUDJ370713', 8),
('MADG430608', 8),
('GABR450924', 8),
('XACR421024', 8),
('AOAR441112', 8),
('CAGM440225', 8),
('AUBF470810', 8),
('MESL420327', 8),
('REGJ420909', 8),
('CEMJ490521', 8),
('EILJ440328', 8),
('MARR450109', 8),
('MECE501109', 8),
('AAAJ410118', 8),
('BEMB431109', 8),
('GUTA410412', 8),
('JIGF420129', 8),
('VADF430822', 8),
('ROEO430714', 8),
('RISJ410709', 8),
('SACG371110', 8),
('EIVA450412', 8),
('PECA340531', 8),
('AERL450609', 8),
('MAFJ450121', 8),
('TORM471203', 8),
('MARS461224', 8);

SHOW WARNINGS;

/* ======================================================
* =================    EVENT'S GUEST     ================
* =======================================================
*/
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('HEMP610409', 1, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('GARV801005', 2, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('GUSV811105', 3, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SADV700522', 4, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SAMJ740319', 5, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('EAGC770416', 6, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('CABM811007', 7, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('JIMA610709', 8, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('ROCL700110', 9, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('MASC731120', 10, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('BOMJ600427', 11, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('LOFT610501', 12, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('CACJ620311', 13, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SIGG840712', 14, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('GUHE740114', 15, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('GARJ640319', 16, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SACC820315', 17, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('RUBM600910', 18, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('PESL790811', 19, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('CICM700907', 20, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('NEEL730512', 21, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('OELE810505', 22, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('BUAI920831', 23, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('NAMJ870131', 24, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SUCA511123', 25, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('MOMA530924', 26, 1);
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('MORA640123', 27, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('PAGC570307', 28, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('TOPE551216', 29, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('MAIU850513', 30, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SAME770202', 31, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('BEMG581122', 32, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('AISL760127', 33, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('ROLP651211', 34, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('GUDE820907', 35, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('CAAG560830', 36, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('OUFA850727', 37, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('RALT520821', 38, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('AAMA580502', 39, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('REIH830819', 40, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('AAAC670607', 41, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('AAMJ550319', 42, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('CAFJ811202', 43, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('RORE650831', 44, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('SILL681102', 45, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('BEHM730706', 46, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('CUPS631212', 47, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('ROAJ530902', 48, 1); 
INSERT INTO GuestEvent (RFC, Number, EventID) VALUES ('RORR590111', 49, 1);
INSERT INTO GuestEvent (Number, RFC, EventID) VALUES
(50, 'RAVM650728', 1),
(51, 'VINA780922', 1),
(52, 'BAMV840328', 1),
(53, 'REGM590502', 1),
(54, 'ROHI710319', 1),
(55, 'CEPP650317', 1),
(56, 'AAZA700603', 1),
(57, 'RABC690320', 1),
(58, 'GOFA671026', 1),
(59, 'ZACR760228', 1),
(60, 'AALE860922', 1),
(61, 'LOAA770303', 1),
(62, 'SALV610526', 1),
(63, 'ROCC730916', 1),
(64, 'GURJ720122', 1),
(65, 'MORA740726', 1),
(66, 'TOGA770224', 1),
(67, 'AULC650915', 1),
(68, 'CABI750704', 1),
(69, 'DUMJ520111', 1),
(70, 'CACN810816', 1),
(71, 'JEHJ620923', 1),
(72, 'ROHL720825', 1),
(73, 'GOPP651210', 1),
(74, 'EIVI600524', 1),
(75, 'MORA621123', 1),
(76, 'HELI891227', 1),
(77, 'MAPD850325', 1),
(78, 'HEMA760104', 1),
(79, 'PEDH721121', 1),
(80, 'CAJC500324', 1),
(81, 'MATP810925', 1),
(82, 'TOAF601224', 1),
(83, 'RICF720523', 1),
(84, 'GACI730704', 1),
(85 ,'MEDC870705', 1),
(86	,'FAGJ781015', 1),
(87	,'NERM870525', 1),
(88	,'JULF841004', 1),
(89	,'CALA700920', 1),
(90	,'TORG630413', 1),
(91	,'LORC630708', 1),
(92	,'TOBE620920', 1),
(93	,'MEBC660713', 1),
(94	,'SAEB601008', 1),
(95	,'GOPF630603', 1),
(96	,'HUAE800531', 1),
(97	,'SAML711230', 1),
(98	,'AAFD851118', 1),
(99	,'GUGM570426', 1),
(100,'BABE570407', 1),
(101,'HESR530831', 1),
(102,'ROPA880429', 1),
(103,'BAHH520810', 1),
(104,'GAXG691204', 1),
(105,'GASA810421', 1),
(106,'VECK781228', 1),
(107,'NARR700417', 1),
(108,'GOAM910530', 1),
(109,'SARF761129', 1),
(110,'CAAN800412', 1),
(111,'GUCY710615', 1),
(112,'CUDJ700330', 1),
(113,'FOBF680603', 1),
(114,'BEJA641207', 1),
(115,'HEIM680226', 1),
(116,'PEMN701116', 1),
(117,'GAJJ611026', 1),
(118,'GACJ590822', 1),
(119,'CANC800416', 1),
(120,'IANE820517', 1),
(121,'HEGU731014', 1),
(122,'GALL661221', 1),
(123,'RERF841114', 1),
(124,'NOVJ720424', 1),
(125,'MARA810111', 1),
(126,'RASR710510', 1),
(127,'GULR860123', 1),
(128,'CATJ800217', 1),
(129,'BAEE770115', 1),
(130,'PAMI691010', 1),
(131,'RIRL780924', 1),
(132,'CAAP690310', 1),
(133,'MOCE800511', 1),
(134,'QUHC650913', 1),
(135,'GOZA600901', 1),
(136,'MERA550906', 1),
(137,'MAPG741025', 1),
(138,'GAGL620822', 1),
(139,'COSL680114', 1),
(140,'GUPE640521', 1),
(141,'CUVA600612', 1),
(142,'LORJ690319', 1),
(143,'GACM710712', 1),
(144,'MECV841214', 1),
(145,'JUBD720623', 1),
(146,'SASF660302', 1),
(147,'CAJT580925', 1),
(148,'GUSJ751114', 1),
(149,'TOMJ650420', 1),
(150,'CARE870706', 1),
(151,'GUAJ850112', 1),
(152,'GUHL810712', 1),
(153,'MACM640411', 1),
(154,'MASO581005', 1),
(155,'EARG821010', 1),
(156,'RISR610808', 1),
(157,'TOLV710602', 1),
(158,'RUCR841028', 1),
(159,'AAIA810312', 1),
(160,'PICA790917', 1),
(161,'AIGE760708', 1),
(162,'MANK750818', 1),
(163,'PALG831114', 1),
(164,'RAAD681019', 1),
(165,'ROOR690527', 1),
(166,'FERA561101', 1),
(167,'HEBP580102', 1),
(168,'TEMG631204', 1),
(169,'GOEE930613', 1),
(170,'XILS910302', 1),
(171,'COVC500403', 1),
(172,'GODA750831', 1),
(173,'SAHF780227', 1),
(174,'MOAJ631206', 1),
(175,'JULM671105', 1),
(176,'SAMJ870323', 1),
(177,'SOOE761215', 1),
(178,'VABA721101', 1),
(179,'AARE791201', 1),
(180,'BAAC641022', 1),
(181,'GOVN621207', 1),
(182,'ROGA801023', 1),
(183,'MABV750223', 1),
(184,'MOLP601009', 1),
(185,'RAAA740815', 1),
(186,'CARA550419', 1),
(187,'POMP800723', 1),
(188,'CEGG770409', 1),
(189,'COGX700718', 1),
(190,'CEBL641209', 1),
(191,'IAOV730304', 1),
(192,'DEAV540628', 1),
(193,'IAPE721117', 1),
(194,'LOUS630530', 1),
(195,'TAMJ711204', 1),
(196,'OORC880806', 1),
(197,'REHA740406', 1),
(198,'GUPS640707', 1),
(199,'GACI590603', 1),
(200,'GAVT670924', 1),
(201,'GADF790414', 1),
(202,'FOGR691218', 1),
(203,'AUTV660101', 1),
(204,'BAGA541105', 1),
(205,'MARR730921', 1),
(206,'OIRA730527', 1),
(207,'ROOD790509', 1),
(208,'MALA861025', 1),
(209,'VATH760227', 1),
(210,'GUAV770529', 1),
(211,'GAGE930619', 1),
(212,'PUMF820301', 1),
(213,'EAMM710909', 1),
(214,'ROHP740712', 1),
(215,'LOGE810825', 1),
(216,'TOEL840404', 1),
(217,'SOMM790430', 1),
(218,'HERA631206', 1),
(219,'QUDN750305', 1),
(220,'SALO680206', 1),
(221,'RARC621127', 1),
(222,'TOOG450118', 1),
(223,'CADR791106', 1),
(224,'BASR381220', 1),
(225,'GOHL460918', 1),
(226,'JAVD540613', 1),
(227,'PETS750209', 1),
(228,'RABP720605', 1),
(229,'MEER810505', 1),
(230,'SISD970602', 1);

SHOW WARNINGS;

INSERT INTO GuestEvent (RFC, Number, EventID) VALUES 
('GAPC680404', 231, 1),
('CUBB650629', 232, 1),
('PELC600109', 233, 1),
('MARL600702', 234, 1),
('CAGE550405', 235, 1),
('GAGA651215', 236, 1),
('SAPL540211', 237, 1);

SHOW WARNINGS;

INSERT INTO GuestEvent (Number, RFC, EventID) VALUES 
(238		,'MAFE621217', 1),
(239		,'HEGP610330', 1),
(240		,'MORC551103', 1),
(241		,'POAE661230', 1),
(242		,'ROGA651102', 1),
(243		,'SALJ650711', 1),
(244		,'SABN621118', 1),
(245		,'GABJ630131', 1),
(246		,'RORM630319', 1),
(247		,'MAAO560123', 1),
(248		,'ROOL570306', 1),
(249		,'BAJO591030', 1),
(250		,'SARE620826', 1),
(251		,'VIRC600318', 1),
(252		,'SIBM600702', 1),
(253		,'SADC571215', 1),
(254		,'GOCA520427', 1),
(255		,'CEQI610121', 1),
(256		,'JICJ500418', 1),
(257 		,'ROCR620603', 1),
(258		,'GOMV580325', 1),
(259 		,'EIGL470116', 1),
(260 		,'GAHE570925', 1),
(261 		,'LIFM570506', 1),
(262 		,'CAAA660515', 1),
(263		,'RASF610711', 1),
(264		,'SALU600601', 1),
(265		,'TAVL610516', 1),
(266		,'GAHF630822', 1),
(267		,'HUGF680607', 1),
(268		,'PAOA571102', 1),
(269		,'RIHF580501', 1),
(270		,'AAMJ470215', 1),
(271		,'OUGU580124', 1),
(272		,'VARB570219', 1),
(273		,'CAGG640505', 1),
(274		,'AASA570727', 1),
(275		,'HEGJ590310', 1),
(276		,'BIMR670106', 1),
(277		,'AORG480916', 1),
(278		,'TEMA670502', 1),
(279		,'SAGG641221', 1),
(280		,'SAMG560528', 1),
(281 		,'CECD550401', 1),
(282		,'CIDP680624', 1),
(283		,'SOGE650823', 1),
(284		,'BACM520429', 1),
(285		,'CAFA661128', 1),
(286		,'CAJG620516', 1),
(287		,'EEGG660911', 1),
(288		,'PELE580813', 1),
(289		,'CAJC700425', 1),
(290		,'AAER600805', 1),
(291		,'MAPM660426', 1),
(292		,'AUAJ590101', 1),
(293		,'VISH570106', 1),
(294		,'SALL490808', 1),
(295		,'EEBA650625', 1),
(296		,'BERJ620714', 1),
(297		,'COPJ590902', 1),
(298		,'GORA611230', 1),
(299		,'CACG660118', 1),
(300		,'ZEGV620728', 1),
(301		,'CAOM641215', 1),
(302		,'ZUCM690919', 1),
(303		,'VIHA670801', 1),
(304		,'OIVG660721', 1),
(305		,'SAPM670320', 1),
(306		,'GAAJ580420', 1),
(307		,'BESH660721', 1),
(308		,'SARM610123', 1),
(309		,'MAMS570302', 1),
(310		,'SOAE590718', 1),
(311		,'HEGL560415', 1),
(312		,'MEGS581117', 1),
(313		,'CURE671008', 1),
(314		,'ROAB630611', 1),
(315		,'SAOA620508', 1),
(316		,'PEOE560828', 1),
(317		,'VIAL571012', 1),
(318		,'CEEV640206', 1),
(319		,'CAOV650225', 1),
(320		,'GAAA630612', 1),
(321		,'AEMA610302', 1),
(322		,'CAOL521221', 1),
(323		,'PEPM451130', 1),
(324		,'TACT460218', 1),
(325		,'RAPM631028', 1),
(326		,'GOLU570429', 1),
(327		,'PERJ440727', 1),
(328		,'BELA640913', 1),
(329		,'BAFM531103', 1),
(330		,'GAMC530827', 1),
(331		,'VEPS580519', 1),
(332		,'MAOA620915', 1),
(333		,'MACJ590327', 1),
(334		,'BALH681010', 1),
(335		,'ROLL520413', 1),
(336		,'MOGR571111', 1);

SHOW WARNINGS;

INSERT INTO GuestEvent (Number, RFC, EventID) VALUES 
(337,		'MOAC701121', 1),
(338,		'AOTS630428', 1),
(339,		'MAFV600123', 1),
(340,		'PEPJ550328', 1),
(341,		'RUZJ530430', 1),
(342,		'MAVH550316', 1),
(343,		'GACJ570530', 1),
(344,		'IACA610703', 1),
(345,		'CAGL570825', 1),
(346,		'AAGG570404', 1),
(347,		'BEEJ580206', 1),
(348,		'JIPG660523', 1),
(349,		'MAMR670830', 1),
(350,		'RURA600723', 1),
(351,		'RAPF560820', 1),
(352,		'FOMS580218', 1),
(353,		'NURA470505', 1),
(354,		'SOGE490329', 1),
(355,		'VECG481101', 1),
(356,		'HALM580923', 1),
(357,		'QUVH590512', 1),
(358,		'ZAMR680730', 1),
(359,		'JIMI631018', 1),
(360,		'MEGC640919', 1),
(361,		'GOCL610302', 1),
(362,		'AAOE530715', 1),
(363,		'CAPM560515', 1),
(364,		'RIFJ621206', 1),
(365,		'VISE630124', 1),
(366,		'FETD600118', 1),
(367,		'PAYO680604', 1),
(368,		'DOAS541112', 1),
(369,		'GACG621104', 1),
(370,		'SUAS530117', 1),
(371,		'COAM650109', 1),
(372,		'GIGJ590910', 1),
(373,		'AUMF640309', 1),
(374,		'CAQD650908', 1),
(375,		'COMS580919', 1),
(376,		'CAGX671023', 1),
(377,		'CAGN631226', 1),
(378,		'DUVM620927', 1),
(379,		'GAAP490622', 1),
(380,		'HEVO590818', 1),
(381,		'MOAC651030', 1),
(382,		'PEMI611213', 1),
(383,		'RARE551026', 1),
(384,		'ROLA460505', 1),
(385,		'SOCR591028', 1),
(386,		'VAAL680202', 1),
(387,		'AUCJ600223', 1),
(388,		'CAAE620708', 1),
(389,		'GUIF610129', 1),
(390,		'RIJR571220', 1),
(391,		'SARL560604', 1),
(392,		'LOAP630409', 1),
(393,		'NACF571118', 1),
(394,		'AUFB570717', 1),
(395,		'MAGJ611102', 1),
(396,		'SATR610723', 1),
(397,		'HEAJ480905', 1),
(398,		'CUPA641214', 1),
(399,		'CAGD601102', 1),
(400,		'BUMM681026', 1),
(401,		'RORS491127', 1),
(402,		'REBS560910', 1),
(403,		'PISJ580125', 1),
(404,		'PEME560514', 1),
(405,		'LOCS670617', 1),
(406,		'CACJ361020', 1),
(407,		'CADB581204', 1),
(408,		'KEML370228', 1),
(409,		'VESG530225', 1),
(410,		'ZASE420615', 1),
(411,		'PAGI560421', 1),
(412,		'AIVJ410529', 1),
(413,		'GUMG560331', 1),
(414,		'GOHG580525', 1),
(415,		'BEHJ600304', 1),
(416,		'FAGA530612', 1),
(417,		'GAAN560517', 1),
(418,		'IIAY431021', 1),
(419,		'HEGB680314', 1),
(420,		'MOAS610429', 1),
(421,		'OOLC571220', 1),
(422,		'ROHL600403', 1),
(423,		'PURP650517', 1),
(424,		'LOVS570524', 1),
(425,		'MOCB620227', 1),
(426,		'ZACM620126', 1),
(427,		'CAMA630623', 1),
(428,		'BUGT430510', 1),
(429,		'RORO370912', 1),
(430,		'PUEG530218', 1),
(431,		'HEHS611127', 1),
(432,		'HUAF470205', 1),
(433,		'NAHG510514', 1);

SHOW WARNINGS;

INSERT INTO GuestEvent (Number, RFC, EventID) VALUES
(434,		'GUGC640225', 1),
(435,		'PEMV670606', 1),
(436,		'RACL670606', 1),
(437,		'ROSA580505', 1),
(438,		'SABM670425', 1),
(439,		'VIRE550813', 1),
(440,		'MAGJ460629', 1),
(441,		'ROSL540909', 1),
(442,		'GAVS530520', 1),
(443,		'MAJV541230', 1),
(444,		'REMH610209', 1),
(445,		'POPG570126', 1),
(446,		'SARA500917', 1),
(447,		'MOMA540122', 1),
(448,		'SEPS580912', 1),
(449,		'GOMJ590712', 1),
(450,		'TORR491029', 1),
(451,		'MORJ410214', 1),
(452,		'BEFG410730', 1),
(453,		'GAAS600109', 1),
(454,		'VARC580808', 1),
(455,		'BANL531018', 1),
(456, 		'CAVM560102', 1),
(457,		'SIGT601109', 1),
(458,		'CUAE610405', 1),
(459,		'FATE610606', 1),
(460,		'MAAC530822', 1),
(461,		'MAGG600807', 1),
(462,		'GUCE590602', 1),
(463,		'FOLD600328', 1),
(464,		'MALS631205', 1),
(465,		'EUMA630826', 1),
(466,		'SAAM630318', 1),
(467,		'GOML560209', 1),
(468,		'AOOE651222', 1),
(469,		'VEAE651027', 1),
(470,		'MITI600219', 1),
(471,		'CANO650124', 1),
(472,		'GORJ580113', 1),
(473, 		'MAPO581026', 1),
(474,		'COJD560226', 1),
(475,		'RERN651110', 1),
(476,		'RAGA691007', 1),
(477,		'CAVS680901', 1),
(478,		'FARM481129', 1),
(479,		'JUMM651228', 1),
(480,		'GACH581217', 1),
(481,		'ROOP561012', 1),
(482,		'ROCG600508', 1),
(483,		'SEGB500831', 1),
(484,		'OIRG550715', 1),
(485,		'QUMR681113', 1),
(486,		'MOHV680927', 1),
(487,		'SARM501017', 1),
(488,		'GUTF561129', 1),
(489,		'CAAH551119', 1),
(490,		'MOSF661214', 1),
(491,		'SERE560311', 1),
(492,		'EEUS570818', 1),
(493,		'MORE680104', 1),
(494,		'AASR630322', 1),
(495,		'CACJ600212', 1),
(496,		'JUSM570722', 1),
(497,		'TASA630119', 1),
(498,		'GOCJ540509', 1),
(499,		'ROPA550531', 1),
(500,		'VARA570908', 1),
(501,		'MOVG601118', 1),
(502,		'MOIR590502', 1),
(503,		'OOSN660502', 1),
(504,		'PEVM561221', 1),
(505,		'REGG611025', 1);

SHOW WARNINGS;

INSERT INTO GuestEvent (Number, RFC, EventID) VALUES
(506, 'GAHG471123', 1),
(507, 'AABS460521', 1),
(508, 'AAMS420723', 1),
(509, 'HERF391001', 1),
(510, 'SAZA451003', 1),
(511, 'BAVD370403', 1),
(512, 'SALR400622', 1),
(513, 'TOMM430929', 1),
(514, 'HEGR450905', 1),
(515, 'SALM390114', 1),
(516, 'GOVA480616', 1),
(517, 'AIRR361024', 1),
(518, 'OUDJ370713', 1),
(519, 'MADG430608', 1),
(520, 'GABR450924', 1),
(521, 'XACR421024', 1),
(522, 'AOAR441112', 1),
(523, 'CAGM440225', 1),
(524, 'AUBF470810', 1),
(525, 'MESL420327', 1),
(526, 'REGJ420909', 1),
(527, 'CEMJ490521', 1),
(528, 'EILJ440328', 1),
(529, 'MARR450109', 1),
(530, 'MECE501109', 1),
(531, 'AAAJ410118', 1),
(532, 'BEMB431109', 1),
(533, 'GUTA410412', 1),
(534, 'JIGF420129', 1),
(535, 'VADF430822', 1),
(536, 'ROEO430714', 1),
(537, 'RISJ410709', 1),
(538, 'SACG371110', 1),
(539, 'EIVA450412', 1),
(540, 'PECA340531', 1),
(541, 'AERL450609', 1),
(542, 'MAFJ450121', 1),
(543, 'TORM471203', 1),
(544, 'MARS461224', 1);

SHOW WARNINGS;

UPDATE GuestEvent SET GuestEvent.Assistance = 0, GuestEvent.Confirmation = 0;

/* ======================================================
* ========    TEST EMAILS FOR GUESTS     ================
* =======================================================
*/

UPDATE GuestEvent GE, Guest G 
SET G.Email = 'enriquebroly@gmail.com'
WHERE G.RFC = GE.RFC AND GE.Number >= 0 AND GE.Number <= 100;

UPDATE GuestEvent GE, Guest G 
SET G.Email = 'soyoscarrh@gmail.com'
WHERE G.RFC = GE.RFC AND GE.Number >= 101 AND GE.Number <= 200;

UPDATE GuestEvent GE, Guest G 
SET G.Email = 'abigail3nic.say@gmail.com'
WHERE G.RFC = GE.RFC AND GE.Number >= 201 AND GE.Number <= 300;

UPDATE GuestEvent GE, Guest G 
SET G.Email = 'yngmeizhu@gmail.com'
WHERE G.RFC = GE.RFC AND GE.Number >= 301 AND GE.Number <= 544;


SHOW WARNINGS;
