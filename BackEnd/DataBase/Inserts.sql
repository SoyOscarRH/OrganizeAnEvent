/*EXPORT FROM MySQL:
cd C:\Program Files\MySQL\MySQL Server 5.7\bin
mysqldump -u root -p oae > C:\wamp64\www\OrganizeAnEvent\BackEnd\DataBase\CompleteData.sql*/

USE oae;

/* ===========================================================================
 * =================             INITIAL DATA          =======================
 * ===========================================================================
 */

/* ======================================================
* =================    EVENT     ========================
* =======================================================
*/
insert into Event (Name, Description) 
values('DISTINCIONES AL MÉRITO POLITÉCNICO 2018', 'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.

EN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR');

/* ======================================================
* =================    INSTITUTION    ===================
* =======================================================
*/
insert into Institution (Name, EventID) values('INSTITUTO POLITÉCNICO NACIONAL', 1);
insert into Institution (Name, EventID) values('UNIVERSIDAD AUTÓNOMA DE MÉXICO', null);


/* ======================================================
* =================    PRIZE     ========================
* =======================================================
*/
insert into Prize (Name, Block, Speech, Amount, EventID) values ('DIPLOMA A LA "EFICIENCIA Y EFICACIA"', 1, 'EL DIPLOMA A LA “EFICIENCIA Y EFICACIA” SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.
 
PARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.
 
CON LA ANUENCIA DE NUESTRAS AUTORIDADES, EN ESTE MOMENTO DAREMOS INICIO A LA ENTREGA DE DICHOS DIPLOMAS, PARA LO CUAL INVITAMOS A NUESTRO PRESIDIUM A PONERSE DE PIE PARA PROCEDER A LA ENTREGA CORRESPONDIENTE.', 221, 1);
insert into Prize (Name, Block, Speech, Amount, EventID) values('DIPLOMA DE MAESTRO EMÉRITO', 1, 'Que se otorga a los profesores e investigadores que habiéndose retirado o jubilado, se hubieran distinguido por su relevante labor docente o de investigación en el Instituto y que hayan prestado sus servicios en éste cuando menos durante veinticinco años.

CON LA ANUENCIA DE NUESTRAS AUTORIDADES EN ESTE MOMENTO RECIBE TAL DISTINCIÓN...
', 1, 1);
insert into Prize (Name, Block, Speech, Amount, EventID) values('DIPLOMA DE MAESTRO DECANO', 1, 'Para elegir al candidato de esta distinción, se deberá considerar además de la antigüedad del maestro, su trayectoria y aportaciones realizadas al Instituto, se otorgará al profesor que haya sido electo decano por el Consejo Técnico Consultivo Escolar. Reciben esta distinción:', 4, 1);
insert into Prize (Name, Block, Speech, Amount, EventID) values('DIPLOMA A LA INVESTIGACIÓN', 1, 'Este diploma se otorga a aquellos profesores que se hayan destacado en el campo de la investigación científica y tecnológica, o bien por la realización de una obra científica que por su contenido haya obtenido arbitraje nacional o internacional.
Reciben esta distinción:', 1, 1);
insert into Prize (Name, Block, Speech, Amount, EventID) values('DIPLOMA A LA CULTURA', 1, 'El diploma a la cultura es para aquellos miembros de la comunidad politécnica, que hayan apoyado o destaquen en eventos culturales de relevancia nacional o internacional, recibe esta distinción:
Reciben esta distinción:', 2, 1);
insert into Prize (Name, Block, Speech, Amount, EventID) values('DIPLOMA AL DEPORTE', 1, 'Se otorga a aquellos integrantes de la comunidad politécnica que hayan sobresalido en eventos deportivos nacionales o internacionales auspiciados por el Instituto Politécnico Nacional, o en representación del mismo o del País, recibe este galardón:', 1, 1);

/* ======================================================
* =================    PlACES, SCHOOL && AREA     =======
* =======================================================
*/
insert into Place values('O1A000','Centro de Estudios Científicos y Tecnológicos 1 "Gonzálo Vázquez Vela"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1B000','Centro de Estudios Científicos y Tecnológicos 2 "Miguel Bernard"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1C000','Centro de Estudios Científicos y Tecnológicos 3 "Estanislao Ramírez Ruíz"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1D000','Centro de Estudios Científicos y Tecnológicos 4 "Lázaro Cárdenas"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1M000','Centro de Estudios Científicos y Tecnológicos 5 "Benito Juárez"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1K000','Centro de Estudios Científicos y Tecnológicos 6 "Miguel Othón de Mendizabal"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1E000','Centro de Estudios Científicos y Tecnológicos 7 "Cuauhtémoc"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1F000','Centro de Estudios Científicos y Tecnológicos 8 "Narciso Bassols"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1G000','Centro de Estudios Científicos y Tecnológicos 9 "Juan de Dios Bátiz"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1H000','Centro de Estudios Científicos y Tecnológicos 10 "Carlos Vallejo Márquez"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1I000','Centro de Estudios Científicos y Tecnológicos 11 "Wilfrido Massieu"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1N000','Centro de Estudios Científicos y Tecnológicos 12 "José María Morelos"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1O000','Centro de Estudios Científicos y Tecnológicos 13 "Ricardo Flores Magón"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1P000','Centro de Estudios Científicos y Tecnológicos 14 "Luis Enrique Erro"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1L000','Centro de Estudios Científicos y Tecnológicos 15 "Diódoro Antúnez Echegaray"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 "Hidalgo"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1R000','Centro de Estudios Científicos y Tecnológicos 17 "León, Guanajuato"', 'MEDIO SUPERIOR', 1);
insert into Place values('O1J000','Centro de Estudios Tecnológicos 1 "Walter Cross Buchanan"', 'MEDIO SUPERIOR', 1);
insert into Place values('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco', 'SUPERIOR', 1);
insert into Place values('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán', 'SUPERIOR', 1);
insert into Place values('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco', 'SUPERIOR', 1);
insert into Place values('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán', 'SUPERIOR', 1);
insert into Place values('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco', 'SUPERIOR', 1);
insert into Place values('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco', 'SUPERIOR', 1);
insert into Place values('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán', 'SUPERIOR', 1);
insert into Place values('O2H000','Escuela Superior de Ingeniería Textil', 'SUPERIOR', 1);
insert into Place values('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas', 'SUPERIOR', 1);
insert into Place values('O2J000','Escuela Superior de Física y Matemáticas', 'SUPERIOR', 1);
insert into Place values('O2K000','Escuela Superior de Computación', 'SUPERIOR', 1);
insert into Place values('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas', 'SUPERIOR', 1);
insert into Place values('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas', 'SUPERIOR', 1);
insert into Place values('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología', 'SUPERIOR', 1);
insert into Place values('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato', 'SUPERIOR', 1);
insert into Place values('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas', 'SUPERIOR', 1);
insert into Place values('O2P000','Escuela Nacional de Ciencias Biológicas', 'SUPERIOR', 1);
insert into Place values('O2Q000','Escuela Superior de Medicina', 'SUPERIOR', 1);
insert into Place values('O2O000','Escuela Nacional de Medicina y Homeopatía', 'SUPERIOR', 1);
insert into Place values('O2R000','Escuela Superior de Enfermería y Obstetricia', 'SUPERIOR', 1);
insert into Place values('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás', 'SUPERIOR', 1);
insert into Place values('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta', 'SUPERIOR', 1);
insert into Place values('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás', 'SUPERIOR', 1);
insert into Place values('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan', 'SUPERIOR', 1);
insert into Place values('O2W000','Escuela Superior de Economía', 'SUPERIOR', 1);
insert into Place values('O2X000','Escuela Superior de Turismo', 'SUPERIOR', 1);
insert into Place values('P0A000','Centro Interdisciplinario de Ciencias Marinas', 'POSGRADO', 1);
insert into Place values('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango', 'POSGRADO', 1);
insert into Place values('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca', 'POSGRADO', 1);
insert into Place values('P0L000','Centro de Investigación en Computación', 'POSGRADO', 1);
insert into Place values('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales', 'POSGRADO', 1);
insert into Place values('P0H000','Centro de Biotecnología Genómica', 'POSGRADO', 1);
insert into Place values('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria', 'POSGRADO', 1);
insert into Place values('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro', 'POSGRADO', 1);
insert into Place values('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira', 'POSGRADO', 1);
insert into Place values('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital', 'POSGRADO', 1);
insert into Place values('P0Q000','Centro de Investigación e Innovación Tecnológica', 'POSGRADO', 1);
insert into Place values('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo', 'POSGRADO', 1);
insert into Place values('P0T000','Centro de Nanociencias y Micro y Nanotecnologías', 'POSGRADO', 1);
insert into Place values('L10000','Dirección de Cómputo y Comunicaciones', 'ADMINISTRACIÓN', 1);
insert into Place values('R5D000','Centro de Educación Contínua Unidad Culiacán', 'CENTRO', 1);
insert into Place values('R5M000','Centro de Educación Contínua Unidad Durango', 'CENTRO', 1);
insert into Place values('R5E000','Centro de Educación Contínua Unidad Los Mochis', 'CENTRO', 1);
insert into Place values('R5K000','Centro de Educación Contínua Unidad Tijuana', 'CENTRO', 1);
insert into Place values('JA1000','Secretaría Particular de la Dirección General', 'AREA', 1);
insert into Place values('JD0000','Coordinación de Asesores', 'AREA', 1);
insert into Place values('J60000','Coordinación de Comunicación Social', 'AREA', 1);
insert into Place values('JE0000','Defensoría de los Derechos Politécnicos', 'AREA', 1);
insert into Place values('XXXXXX','Coordinación Politécnica para la Sustentabilidad', 'AREA', 1);
insert into Place values('N00000','Secretaría General', 'AREA', 1);
insert into Place values('O00000','Secretaría Académica', 'AREA', 1);
insert into Place values('O10000','Dirección de Educación Media Superior', 'AREA', 1);
insert into Place values('R40000','Dirección de Publicaciones', 'AREA', 1);
insert into Place values('Q00000','Secretaría de Servicios Educativos', 'AREA', 1);
insert into Place values('Q30000','Dirección de Bibliotecas', 'AREA', 1);
insert into Place values('Q10000','Dirección de Administración Escolar', 'AREA', 1);
insert into Place values('Q50000','Dirección de Desarrollo y Fomento Deportivo', 'AREA', 1);
insert into Place values('Q40000','Dirección de Difusión y Fomento a la Cultura', 'AREA', 1);
insert into Place values('S30000','Dirección de Evaluación', 'AREA', 1);
insert into Place values('T40000','Dirección de Gestión del Capital Humano', 'AREA', 1);
insert into Place values('T50000','Dirección de Recursos Financieros', 'AREA', 1);
insert into Place values('T60000','Dirección de Recursos Materiales y Servicios', 'AREA', 1);
insert into Place values('K00000','Oficina del Abogado General', 'AREA', 1);
insert into Place values('K20000','Dirección de Normatividad, Consulta y Dictaminación ', 'AREA', 1);
insert into Place values('K10000','Dirección de Asuntos Jurídicos', 'AREA', 1);
insert into Place values('L00000','Coordinación General de Servicios Informáticos', 'AREA', 1);
insert into Place values('O0A000','Coordinación General de Formación e Innovación Educativa', 'AREA', 1);
insert into Place values('R0F000','Unidad Politécnica para el Desarrollo y la Competitividad Empresarial', 'AREA', 1);
insert into Place values('T63000','Coordinación de Centros de Desarrollo Infantil', 'AREA', 1);
insert into Place values('T63020','Centro de Desarrollo Infantil "Amalia Solórzano de Cárdenas"', 'CENTRO', 1);
insert into Place values('T63040','Centro de Desarrollo Infantil "Clementina Batalla de Bassols"', 'CENTRO', 1);
insert into Place values('T63010','Centro de Desarrollo Infantil "Laura Pérez de Bátiz"', 'CENTRO', 1);
insert into Place values('T63050','Centro de Desarrollo Infantil "Margarita Salazar de Erro"', 'CENTRO', 1);

/* ======================================================
* =================    GUESTS     =======================
* =======================================================
*/
insert into guest values('HEMP610409','Patricia', 'Hernández', 'Monsalvo', null,'O1A000');
insert into guest values('GARV801005','Viridiana Karina', 'García', 'Romero', null,'O1A000');
insert into guest values('GUSV811105','María Vianey', 'Gudiño', 'Sánchez', null,'O1A000');
insert into guest values('SADV700522','Víctor Manuel', 'Salas', 'Domínguez', null,'O1B000');
insert into guest values('SAMJ740319','Josefina', 'Sánchez', 'Monroy', null,'O1B000');
insert into guest values('EAGC770416','Carolina', 'Estrada', 'García', null,'O1B000');
insert into guest values('CABM811007','Mariana Elizabeth', 'Chávez', 'Benítez', null,'O1C000');
insert into guest values('JIMA610709','Alejandra', 'Jiménez', 'Méndez', null,'O1C000');
insert into guest values('ROCL700110','José Luis Tonatihu', 'Rojas', 'Castro', null,'O1C000');
insert into guest values('MASC731120', 'Carolina', 'Mares', 'Sandoval', null,'O1D000');
insert into guest values('BOMJ600427', 'Jesús Roberto', 'Bolivar', 'Meza', null,'O1D000');
insert into guest values('LOFT610501', 'María Teresa', 'López', 'Flores', null,'O1D000');
insert into guest values('CACJ620311', 'María Josefina', 'Campos', 'Cano', null,'O1M000');
insert into guest values('SIGG840712', 'Gustavo Rodolfo', 'Shields', 'García', null,'O1M000');
insert into guest values('GUHE740114', 'Erika', 'Gutiérrez', 'Hernández', null,'O1M000');
insert into guest values('GARJ640319', 'Juan José', 'García', 'Rivera', null,'O1K000');
insert into guest values('SACC820315', 'Catalina', 'Sánchez', 'Castillo', null,'O1K000');
insert into guest values('RUBM600910', 'María Margarita', 'Ruíz', 'Badillo', null,'O1K000');
insert into guest values('PESL790811', 'María de Lourdes', 'Peregrino', 'Sánchez', null,'O1E000');
insert into guest values('CICM700907', 'María Mireya', 'Cristino', 'Castillo', null,'O1E000');
insert into guest values('NEEL730512', 'Laura Alicia', 'Neyra', 'Estrada', null,'O1E000');
insert into guest values('OELE810505', 'Edgar Josué', 'Ojeda', 'Layseca', null,'O1F000');
insert into guest values('BUAI920831', 'Ismael', 'Bruno', 'Arellano', null,'O1F000');
insert into guest values('NAMJ870131', 'Joaquín Alejandro', 'Nares', 'Miller', null,'O1F000');
insert into guest values('SUCA511123', 'Armando', 'Suárez', 'Caudillo', null,'O1G000');
insert into guest values('MOMA530924', 'Alfonso', 'Morales', 'Martínez', null,'O1G000');
insert into guest values('MORA640123', 'Arturo', 'Moreno', 'Reyes', null,'O1G000');
insert into guest values('PAGC570307', 'Clotilde', 'Prado', 'García', null,'O1H000');
insert into guest values('TOPE551216', 'María Eugenia', 'Tome', 'Pérez', null,'O1H000');
insert into guest values('MAIU850513', 'Uriel', 'Martínez', 'Islas', null,'O1I000');
insert into guest values('SAME770202', 'María Esther', 'Sánchez', 'Marín', null,'O1I000');
insert into guest values('BEMG581122', 'Gerardo', 'Bernal', 'Méndez', null,'O1I000');
insert into guest values('AISL760127', 'Lizeth', 'Avilés', 'Sánchez', null,'O1N000');
insert into guest values('ROLP651211', 'Pedro', 'Rodríguez', 'Luevano', null,'O1N000');
insert into guest values('GUDE820907', 'Edgar René', 'Guzmán', 'Delgado', null,'O1N000');
insert into guest values('CAAG560830', 'Guadencio', 'Camacho', 'Alvarado', null,'O1O000');
insert into guest values('OUFA850727', 'Andrea Patricia', 'Olguín', 'Ferreira', null,'O1O000');
insert into guest values('RALT520821', 'María Teresa', 'Ramírez', 'Landeros', null,'O1O000');
insert into guest values('AAMA580502', 'José Antonio', 'Andrade', 'Morales', null,'O1P000');
insert into guest values('REIH830819', 'Héctor Yair', 'Reyes', 'Izquierdo', null,'O1P000');
insert into guest values('AAAC670607', 'Celia', 'Ayala', 'Arellano', null,'O1P000');
insert into guest values('AAMJ550319', 'José Juan', 'Aljama', 'Moral', null,'O1L000');
insert into guest values('CAFJ811202', 'Janet', 'Cadena', 'Flores', null,'O1L000');
insert into guest values('RORE650831', 'Evangelina', 'Rojas', 'Rodríguez', null,'O1L000');
insert into guest values('SILL681102', 'Luis Enrique', 'Sigler', 'Licona', null,'O1R000');
insert into guest values('BEHM730706', 'Ma. Guadalupe del Carmen', 'Belmonte', 'Hernández', null,'O1R000');
insert into guest values('CUPS631212', 'Sonia Elizabeth', 'Cruz', 'Pérez', null,'O1J000');
insert into guest values('ROAJ530902', 'Juan', 'Romero', 'Amaya', null,'O1J000');
insert into guest values('RORR590111', 'Rocío', 'Rodas', 'Ruíz', null,'O1J000');

insert into guest (Name, FirstSurname, SecondSurname, rfc, email, PlaceID) values 
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
insert into guest (Name, FirstSurname, SecondSurname, rfc, email, PlaceID) values 
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
/* ======================================================
* =================    GUEST'S PRIZE     ================
* =======================================================
*/
insert into guestprize values('TOOG450118', 2);
insert into guestprize values('CADR791106', 3);
insert into guestprize values('BASR381220', 3);
insert into guestprize values('GOHL460918', 3);
insert into guestprize values('JAVD540613', 3);
insert into guestprize values('PETS750209', 4);
insert into guestprize values('RABP720605', 5);
insert into guestprize values('MEER810505', 5);
insert into guestprize values('SISD970602', 6);
insert into guestprize values
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

/* ======================================================
* =================    EVENT'S GUEST     ================
* =======================================================
*/
insert into guestevent (rfc, number, eventid) values('HEMP610409', 1, 1);
insert into guestevent (rfc, number, eventid) values('GARV801005', 2, 1);
insert into guestevent (rfc, number, eventid) values('GUSV811105', 3, 1);
insert into guestevent (rfc, number, eventid) values('SADV700522', 4, 1);
insert into guestevent (rfc, number, eventid) values('SAMJ740319', 5, 1);
insert into guestevent (rfc, number, eventid) values('EAGC770416', 6, 1);
insert into guestevent (rfc, number, eventid) values('CABM811007', 7, 1);
insert into guestevent (rfc, number, eventid) values('JIMA610709', 8, 1);
insert into guestevent (rfc, number, eventid) values('ROCL700110', 9, 1);
insert into guestevent (rfc, number, eventid) values('MASC731120', 10, 1); 
insert into guestevent (rfc, number, eventid) values('BOMJ600427', 11, 1); 
insert into guestevent (rfc, number, eventid) values('LOFT610501', 12, 1); 
insert into guestevent (rfc, number, eventid) values('CACJ620311', 13, 1); 
insert into guestevent (rfc, number, eventid) values('SIGG840712', 14, 1); 
insert into guestevent (rfc, number, eventid) values('GUHE740114', 15, 1); 
insert into guestevent (rfc, number, eventid) values('GARJ640319', 16, 1); 
insert into guestevent (rfc, number, eventid) values('SACC820315', 17, 1); 
insert into guestevent (rfc, number, eventid) values('RUBM600910', 18, 1); 
insert into guestevent (rfc, number, eventid) values('PESL790811', 19, 1); 
insert into guestevent (rfc, number, eventid) values('CICM700907', 20, 1); 
insert into guestevent (rfc, number, eventid) values('NEEL730512', 21, 1); 
insert into guestevent (rfc, number, eventid) values('OELE810505', 22, 1); 
insert into guestevent (rfc, number, eventid) values('BUAI920831', 23, 1); 
insert into guestevent (rfc, number, eventid) values('NAMJ870131', 24, 1); 
insert into guestevent (rfc, number, eventid) values('SUCA511123', 25, 1); 
insert into guestevent (rfc, number, eventid) values('MOMA530924', 26, 1);
insert into guestevent (rfc, number, eventid) values('MORA640123', 27, 1); 
insert into guestevent (rfc, number, eventid) values('PAGC570307', 28, 1); 
insert into guestevent (rfc, number, eventid) values('TOPE551216', 29, 1); 
insert into guestevent (rfc, number, eventid) values('MAIU850513', 30, 1); 
insert into guestevent (rfc, number, eventid) values('SAME770202', 31, 1); 
insert into guestevent (rfc, number, eventid) values('BEMG581122', 32, 1); 
insert into guestevent (rfc, number, eventid) values('AISL760127', 33, 1); 
insert into guestevent (rfc, number, eventid) values('ROLP651211', 34, 1); 
insert into guestevent (rfc, number, eventid) values('GUDE820907', 35, 1); 
insert into guestevent (rfc, number, eventid) values('CAAG560830', 36, 1); 
insert into guestevent (rfc, number, eventid) values('OUFA850727', 37, 1); 
insert into guestevent (rfc, number, eventid) values('RALT520821', 38, 1); 
insert into guestevent (rfc, number, eventid) values('AAMA580502', 39, 1); 
insert into guestevent (rfc, number, eventid) values('REIH830819', 40, 1); 
insert into guestevent (rfc, number, eventid) values('AAAC670607', 41, 1); 
insert into guestevent (rfc, number, eventid) values('AAMJ550319', 42, 1); 
insert into guestevent (rfc, number, eventid) values('CAFJ811202', 43, 1); 
insert into guestevent (rfc, number, eventid) values('RORE650831', 44, 1); 
insert into guestevent (rfc, number, eventid) values('SILL681102', 45, 1); 
insert into guestevent (rfc, number, eventid) values('BEHM730706', 46, 1); 
insert into guestevent (rfc, number, eventid) values('CUPS631212', 47, 1); 
insert into guestevent (rfc, number, eventid) values('ROAJ530902', 48, 1); 
insert into guestevent (rfc, number, eventid) values('RORR590111', 49, 1);
insert into guestevent (number, rfc, eventid) values
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

UPDATE guestevent SET guestevent.assistance = 0, guestevent.confirmation = 0;

