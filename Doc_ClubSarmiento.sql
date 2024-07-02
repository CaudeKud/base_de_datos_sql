-- Crear la base de datos ClubSarmiento
CREATE DATABASE ClubSarmiento3f;

-- Usar la base DDBB ClubSarmiento
USE ClubSarmiento3f;

-- Crear tabla de CategoriaDeportes
CREATE TABLE IF NOT EXISTS CategoriaDeportes (
    CategoriaID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100)NOT NULL,
    Descripcion VARCHAR(255),
    FechaAltaCategoria DATE NOT NULL,
    FechaBajaCategoria DATE
);

-- Crear tabla de Socios
CREATE TABLE IF NOT EXISTS Socios (
    SocioID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    FechaNacimiento DATE,
    Edad INT,
    DNI DECIMAL(10,0) UNIQUE NOT NULL,
    Telefono DECIMAL(10,0),
    Direccion VARCHAR(200),
    Mail VARCHAR(100),
    Foto VARCHAR(100), -- Deberia ser un link al recurso donde tengamos la foto
    ContactoFamiliar VARCHAR(100), -- Nombre de Fliar/Tutor/Encargado
    TelefonoFamiliar NUMERIC(10,0), -- Tel del contacto de Emergencia 
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES CategoriaDeportes(CategoriaID)
);


-- Crear tabla de Disciplinas
CREATE TABLE IF NOT EXISTS Disciplinas (
    DisciplinaID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100)NOT NULL,
    Descripcion VARCHAR(255),
    FechaAltaDisciplina DATE,
    FechaBajaDisciplina DATE
);

-- Crear tabla de Inscripciones
CREATE TABLE IF NOT EXISTS Inscripciones (
    InscripcionID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SocioID INT,
    ActividadID INT,
    FechaInscripcion DATE,
    FOREIGN KEY (SocioID) REFERENCES Socios(SocioID),
    FOREIGN KEY (ActividadID) REFERENCES Disciplinas(DisciplinaID)
);

-- Crear tabla de CategoriaSocios
CREATE TABLE IF NOT EXISTS CategoriaSocios (
    CategoriaSociosID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CategoriaDeportesID INT,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255),
    FechaCreacionCategoria DATE,
    FechaBajaCategoria DATE,
    FOREIGN KEY (CategoriaDeportesID) REFERENCES CategoriaDeportes(CategoriaID)
);

-- Crear tabla de Pagos
CREATE TABLE IF NOT EXISTS Pagos (
    PagoID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SocioID INT,
    Monto DECIMAL(10, 2),
    FechaPago DATE,
    FOREIGN KEY (SocioID) REFERENCES Socios(SocioID)
);

SET SQL_SAFE_UPDATES = 0;

-- Tabla categoriadeportes

INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (1,'Fútbol','Infantil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (2,'Fútbol','Juveniles','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (3,'Fútbol','Primera','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (4,'Baloncesto','Infantil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (5,'Baloncesto','Juvenil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (6,'Baloncesto','Primera','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (7,'Baloncesto','Maxi','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (8,'Natación','Libre','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (9,'Handball','Infantil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (10,'Handball','Juvenil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (11,'Handball','Primera','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (12,'Volley','Juvenil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (13,'Volley','Primera','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (14,'Tenis','Infantil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (15,'Tenis','Juvenil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (16,'Paddle','Libre','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (17,'Boxeo','Juvenil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (18,'Boxeo','Amateur','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (19,'Boxeo','Federado','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (20,'Patin','Infantil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (21,'Patin','Juvenil','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (22,'Patin','Libre','2024-05-20',NULL);
INSERT INTO categoriadeportes (`CategoriaID`,`Nombre`,`Descripcion`,`FechaAltaCategoria`,`FechaBajaCategoria`) VALUES (23,'Ping Pong','Libre','2024-05-20',NULL);

-- Tabla socios
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (11912,'Kamila','Lamas','1971-05-20',48,9019555966,5413246367,'465 Ronald Regan Way','klamasi@hao123.com','','Kamila Lamas',6839385457,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (24953,'Krysta','Olivas','1968-03-01',29,4111641943,5004197233,'726 Texas Crossing','kolivas2q@rakuten.co.jp','','Krysta Olivas',7672919365,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (26462,'Thornie','Leathwood','1952-10-13',74,1894218071,3015698564,'49 Farragut Court','tleathwood2y@csmonitor.com','','Thornie Leathwood',5103369584,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (39344,'Morty','Sweed','1922-09-04',78,8263381271,5078692219,'205 Lukken Way','msweed13@hc360.com','','Morty Sweed',1407494645,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (45986,'Miner','Maynard','1942-03-13',55,6728708926,6153429047,'1638 Cottonwood Drive','mmaynard2u@nydailynews.com','','Miner Maynard',2685744830,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (54436,'Sher','Dislee','1904-12-28',74,5146782387,1733899550,'747 Welch Hill','sdislee45@addthis.com','','Sher Dislee',6548344152,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (55769,'Aldon','De Ruel','1972-01-12',50,8422804135,7065019643,'4205 Boyd Lane','ade16@wunderground.com','','Aldon De Ruel',5447306695,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (61259,'Ealasaid','Zupa','1926-03-11',33,3634439998,9889845126,'96 Rieder Place','ezupa41@google.es','','Ealasaid Zupa',3328758225,12);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (62731,'Sella','Minear','1902-04-22',75,4996770494,3476780505,'8948 Butternut Junction','sminear24@mozilla.org','','Sella Minear',4417571299,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (68560,'Giustina','Garbert','1941-12-28',6,9371646797,1657897488,'6980 Sage Junction','ggarbert2b@about.me','','Giustina Garbert',8543484197,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (69966,'Myer','Barefoot','1923-11-21',28,6767362861,6866486642,'6 Mesta Place','mbarefoot5a@chronoengine.com','','Myer Barefoot',6203084403,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (72690,'Dulci','Chace','1939-10-11',53,2691711150,3064564411,'28019 Porter Street','dchacez@cnn.com','','Dulci Chace',2984282126,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (75968,'Sheppard','Bertomieu','1935-09-15',21,1773677856,7725902156,'728 Chive Avenue','sbertomieu5g@berkeley.edu','','Sheppard Bertomieu',4692104222,15);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (80565,'Daphna','Nixon','1907-08-20',9,5121155940,8017745257,'0751 Nelson Junction','dnixon50@census.gov','','Daphna Nixon',2159990475,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (81562,'Querida','Rraundl','1909-08-10',46,9003702973,5229074030,'9 Arrowood Junction','qrraundl5e@census.gov','','Querida Rraundl',4408569268,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (81746,'Robinette','Leverett','1937-04-20',55,4376236586,6181520300,'1 Manitowish Junction','rleverett4i@yahoo.com','','Robinette Leverett',9342577736,15);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (92346,'Ad','McDonnell','1922-02-04',25,8348841633,4968279237,'29265 Anhalt Avenue','amcdonnell1e@pcworld.com','','Ad McDonnell',1328438766,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (96331,'Norina','Doumerque','1900-07-22',69,7423325551,5085208199,'5828 Northfield Pass','ndoumerque3y@un.org','','Norina Doumerque',6808850629,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (98659,'Townsend','Leaman','1976-09-12',45,8115054168,5617713091,'18 Grayhawk Avenue','tleaman3u@msu.edu','','Townsend Leaman',6919858925,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (99569,'Jacques','Oxford','1974-08-20',75,2517294643,5813933226,'47037 Dwight Court','joxford4b@businessweek.com','','Jacques Oxford',4899687918,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (104862,'Ashton','Petrashov','1928-12-22',73,5911554074,8247324787,'0 2nd Crossing','apetrashov46@webmd.com','','Ashton Petrashov',5234116066,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (105237,'Raquela','Whal','1909-04-17',20,8734079330,4195596030,'178 Village Center','rwhala@about.com','','Raquela Whal',1849701968,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (107270,'Reinaldos','Lorans','1955-12-16',80,3716876410,8175258541,'95 Jana Parkway','rloransp@hhs.gov','','Reinaldos Lorans',9513351023,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (107459,'Jordan','Carlyle','1900-06-04',57,1748928002,3057471033,'890 Monterey Drive','jcarlyle4y@msu.edu','','Jordan Carlyle',1171670564,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (113813,'Orelia','Cruess','1931-09-11',72,8297793384,4722959223,'5 Lyons Avenue','ocruess47@goodreads.com','','Orelia Cruess',7722854206,12);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (116182,'Kaela','Pinnick','1920-03-02',75,1721437199,8903481616,'30949 Vernon Avenue','kpinnick2j@walmart.com','','Kaela Pinnick',3449220110,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (120050,'Dawn','Gervaise','1934-01-27',62,9621584820,6969752598,'56 Lakewood Gardens Avenue','dgervaise2x@goo.ne.jp','','Dawn Gervaise',9066419852,12);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (124567,'Bradney','Jewise','1937-07-26',42,1004517005,3479539958,'3452 Bellgrove Street','bjewise3m@xinhuanet.com','','Bradney Jewise',6567595072,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (135114,'Alfonso','Coghlan','1948-12-29',69,6931667208,1792862050,'3532 Bunting Way','acoghlan58@theatlantic.com','','Alfonso Coghlan',7954676730,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (136924,'Guss','Dumphries','1925-12-22',40,7534731768,7681868819,'6077 Pond Crossing','gdumphries2g@istockphoto.com','','Guss Dumphries',4553756079,15);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (148413,'Clari','Bakewell','1972-06-28',18,5406941377,7962395053,'1663 Stephen Hill','cbakewell1t@issuu.com','','Clari Bakewell',5103886971,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (159674,'Pascal','MacRonald','1922-06-24',43,9103566147,2924025057,'81168 Oak Valley Pass','pmacronald4f@army.mil','','Pascal MacRonald',7093779947,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (164510,'Merrilee','Ivchenko','1937-08-25',21,5981940018,5907137743,'49 Cascade Hill','mivchenkom@newsvine.com','','Merrilee Ivchenko',7665482229,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (165125,'Granville','Drohun','1957-11-06',5,3731533483,7678131120,'319 Havey Parkway','gdrohun4w@ucsd.edu','','Granville Drohun',1974949853,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (166266,'Tammy','McCoy','1919-02-05',34,6306180527,7059303335,'46 Lunder Drive','tmccoy1r@webeden.co.uk','','Tammy McCoy',1731953997,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (170232,'Kinsley','McMenamy','1969-10-18',42,8087805910,9343172221,'9 Waxwing Drive','kmcmenamy4e@utexas.edu','','Kinsley McMenamy',3311111563,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (172205,'Sherry','Chestney','1909-11-14',22,3841268721,4068676654,'4 Alpine Street','schestney10@columbia.edu','','Sherry Chestney',5044192996,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (177849,'Keely','Chessun','1952-09-08',41,5839173243,6447272752,'50607 Montana Place','kchessun2c@sourceforge.net','','Keely Chessun',4499139599,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (180351,'Norbie','Slateford','1948-08-19',12,3796964899,5653164306,'3392 Annamark Plaza','nslateford1x@merriam-webster.com','','Norbie Slateford',8783359613,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (182215,'Sancho','Grewe','1914-05-17',7,7881621314,5343276479,'7 Oakridge Junction','sgrewe2v@imdb.com','','Sancho Grewe',1793078206,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (182648,'Benjamen','Costard','1945-03-16',18,9044520082,2168849744,'43608 Susan Place','bcostard5f@jugem.jp','','Benjamen Costard',6584152199,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (189403,'Andre','Dudeney','1958-11-22',63,9988074245,3975954107,'3 Algoma Alley','adudeney2s@epa.gov','','Andre Dudeney',5954912511,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (189985,'Sara','Furmenger','1964-06-10',68,3609750878,1281977124,'4744 Dunning Drive','sfurmenger3r@google.it','','Sara Furmenger',3833090584,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (196188,'Buckie','Carbin','1949-01-29',56,2122775770,5666263948,'832 Knutson Park','bcarbin3p@netvibes.com','','Buckie Carbin',3685510733,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (197099,'Cookie','Pettwood','1971-10-14',9,9318240349,5679719948,'688 Oriole Park','cpettwood6@nba.com','','Cookie Pettwood',1145717181,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (203710,'Lilian','Keson','1940-11-06',78,9849595271,3462010457,'1933 Warner Place','lkeson3w@google.com.hk','','Lilian Keson',1229912432,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (204878,'Edin','Blackbourn','1914-03-17',50,7173159627,6141840639,'02 Hudson Court','eblackbourn56@jigsy.com','','Edin Blackbourn',9842905271,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (215626,'Belvia','Cromley','1951-05-25',24,6793625561,9515819168,'512 Center Junction','bcromley32@edublogs.org','','Belvia Cromley',8211476473,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (217173,'Vincents','Haslin','1966-11-05',58,6389380998,1522127352,'1002 Katie Street','vhaslin4c@hibu.com','','Vincents Haslin',2249195130,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (221214,'Jewel','Morando','1936-11-27',67,3424542273,9336005820,'09576 Moland Crossing','jmorando14@jiathis.com','','Jewel Morando',9631866037,12);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (227324,'Saree','Iddy','1915-06-27',27,9715267911,5594951500,'61078 Katie Way','siddy2l@wisc.edu','','Saree Iddy',4092966097,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (233381,'Elyse','Bonwick','1927-11-01',68,5923014742,1721727897,'0 Mockingbird Place','ebonwick12@vk.com','','Elyse Bonwick',4751266415,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (234867,'Mallorie','Kliche','1913-10-30',75,8384663446,8661988995,'3685 Calypso Street','mkliche4a@cpanel.net','','Mallorie Kliche',7018608709,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (237448,'Clemmie','Rowell','1905-02-03',53,2031317822,6787207738,'64111 Valley Edge Crossing','crowell1a@tamu.edu','','Clemmie Rowell',2572579301,15);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (246454,'Ransom','Boak','1936-04-23',59,8032538727,9162345317,'7137 Hollow Ridge Drive','rboak18@uiuc.edu','','Ransom Boak',8583668929,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (251881,'Bernice','Gherarducci','1976-08-03',68,6001048635,9953378273,'4329 Mccormick Pass','bgherarducci54@nih.gov','','Bernice Gherarducci',2294996738,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (266046,'Martino','Loveard','1937-11-28',21,4102819687,2338895003,'469 Basil Street','mloveard22@home.pl','','Martino Loveard',3927662323,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (267594,'Hendrick','Mollitt','1955-08-07',50,9701300687,2444564986,'44778 Maryland Point','hmollitt1c@blogger.com','','Hendrick Mollitt',7718567572,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (278605,'Debora','Nice','1903-11-20',9,4405650127,9965107848,'145 Graedel Lane','dnice1q@si.edu','','Debora Nice',1408243707,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (283287,'Adel','Duckerin','1947-10-01',62,3951637386,7344313979,'7 Harbort Parkway','aduckerin3l@vk.com','','Adel Duckerin',9326515828,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (287205,'Phedra','Reddy','1964-12-03',27,3868729741,9617064792,'09 Veith Place','preddy42@npr.org','','Phedra Reddy',7664840656,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (294792,'Allayne','Pendlenton','1937-06-27',46,8666183848,6757108889,'67815 Jana Place','apendlenton59@rambler.ru','','Allayne Pendlenton',3046796285,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (299869,'Aguste','Folliss','1962-03-23',80,6649510696,5521712850,'128 Waxwing Point','afolliss51@pen.io','','Aguste Folliss',5152195307,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (307955,'Chalmers','Giblin','1969-12-27',12,2674497020,7126414595,'90 Birchwood Center','cgiblinu@hostgator.com','','Chalmers Giblin',9525981228,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (323239,'Osbourne','Heape','1943-11-08',27,5296670181,2723725494,'0 Melby Plaza','oheapef@sbwire.com','','Osbourne Heape',8564855681,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (328078,'Vonnie','Benfell','1925-10-04',58,6112014875,5107498295,'899 Lunder Alley','vbenfell2m@flickr.com','','Vonnie Benfell',7342251721,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (332953,'Chevy','Melly','1972-02-20',75,4719957903,3292524900,'615 Forest Dale Court','cmelly25@senate.gov','','Chevy Melly',1116462389,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (338065,'Karlotta','Teresse','1978-11-07',41,7917919148,7839338546,'580 Dakota Street','kteresse1w@fda.gov','','Karlotta Teresse',2079586751,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (341500,'Cameron','Durning','1914-11-20',33,1271138566,5993170845,'1 Buhler Road','cdurning4p@nih.gov','','Cameron Durning',4939855931,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (345753,'Cris','Lysaght','1959-06-06',15,4975498590,9838711324,'4 Spenser Place','clysaght5h@intel.com','','Cris Lysaght',5052192653,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (352670,'Gisela','Stanney','1933-04-27',10,7579863044,6843143142,'505 Orin Junction','gstanney0@sakura.ne.jp','','Gisela Stanney',4868237811,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (353213,'Jessalin','Grayston','1969-12-27',7,8234733371,7624784393,'2800 Fordem Lane','jgrayston29@cmu.edu','','Jessalin Grayston',1439150478,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (359232,'Mannie','Raistrick','1971-10-30',9,3839648755,2336615555,'20399 Burning Wood Pass','mraistrick52@xing.com','','Mannie Raistrick',5907243914,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (359750,'Dee','Hewins','1914-01-20',80,3371202132,2835970446,'50685 Thackeray Alley','dhewins53@ucla.edu','','Dee Hewins',7001765799,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (362852,'Enos','Morot','1952-03-18',57,6295867013,6374241795,'66212 Bultman Plaza','emorot2o@huffingtonpost.com','','Enos Morot',7481196153,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (380007,'Rey','Myderscough','1911-09-10',27,6267056708,6878703131,'8237 Summer Ridge Parkway','rmyderscough4n@exblog.jp','','Rey Myderscough',5426986277,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (380830,'Drake','MacDougall','1971-05-22',15,3313189917,6293193051,'331 Kings Parkway','dmacdougall4h@imgur.com','','Drake MacDougall',7231451054,12);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (385188,'Cori','Lineen','1924-11-12',31,4482208699,3405427554,'3428 Rockefeller Center','clineen4u@hatena.ne.jp','','Cori Lineen',7159427406,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (398582,'Keefe','Dorward','1959-11-13',10,9768889319,3914395332,'046 Fairfield Avenue','kdorward1m@reuters.com','','Keefe Dorward',7552296522,18);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (407964,'Westleigh','Rubury','1949-01-22',40,9555610639,1355003097,'0 Fremont Drive','wrubury55@springer.com','','Westleigh Rubury',6692057349,18);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (411885,'Arly','Soreau','1905-01-04',75,2258851613,9727069093,'344 Claremont Pass','asoreau44@prlog.org','','Arly Soreau',9137471246,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (412223,'Adrianna','Le Estut','1956-03-09',65,5091844828,5817271147,'2 Twin Pines Court','ale38@lycos.com','','Adrianna Le Estut',3328959754,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (412465,'Federico','Hurn','1951-07-28',54,7965457308,2092269078,'26 Manufacturers Court','fhurn23@scribd.com','','Federico Hurn',6489186355,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (419464,'Pandora','Astill','1928-07-27',50,6846722437,1733044837,'70407 Upham Crossing','pastill1p@biglobe.ne.jp','','Pandora Astill',6588153974,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (425591,'Federico','Kuzemka','1910-02-09',59,5195941441,7599395417,'5322 Lawn Avenue','fkuzemka2f@loc.gov','','Federico Kuzemka',4458362834,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (426712,'Galvan','Linzee','1909-05-16',66,8197475232,3708059673,'61 Talisman Avenue','glinzee3e@ocn.ne.jp','','Galvan Linzee',8992025930,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (428542,'Darb','Kettlesting','1946-01-29',57,2911985514,6043617653,'801 Algoma Pass','dkettlesting26@howstuffworks.com','','Darb Kettlesting',7498070350,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (434057,'Sibilla','Kidston','1914-02-03',52,9325861353,9419283939,'1 Lakewood Drive','skidston3k@stumbleupon.com','','Sibilla Kidston',6653574393,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (442812,'Garik','Carlos','1907-08-21',20,7714762516,1777812518,'6445 Summit Court','gcarlos4@hhs.gov','','Garik Carlos',3873633872,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (444215,'Star','Bohan','1909-08-21',53,9448600804,5944592828,'2172 Algoma Terrace','sbohan3x@indiatimes.com','','Star Bohan',1289761827,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (445992,'Isaak','Donahue','1938-08-17',7,1806039901,2247776623,'7 Vernon Place','idonahue2h@google.it','','Isaak Donahue',7122933036,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (458729,'Tammie','Whymark','1927-06-20',59,3127944115,9309592947,'01434 Maywood Hill','twhymark1z@imageshack.us','','Tammie Whymark',7772420608,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (462922,'Ernesto','Cutriss','1949-05-07',24,9023479829,1677086572,'64091 Boyd Parkway','ecutrissq@kickstarter.com','','Ernesto Cutriss',2795394698,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (465515,'Faydra','Askham','1965-10-04',76,6669279547,7022394397,'9 Golf Course Pass','faskhamk@bandcamp.com','','Faydra Askham',2357713510,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (471015,'Kizzee','April','1927-03-05',69,8054995321,6283761406,'9 Hovde Plaza','kaprils@cnet.com','','Kizzee April',5121028605,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (471413,'Fax','Massinger','1976-11-09',65,9243140000,6643718356,'40973 Hayes Street','fmassinger3@qq.com','','Fax Massinger',9887809966,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (481772,'Dane','Skillern','1944-01-08',62,8109838428,7292525991,'3 Dunning Avenue','dskillern1l@columbia.edu','','Dane Skillern',7962288009,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (500242,'Clarie','Lett','1967-05-28',33,5576700079,3348443260,'373 Arkansas Center','clett3o@about.me','','Clarie Lett',1007263350,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (507207,'Kial','Compton','1929-12-26',6,4513217440,7879437343,'3927 Portage Hill','kcompton2k@github.io','','Kial Compton',4048195333,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (510510,'Ddene','Vost','1917-11-03',75,4374689247,8479486222,'764 Corscot Parkway','dvost4x@usda.gov','','Ddene Vost',2603424930,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (510872,'Bessie','McPharlain','1905-06-06',59,6168718018,7808631360,'3 Fordem Junction','bmcpharlain5i@cyberchimps.com','','Bessie McPharlain',2001489847,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (513737,'Willette','Fleay','1932-09-17',70,7507996327,9557161719,'4236 Roxbury Junction','wfleay4r@narod.ru','','Willette Fleay',7328963630,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (518451,'Miller','Wollaston','1971-01-28',26,5074259710,5571507212,'1880 Hoepker Junction','mwollaston3z@ow.ly','','Miller Wollaston',1291164631,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (524119,'Nady','Brydone','1956-04-17',67,7179406802,5123699323,'99141 Golden Leaf Parkway','nbrydone9@jiathis.com','','Nady Brydone',7054607893,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (525414,'Netty','Fendlen','1903-01-20',67,2072800013,8822057616,'475 Goodland Point','nfendlen4d@ehow.com','','Netty Fendlen',4302826012,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (531953,'Christina','Becraft','1953-04-27',21,7923738468,3293519622,'90 Forest Run Center','cbecraft1j@aboutads.info','','Christina Becraft',4663992998,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (544453,'Moises','Karpets','1940-12-19',62,2925639554,4298906574,'1 Gateway Pass','mkarpets3a@imgur.com','','Moises Karpets',1467783457,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (546804,'Rogers','Robens','1914-08-08',73,5703294513,7937979226,'04 Farmco Park','rrobensw@pbs.org','','Rogers Robens',9902876393,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (549910,'Cele','Kadd','1903-06-03',72,3209679266,5677208640,'60 Prentice Park','ckadd2@t-online.de','','Cele Kadd',4716166835,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (550958,'Tammi','Keiling','1908-04-13',47,8515588911,6809948781,'21672 Monument Way','tkeiling1k@ifeng.com','','Tammi Keiling',6689641555,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (571616,'Melvin','Ebden','1973-06-01',48,2457820073,9949741670,'51478 Ilene Circle','mebden3f@seesaa.net','','Melvin Ebden',4695425335,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (576813,'Arvy','Spino','1936-02-12',28,2486321991,4365918072,'636 Veith Street','aspino3t@wikia.com','','Arvy Spino',1213047780,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (578644,'Drud','Szimoni','1950-05-06',68,4062818975,9544244961,'0 Waywood Trail','dszimoni2i@bloglines.com','','Drud Szimoni',9451922760,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (583177,'Bartolemo','Sandercock','1931-03-25',10,8777706435,6362681668,'33058 Fuller Avenue','bsandercock4t@psu.edu','','Bartolemo Sandercock',7001990812,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (589733,'Valina','Mellings','1974-01-13',42,1321000852,3077565912,'36 Talisman Street','vmellingsv@yolasite.com','','Valina Mellings',8554551555,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (592763,'Carry','Frodsam','1945-07-04',44,5906296569,8759815133,'88 Mesta Alley','cfrodsam1@vinaora.com','','Carry Frodsam',6228914498,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (592926,'Gordan','Joberne','1973-02-21',29,8509965220,5266274140,'844 Sullivan Lane','gjoberne27@stumbleupon.com','','Gordan Joberne',4171944506,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (600421,'Moore','Lacasa','1911-02-06',49,4147495703,8477506624,'0290 Roxbury Center','mlacasat@sitemeter.com','','Moore Lacasa',8052039846,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (620398,'Gunther','McLarens','1934-06-04',49,4243353135,5503943605,'13971 Rieder Alley','gmclarens30@livejournal.com','','Gunther McLarens',8846196760,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (631524,'Dulciana','Agus','1943-12-08',13,7171986865,4456160111,'23734 Schurz Alley','dagus8@google.de','','Dulciana Agus',6712405488,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (634372,'Freeland','Sokell','1965-01-03',61,9186108842,4218448110,'30897 Jana Point','fsokellb@cdc.gov','','Freeland Sokell',2103997610,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (650538,'Jacinta','Tanzig','1933-03-15',68,3196349591,4424046867,'09 Tony Parkway','jtanzig2d@admin.ch','','Jacinta Tanzig',5322470971,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (656678,'Maisey','Tubbs','1967-12-14',30,3873737993,1567589810,'607 Sherman Point','mtubbs1y@discovery.com','','Maisey Tubbs',6936607699,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (660800,'Trudie','Troup','1925-05-10',32,3085674560,8421452204,'444 Merchant Road','ttroupl@topsy.com','','Trudie Troup',9768852774,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (662815,'Rowan','MacIllrick','1964-10-29',73,8792201216,7085132011,'753 Dottie Junction','rmacillrick31@123-reg.co.uk','','Rowan MacIllrick',3079834511,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (672072,'Siward','Baugh','1945-08-01',48,8984934956,8152934232,'743 Mallory Pass','sbaugh5d@yahoo.co.jp','','Siward Baugh',3015871455,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (675015,'Gabbi','Towne','1975-07-29',64,8375478435,1957853098,'7 Gateway Drive','gtowne3d@ehow.com','','Gabbi Towne',6116789399,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (677802,'Brannon','Burris','1922-11-10',28,3467897576,2347354384,'744 Fisk Parkway','bburris2w@flavors.me','','Brannon Burris',8375958031,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (678482,'Clemence','Brayley','1909-12-31',7,4835190585,7687114186,'248 5th Avenue','cbrayley33@columbia.edu','','Clemence Brayley',3363193985,18);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (689989,'Annaliese','Fills','1969-12-10',55,3384284990,8007877361,'605 Bay Trail','afills1b@java.com','','Annaliese Fills',6501989511,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (693748,'Melloney','Shawcroft','1958-02-01',32,7608720602,3302435912,'19242 Tony Road','mshawcroft4s@earthlink.net','','Melloney Shawcroft',9825369993,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (701725,'Earl','Malmar','1941-02-18',37,4276785448,6446904402,'6574 Melrose Place','emalmar5b@php.net','','Earl Malmar',6039394644,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (704926,'Marcus','Comiam','1971-03-02',74,3102019381,1037677529,'583 Oxford Plaza','mcomiam3b@theglobeandmail.com','','Marcus Comiam',2014087282,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (711325,'Aidan','Knobell','1948-05-21',76,4555722257,8146601149,'96 Algoma Pass','aknobellj@odnoklassniki.ru','','Aidan Knobell',7882902738,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (718815,'Ezra','Harnetty','1958-03-02',14,5574895331,5231680070,'3955 Springs Alley','eharnetty57@pagesperso-orange.fr','','Ezra Harnetty',8828217035,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (721168,'Roxine','Glabach','1925-10-07',5,7911031177,2517902506,'1 7th Court','rglabach4q@kickstarter.com','','Roxine Glabach',3195443672,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (724917,'Rufus','Winley','1932-09-29',21,6576876901,6834799252,'3849 Mcguire Junction','rwinley37@un.org','','Rufus Winley',6337232941,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (727812,'Sherwin','Roll','1973-03-11',13,9542401610,4404660492,'0976 Morrow Crossing','sroll4v@tripadvisor.com','','Sherwin Roll',4607566899,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (729260,'Pammy','Spillett','1960-02-12',58,9398261880,3339510928,'972 Merrick Street','pspillett39@washingtonpost.com','','Pammy Spillett',1054573652,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (730710,'Tedda','de Quincey','1958-05-24',10,2437942613,3068762890,'1 Farragut Pass','tde19@naver.com','','Tedda de Quincey',4216607133,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (738093,'Sela','Jaszczak','1923-11-29',37,4028100702,9668911342,'2 Old Gate Terrace','sjaszczakd@epa.gov','','Sela Jaszczak',7776159232,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (744181,'Tamqrah','Sinden','1956-10-12',62,4983254287,9148355065,'062 Johnson Court','tsinden1h@slideshare.net','','Tamqrah Sinden',2061971711,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (749528,'Candice','Mainland','1976-01-07',38,9187422619,7269874979,'08072 Portage Place','cmainland3j@ehow.com','','Candice Mainland',5449011627,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (752554,'Ezequiel','Hooks','1908-11-02',31,7051493108,9812855872,'666 Parkside Lane','ehooks5c@slate.com','','Ezequiel Hooks',6133398909,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (758239,'Gusti','Hrachovec','1939-12-01',32,4516415301,5959333187,'6381 Heath Junction','ghrachovec2z@infoseek.co.jp','','Gusti Hrachovec',1428158247,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (763626,'Dynah','Edinburgh','1937-08-23',58,4199485836,4696688807,'8 Jackson Alley','dedinburgh11@hostgator.com','','Dynah Edinburgh',3094883706,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (774507,'Coralyn','Bacon','1936-08-19',18,2238774451,9388339243,'3 Carpenter Way','cbacon1g@ebay.co.uk','','Coralyn Bacon',9599590424,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (776265,'Torey','Reade','1970-05-12',61,6458642051,9379576339,'7511 Alpine Pass','treade43@nymag.com','','Torey Reade',3793221441,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (781005,'Thomasin','Walkowski','1952-10-13',52,9384594820,7424671213,'13459 Coolidge Crossing','twalkowski1n@oakley.com','','Thomasin Walkowski',9065642766,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (783394,'Nisse','Tedridge','1947-05-31',54,8861535109,2533861835,'018 Anderson Point','ntedridge4k@alexa.com','','Nisse Tedridge',6194940875,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (786399,'Boy','Emps','1954-01-04',46,3604651832,1568475063,'2 Crescent Oaks Center','bemps1d@shop-pro.jp','','Boy Emps',7412073678,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (789464,'Krysta','Finders','1976-01-06',6,2003855927,6144556185,'6 Stephen Court','kfinders4j@jiathis.com','','Krysta Finders',8616101310,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (800913,'Ruby','Curthoys','1930-02-07',74,3837535955,8923946211,'53403 Cordelia Pass','rcurthoys21@ihg.com','','Ruby Curthoys',8702064450,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (806190,'Caryl','Jerome','1961-10-19',79,7224848920,8848923485,'344 Loeprich Trail','cjerome1i@squidoo.com','','Caryl Jerome',9571060022,20);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (814696,'Katine','Hartop','1927-09-03',50,1389874622,1766599329,'77583 Anderson Hill','khartop2t@psu.edu','','Katine Hartop',7844240112,12);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (818817,'Falkner','Houldcroft','1968-11-02',44,2757185773,6861703192,'0048 Lotheville Road','fhouldcroftn@cocolog-nifty.com','','Falkner Houldcroft',6673132008,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (833748,'Rachel','Dyment','1902-02-26',38,3832882916,4577239829,'94 Hagan Terrace','rdymentr@sogou.com','','Rachel Dyment',7415549722,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (839309,'Gris','Metrick','1952-04-26',18,3451498773,7823818144,'1 8th Street','gmetrick4z@reuters.com','','Gris Metrick',6128836788,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (849110,'Willem','Cabera','1978-11-25',40,5627799954,7272343012,'60 Gateway Crossing','wcabera2n@google.co.jp','','Willem Cabera',7919120139,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (850785,'Shara','Gladhill','1920-05-02',53,7314421976,6472082431,'47001 Namekagon Place','sgladhill1f@reference.com','','Shara Gladhill',2809520273,15);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (851165,'Bryana','Mawhinney','1951-11-01',64,1262210564,1914507801,'5592 New Castle Circle','bmawhinney36@sourceforge.net','','Bryana Mawhinney',8737425793,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (860032,'Linnea','Canedo','1961-09-02',40,9538045856,7743389881,'4794 Butterfield Hill','lcanedo20@ameblo.jp','','Linnea Canedo',9809136636,4);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (860209,'Malachi','Lidgett','1972-07-18',69,8648330848,4465834316,'5579 Havey Lane','mlidgettg@uol.com.br','','Malachi Lidgett',3521133687,6);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (867677,'Mia','De Ruggero','1912-05-10',22,4192087502,8382874965,'1 Prairieview Terrace','mde48@friendfeed.com','','Mia De Ruggero',8544080673,18);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (868350,'Vally','Dunlop','1950-07-07',24,5435706584,1654211607,'3190 Lillian Plaza','vdunloph@umn.edu','','Vally Dunlop',8596086908,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (871889,'Noni','Roggerone','1941-03-11',49,1041225615,6454233501,'20117 Grover Point','nroggerone4l@hc360.com','','Noni Roggerone',2935558081,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (875313,'Olivero','Bampton','1959-03-22',65,3264022851,6338681683,'6466 Vera Pass','obampton2e@pen.io','','Olivero Bampton',1059683474,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (877502,'Tilly','Ricketts','1973-04-23',76,3024392448,3005964668,'82 Chive Road','tricketts3s@va.gov','','Tilly Ricketts',7487733360,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (878478,'Harmonie','Lowmass','1923-07-13',39,8838138744,5722617433,'0 Sheridan Crossing','hlowmassc@twitpic.com','','Harmonie Lowmass',8137158560,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (879836,'Floris','Castells','1938-01-08',73,9527585916,4368490685,'29 Sheridan Court','fcastells28@biblegateway.com','','Floris Castells',9283669128,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (879981,'Hillel','Snary','1948-01-03',40,3988021370,6939715226,'46823 Corry Terrace','hsnary3h@hexun.com','','Hillel Snary',7967583997,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (880876,'Nathanial','Pitcock','1960-08-09',66,7524013606,4381670168,'615 Spenser Drive','npitcocko@constantcontact.com','','Nathanial Pitcock',5331642527,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (888274,'Tad','Phillps','1941-11-07',69,7696375866,2592005916,'69396 Elmside Park','tphillps2r@nba.com','','Tad Phillps',3813889595,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (890887,'Thomasa','Minty','1962-02-17',21,4499851537,7291753934,'68 Continental Terrace','tminty34@aboutads.info','','Thomasa Minty',1527174378,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (896600,'Abe','Pudney','1921-09-19',56,7646457779,2587850756,'4255 Dayton Alley','apudney1v@nationalgeographic.com','','Abe Pudney',2534704818,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (896626,'Nevile','Kennifick','1956-03-24',17,4694410784,3893802591,'7142 Fisk Crossing','nkennifick3c@whitehouse.gov','','Nevile Kennifick',8321502471,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (896882,'Ado','Tocknell','1968-12-19',62,1518369313,4601625177,'087 Springview Place','atocknell3v@wordpress.org','','Ado Tocknell',6558043875,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (900851,'Josselyn','Feasby','1906-02-01',78,2447127215,6499206962,'494 Maywood Road','jfeasby5j@delicious.com','','Josselyn Feasby',5857642294,1);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (904347,'Lief','Joburn','1921-04-19',30,8078543644,6737934240,'36 Manufacturers Terrace','ljoburn4o@dell.com','','Lief Joburn',7782776618,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (913750,'Genni','Cursey','1957-06-10',11,2228510151,4127595063,'2 Ruskin Hill','gcursey2a@stumbleupon.com','','Genni Cursey',3366014192,13);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (921822,'Derwin','Marshman','1902-12-02',51,4583968475,9653512954,'8 Debra Hill','dmarshman15@spotify.com','','Derwin Marshman',5381067017,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (926994,'Hector','Vaissiere','1949-01-04',53,5453078367,3597966731,'872 Clyde Gallagher Junction','hvaissiere40@whitehouse.gov','','Hector Vaissiere',8061739513,18);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (931767,'Woodie','Turley','1936-12-12',50,3224870954,4419137324,'08422 Wayridge Drive','wturley1o@home.pl','','Woodie Turley',3024506040,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (934250,'Stacia','Marron','1980-05-30',55,2458980461,4907410189,'9 5th Road','smarron3q@aboutads.info','','Stacia Marron',6605417812,5);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (938082,'Sophey','Tewkesbury','1915-11-29',9,3871853090,7484028936,'0 Basil Point','stewkesbury1u@yolasite.com','','Sophey Tewkesbury',4746936119,14);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (942368,'Bunny','Mundford','1951-07-01',79,7469879020,4572782771,'45237 Golf Way','bmundford2p@wikipedia.org','','Bunny Mundford',2494818887,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (942513,'Georgianne','Cadany','1960-12-21',77,9722839265,1878282713,'96146 Coleman Street','gcadany3g@intel.com','','Georgianne Cadany',5092773487,8);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (942886,'Caitlin','Dubois','1905-05-03',50,2088046447,1268348318,'6955 Norway Maple Place','cdubois17@booking.com','','Caitlin Dubois',7005655842,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (951861,'Marian','Brunnstein','1915-09-20',58,5084677285,7371612461,'73 Lawn Junction','mbrunnsteinx@google.com.hk','','Marian Brunnstein',9514565622,17);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (958210,'Cameron','Flement','1969-09-20',22,6374673681,2258522240,'2 Russell Crossing','cflement35@last.fm','','Cameron Flement',9592518987,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (960814,'Toni','Bydaway','1948-08-09',38,2093550967,4027699942,'5576 7th Drive','tbydaway49@slate.com','','Toni Bydaway',1924082777,16);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (973263,'Cyrill','Mordey','1943-02-16',45,1914072016,1355077393,'094 8th Way','cmordey4m@squidoo.com','','Cyrill Mordey',1253774691,3);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (976959,'Retha','Parminter','1942-09-30',70,4709502866,5302202987,'43 Transport Alley','rparminter5@domainmarket.com','','Retha Parminter',3065686233,19);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (979600,'Arch','Mateev','1937-06-02',72,1626485271,2423017653,'4 Russell Avenue','amateev1s@gmpg.org','','Arch Mateev',2736559167,10);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (980645,'Daryle','Chatfield','1918-04-15',66,2925289312,2758935096,'0463 Veith Drive','dchatfielde@gravatar.com','','Daryle Chatfield',4703672417,11);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (989744,'Arleta','Pridgeon','1955-06-20',12,7173968942,2308366302,'064 Everett Crossing','apridgeon3n@pcworld.com','','Arleta Pridgeon',5702083915,9);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (996210,'Rivy','Peat','1911-03-12',46,4356824063,9964196365,'152 Paget Lane','rpeat4g@flavors.me','','Rivy Peat',7467480264,7);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (998016,'Niall','Menci','1905-07-11',79,3645785141,9542882739,'2 Steensland Road','nmenciy@deliciousdays.com','','Niall Menci',9584818991,2);
INSERT INTO socios (`SocioID`,`Nombre`,`Apellido`,`FechaNacimiento`,`Edad`,`DNI`,`Telefono`,`Direccion`,`Mail`,`Foto`,`ContactoFamiliar`,`TelefonoFamiliar`,`CategoriaID`) VALUES (998742,'Kailey','Chasteney','1974-01-03',35,7323861703,7906883242,'7035 Westport Pass','kchasteney7@barnesandnoble.com','','Kailey Chasteney',4389528802,20);


-- Tabla categoriasocios
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (2,2,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (3,3,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (1,1,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (4,4,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (5,5,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (6,6,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (7,7,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (8,8,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (9,9,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (10,10,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (11,11,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (12,12,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (13,13,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (14,14,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (15,15,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (16,16,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (17,17,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (18,18,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (19,19,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (20,20,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (21,21,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (22,22,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (23,23,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (24,1,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (25,2,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (26,3,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (27,4,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (28,5,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (29,6,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (30,7,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (31,8,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (32,9,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (33,10,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (34,11,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (35,12,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (36,13,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (37,14,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (38,15,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (39,16,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (40,17,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (41,18,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (42,19,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (43,20,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (44,21,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (45,22,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (46,23,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (47,1,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (48,2,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (49,3,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (50,4,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (51,5,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (52,6,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (53,7,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (54,8,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (55,9,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (56,10,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (57,11,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (58,12,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (59,13,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (60,14,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (61,15,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (62,16,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (63,17,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (64,18,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (65,19,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (66,20,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (67,21,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (68,22,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (69,23,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (70,1,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (71,2,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (72,3,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (73,4,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (74,5,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (75,6,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (76,7,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (77,8,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (78,9,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (79,10,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (80,11,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (81,12,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (82,13,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (83,14,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (84,15,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (85,16,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (86,17,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (87,18,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (88,19,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (89,20,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (90,21,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (91,22,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (92,23,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (93,1,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (94,2,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (95,3,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (96,4,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (97,5,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (98,6,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (99,7,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (100,8,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (101,9,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (102,10,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (103,11,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (104,12,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (105,13,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (106,14,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (107,15,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (108,16,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (109,17,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (110,18,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (111,19,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (112,20,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (113,21,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (114,22,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (115,23,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (116,1,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (117,2,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (118,3,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (119,4,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (120,5,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (121,6,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (122,7,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (123,8,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (124,9,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (125,10,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (126,11,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (127,12,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (128,13,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (129,14,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (130,15,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (131,16,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (132,17,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (133,18,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (134,19,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (135,20,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (136,21,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (137,22,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (138,23,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (139,1,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (140,2,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (141,3,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (142,4,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (143,5,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (144,6,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (145,7,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (146,8,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (147,9,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (148,10,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (149,11,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (150,12,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (151,13,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (152,14,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (153,15,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (154,16,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (155,17,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (156,18,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (157,19,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (158,20,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (159,21,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (160,22,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (161,23,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (162,1,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (163,2,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (164,3,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (165,4,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (166,5,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (167,6,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (168,7,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (169,8,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (170,9,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (171,10,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (172,11,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (173,12,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (174,13,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (175,14,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (176,15,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (177,16,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (178,17,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (179,18,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (180,19,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (181,20,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (182,21,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (183,22,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (184,23,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (185,1,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (186,2,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (187,3,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (188,4,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (189,5,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (190,6,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (191,7,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (192,8,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (193,9,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (194,10,'Primera',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (195,11,'Max',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (196,12,'Infantil',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (197,13,'Cadete',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (198,14,'Juvenil ',NULL,NULL,NULL);
INSERT INTO categoriasocios (`CategoriaSociosID`,`CategoriaDeportesID`,`Nombre`,`Descripcion`,`FechaCreacionCategoria`,`FechaBajaCategoria`) VALUES (199,15,'Primera',NULL,NULL,NULL);

-- Tabla disciplinas
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (1,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (2,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (3,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (4,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (5,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (6,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (7,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (8,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (9,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (10,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (11,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (12,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (13,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (14,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (15,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (16,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (17,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (18,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (19,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (20,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (21,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (22,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (23,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (24,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (25,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (26,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (27,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (28,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (29,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (30,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (31,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (32,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (33,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (34,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (35,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (36,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (37,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (38,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (39,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (40,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (41,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (42,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (43,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (44,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (45,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (46,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (47,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (48,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (49,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (50,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (51,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (52,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (53,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (54,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (55,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (56,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (57,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (58,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (59,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (60,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (61,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (62,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (63,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (64,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (65,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (66,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (67,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (68,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (69,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (70,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (71,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (72,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (73,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (74,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (75,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (76,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (77,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (78,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (79,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (80,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (81,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (82,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (83,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (84,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (85,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (86,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (87,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (88,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (89,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (90,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (91,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (92,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (93,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (94,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (95,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (96,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (97,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (98,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (99,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (100,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (101,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (102,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (103,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (104,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (105,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (106,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (107,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (108,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (109,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (110,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (111,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (112,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (113,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (114,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (115,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (116,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (117,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (118,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (119,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (120,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (121,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (122,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (123,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (124,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (125,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (126,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (127,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (128,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (129,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (130,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (131,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (132,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (133,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (134,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (135,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (136,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (137,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (138,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (139,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (140,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (141,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (142,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (143,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (144,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (145,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (146,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (147,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (148,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (149,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (150,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (151,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (152,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (153,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (154,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (155,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (156,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (157,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (158,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (159,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (160,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (161,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (162,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (163,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (164,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (165,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (166,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (167,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (168,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (169,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (170,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (171,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (172,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (173,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (174,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (175,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (176,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (177,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (178,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (179,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (180,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (181,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (182,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (183,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (184,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (185,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (186,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (187,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (188,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (189,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (190,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (191,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (192,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (193,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (194,'Primera',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (195,'Max',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (196,'Infantil',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (197,'Cadete',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (198,'Juvenil ',NULL,NULL,NULL);
INSERT INTO disciplinas (`DisciplinaID`,`Nombre`,`Descripcion`,`FechaAltaDisciplina`,`FechaBajaDisciplina`) VALUES (199,'Primera',NULL,NULL,NULL);


-- Tabla inscripciones
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (1,124567,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (2,871889,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (3,851165,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (4,341500,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (5,589733,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (6,814696,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (7,896882,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (8,979600,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (9,116182,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (10,107459,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (11,75968,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (12,445992,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (13,26462,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (14,973263,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (15,789464,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (16,237448,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (17,525414,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (18,942886,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (19,960814,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (20,196188,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (21,913750,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (22,774507,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (23,411885,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (24,730710,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (25,900851,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (26,571616,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (27,934250,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (28,576813,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (29,99569,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (30,307955,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (31,72690,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (32,818817,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (33,428542,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (34,980645,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (35,544453,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (36,877502,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (37,660800,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (38,704926,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (39,458729,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (40,650538,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (41,549910,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (42,931767,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (43,875313,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (44,380830,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (45,359750,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (46,689989,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (47,221214,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (48,839309,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (49,677802,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (50,786399,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (51,189985,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (52,61259,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (53,998016,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (54,107270,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (55,165125,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (56,180351,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (57,833748,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (58,800913,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (59,359232,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (60,172205,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (61,287205,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (62,938082,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (63,656678,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (64,283287,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (65,879981,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (66,738093,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (67,578644,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (68,266046,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (69,24953,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (70,600421,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (71,867677,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (72,763626,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (73,620398,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (74,701725,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (75,996210,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (76,510510,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (77,81746,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (78,278605,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (79,385188,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (80,890887,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (81,507207,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (82,758239,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (83,711325,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (84,921822,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (85,896626,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (86,976959,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (87,332953,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (88,678482,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (89,345753,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (90,744181,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (91,62731,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (92,518451,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (93,951861,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (94,412223,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (95,80565,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (96,54436,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (97,425591,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (98,323239,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (99,148413,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (100,868350,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (101,926994,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (102,718815,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (103,500242,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (104,849110,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (105,546804,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (106,177849,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (107,592763,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (108,104862,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (109,233381,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (110,164510,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (111,251881,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (112,328078,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (113,510872,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (114,380007,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (115,362852,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (116,166266,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (117,958210,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (118,217173,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (119,776265,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (120,724917,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (121,299869,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (122,465515,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (123,45986,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (124,69966,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (125,215626,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (126,419464,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (127,135114,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (128,752554,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (129,631524,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (130,204878,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (131,989744,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (132,524119,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (133,806190,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (134,850785,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (135,998742,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (136,96331,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (137,942368,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (138,513737,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (139,880876,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (140,136924,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (141,352670,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (142,693748,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (143,896600,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (144,888274,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (145,442812,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (146,182215,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (147,721168,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (148,338065,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (149,531953,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (150,412465,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (151,246454,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (152,471015,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (153,904347,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (154,170232,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (155,481772,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (156,98659,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (157,426712,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (158,353213,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (159,39344,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (160,113813,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (161,92346,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (162,675015,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (163,234867,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (164,55769,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (165,592926,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (166,550958,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (167,860209,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (168,294792,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (169,105237,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (170,583177,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (171,662815,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (172,878478,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (173,783394,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (174,672072,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (175,81562,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (176,11912,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (177,462922,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (178,182648,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (179,159674,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (180,634372,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (181,749528,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (182,471413,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (183,197099,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (184,434057,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (185,68560,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (186,781005,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (187,729260,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (188,444215,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (189,879836,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (190,860032,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (191,727812,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (192,407964,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (193,120050,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (194,267594,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (195,227324,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (196,942513,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (197,398582,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (198,203710,NULL,NULL);
INSERT INTO inscripciones (`InscripcionID`,`SocioID`,`ActividadID`,`FechaInscripcion`) VALUES (199,189403,NULL,NULL);

-- Tabla pagos
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (1,124567,2000.00,'2023-11-14');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (2,871889,2000.00,'2023-07-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (3,851165,2000.00,'2023-06-29');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (4,341500,2000.00,'2024-02-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (5,589733,2000.00,'2023-06-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (6,814696,2000.00,'2024-02-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (7,896882,2000.00,'2023-12-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (8,979600,2000.00,'2024-02-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (9,116182,2000.00,'2023-08-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (10,107459,2000.00,'2024-05-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (11,75968,2000.00,'2024-02-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (12,445992,2000.00,'2024-04-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (13,26462,2000.00,'2024-02-05');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (14,973263,2000.00,'2024-04-04');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (15,789464,2000.00,'2024-01-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (16,237448,2000.00,'2024-04-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (17,525414,2000.00,'2023-08-03');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (18,942886,2000.00,'2023-09-30');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (19,960814,2000.00,'2023-06-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (20,196188,2000.00,'2023-08-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (21,913750,2000.00,'2024-01-02');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (22,774507,2000.00,'2023-11-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (23,411885,2000.00,'2024-03-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (24,730710,2000.00,'2023-08-31');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (25,900851,2000.00,'2023-08-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (26,571616,2000.00,'2023-12-02');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (27,934250,2000.00,'2023-06-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (28,576813,2000.00,'2023-12-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (29,99569,2000.00,'2024-04-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (30,307955,2000.00,'2023-06-19');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (31,72690,2000.00,'2023-06-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (32,818817,2000.00,'2023-08-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (33,428542,2000.00,'2024-03-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (34,980645,2000.00,'2023-09-21');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (35,544453,2000.00,'2023-06-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (36,877502,2000.00,'2023-12-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (37,660800,2000.00,'2023-11-22');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (38,704926,2000.00,'2023-07-02');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (39,458729,2000.00,'2023-12-20');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (40,650538,2000.00,'2024-05-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (41,549910,2000.00,'2023-05-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (42,931767,2000.00,'2023-11-30');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (43,875313,2000.00,'2024-04-05');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (44,380830,2000.00,'2023-10-31');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (45,359750,2000.00,'2023-07-07');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (46,689989,2000.00,'2023-07-23');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (47,221214,2000.00,'2023-07-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (48,839309,2000.00,'2024-01-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (49,677802,2000.00,'2023-11-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (50,786399,2000.00,'2023-08-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (51,189985,2000.00,'2024-03-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (52,61259,2000.00,'2023-09-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (53,998016,2000.00,'2023-06-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (54,107270,2000.00,'2023-11-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (55,165125,2000.00,'2023-10-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (56,180351,2000.00,'2023-06-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (57,833748,2000.00,'2023-11-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (58,800913,2000.00,'2023-06-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (59,359232,2000.00,'2023-12-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (60,172205,2000.00,'2023-12-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (61,287205,2000.00,'2023-06-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (62,938082,2000.00,'2023-06-18');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (63,656678,2000.00,'2024-04-18');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (64,283287,2000.00,'2023-05-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (65,879981,2000.00,'2024-05-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (66,738093,2000.00,'2023-12-22');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (67,578644,2000.00,'2024-02-17');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (68,266046,2000.00,'2023-06-04');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (69,24953,2000.00,'2023-11-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (70,600421,2000.00,'2023-06-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (71,867677,2000.00,'2024-05-17');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (72,763626,2000.00,'2024-01-08');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (73,620398,2000.00,'2023-12-03');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (74,701725,2000.00,'2024-02-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (75,996210,2000.00,'2023-10-20');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (76,510510,2000.00,'2023-10-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (77,81746,2000.00,'2024-04-14');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (78,278605,2000.00,'2024-05-08');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (79,385188,2000.00,'2023-08-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (80,890887,2000.00,'2024-03-22');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (81,507207,2000.00,'2023-11-19');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (82,758239,2000.00,'2024-05-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (83,711325,2000.00,'2023-08-21');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (84,921822,2000.00,'2024-01-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (85,896626,2000.00,'2023-08-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (86,976959,2000.00,'2023-12-07');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (87,332953,2000.00,'2024-02-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (88,678482,2000.00,'2023-10-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (89,345753,2000.00,'2024-02-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (90,744181,2000.00,'2024-05-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (91,62731,2000.00,'2024-05-06');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (92,518451,2000.00,'2023-11-14');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (93,951861,2000.00,'2023-07-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (94,412223,2000.00,'2023-06-29');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (95,80565,2000.00,'2024-02-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (96,54436,2000.00,'2023-06-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (97,425591,2000.00,'2024-02-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (98,323239,2000.00,'2023-12-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (99,148413,2000.00,'2024-02-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (100,868350,2000.00,'2023-08-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (101,926994,2000.00,'2024-05-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (102,718815,2000.00,'2024-02-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (103,500242,2000.00,'2024-04-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (104,849110,2000.00,'2024-02-05');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (105,546804,2000.00,'2024-04-04');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (106,177849,2000.00,'2024-01-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (107,592763,2000.00,'2024-04-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (108,104862,2000.00,'2023-08-03');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (109,233381,2000.00,'2023-09-30');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (110,164510,2000.00,'2023-06-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (111,251881,2000.00,'2023-08-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (112,328078,2000.00,'2024-01-02');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (113,510872,2000.00,'2023-11-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (114,380007,2000.00,'2024-03-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (115,362852,2000.00,'2023-08-31');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (116,166266,2000.00,'2023-08-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (117,958210,2000.00,'2023-12-02');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (118,217173,2000.00,'2023-06-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (119,776265,2000.00,'2023-12-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (120,724917,2000.00,'2024-04-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (121,299869,2000.00,'2023-06-19');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (122,465515,2000.00,'2023-06-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (123,45986,2000.00,'2023-08-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (124,69966,2000.00,'2024-03-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (125,215626,2000.00,'2023-09-21');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (126,419464,2000.00,'2023-06-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (127,135114,2000.00,'2023-12-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (128,752554,2000.00,'2023-11-22');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (129,631524,2000.00,'2023-07-02');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (130,204878,2000.00,'2023-12-20');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (131,989744,2000.00,'2024-05-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (132,524119,2000.00,'2023-05-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (133,806190,2000.00,'2023-11-30');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (134,850785,2000.00,'2024-04-05');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (135,998742,2000.00,'2023-10-31');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (136,96331,2000.00,'2023-07-07');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (137,942368,2000.00,'2023-07-23');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (138,513737,2000.00,'2023-07-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (139,880876,2000.00,'2024-01-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (140,136924,2000.00,'2023-11-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (141,352670,2000.00,'2023-08-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (142,693748,2000.00,'2024-03-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (143,896600,2000.00,'2023-09-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (144,888274,2000.00,'2023-06-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (145,442812,2000.00,'2023-11-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (146,182215,2000.00,'2023-10-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (147,721168,2000.00,'2023-06-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (148,338065,2000.00,'2023-11-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (149,531953,2000.00,'2023-06-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (150,412465,2000.00,'2023-12-27');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (151,246454,2000.00,'2023-12-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (152,471015,2000.00,'2023-06-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (153,904347,2000.00,'2023-06-18');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (154,170232,2000.00,'2024-04-18');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (155,481772,2000.00,'2023-05-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (156,98659,2000.00,'2024-05-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (157,426712,2000.00,'2023-12-22');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (158,353213,2000.00,'2024-02-17');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (159,39344,2000.00,'2023-06-04');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (160,113813,2000.00,'2023-11-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (161,92346,2000.00,'2023-06-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (162,675015,2000.00,'2024-05-17');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (163,234867,2000.00,'2024-01-08');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (164,55769,2000.00,'2023-12-03');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (165,592926,2000.00,'2024-02-09');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (166,550958,2000.00,'2023-10-20');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (167,860209,2000.00,'2023-10-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (168,294792,2000.00,'2024-04-14');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (169,105237,2000.00,'2024-05-08');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (170,583177,2000.00,'2023-08-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (171,662815,2000.00,'2024-03-22');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (172,878478,2000.00,'2023-11-19');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (173,783394,2000.00,'2024-05-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (174,672072,2000.00,'2023-08-21');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (175,81562,2000.00,'2024-01-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (176,11912,2000.00,'2023-08-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (177,462922,2000.00,'2023-12-07');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (178,182648,2000.00,'2024-02-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (179,159674,2000.00,'2023-10-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (180,634372,2000.00,'2024-02-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (181,749528,2000.00,'2024-05-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (182,471413,2000.00,'2024-05-06');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (183,197099,2000.00,'2023-11-14');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (184,434057,2000.00,'2023-07-24');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (185,68560,2000.00,'2023-06-29');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (186,781005,2000.00,'2024-02-12');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (187,729260,2000.00,'2023-06-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (188,444215,2000.00,'2024-02-25');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (189,879836,2000.00,'2023-12-10');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (190,860032,2000.00,'2024-02-01');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (191,727812,2000.00,'2023-08-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (192,407964,2000.00,'2024-05-13');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (193,120050,2000.00,'2024-02-15');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (194,267594,2000.00,'2024-04-11');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (195,227324,2000.00,'2024-02-05');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (196,942513,2000.00,'2024-04-04');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (197,398582,2000.00,'2024-01-28');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (198,203710,2000.00,'2024-04-26');
INSERT INTO pagos (`PagoID`,`SocioID`,`Monto`,`FechaPago`) VALUES (199,189403,2000.00,'2023-08-03');


-- Vista de Socio Carnet Digital solo muestra id de socio nombre apellido dni telefono Actividad y Categoria 

DROP VIEW  IF EXISTS VistaCarnetDigital;

CREATE VIEW VistaCarnetDigital AS
SELECT 
    s.SocioID AS "Número de Socio", 
    s.Nombre AS "Nombre", 
    s.Apellido AS "Apellido",
    s.DNI, 
    s.Telefono, 
    cd.Nombre AS "Actividad",
    cd.Descripcion AS "Categoria"
FROM 
    Socios s
LEFT JOIN 
    CategoriaDeportes cd ON s.CategoriaID = cd.CategoriaID;

-- Vista de pagos por Socio 

DROP VIEW  IF EXISTS VistaPagosSocios;
CREATE VIEW VistaPagosSocios AS
SELECT 
    p.PagoID AS "Cupon de Pago", 
    p.SocioID AS "Número de Socio", 
    s.Nombre AS "Nombre",
    s.Apellido AS "Apellido",
    p.Monto AS "Importe", 
    p.FechaPago AS "Fecha de Pago"
FROM 
    Pagos p
LEFT JOIN 
    Socios s ON p.SocioID = s.SocioID;
    
-- Vista de telefono de Contacto de los Socios en caso de Emergencia

DROP VIEW  IF EXISTS VistaContactosSocios;
CREATE VIEW VistaContactosSocios AS
SELECT 
    SocioID AS "Número de Socio",
    Nombre AS "Nombre", 
    Apellido AS "Apellido",
    Telefono, 
    Direccion, 
    Mail, 
    ContactoFamiliar AS "Contacto de Emergencia",
    TelefonoFamiliar AS "Telefono de Contacto de Emergencia"
FROM 
    Socios;

-- Vista de Listado de Categorias Activas  --
DROP VIEW  IF EXISTS VistaCategoriasActivas;
CREATE VIEW VistaCategoriasActivas AS
SELECT 
    CategoriaID AS "Número de Categoria", 
    Nombre AS "Actividad", 
    Descripcion AS "Categoria", 
    FechaAltaCategoria AS "Fecha de Alta de la Categoria"
FROM 
    CategoriaDeportes
WHERE 
    FechaBajaCategoria IS NULL;


    
SELECT * FROM VistaCarnetDigital;
SELECT * FROM VistaPagosSocios;
SELECT * FROM VistaContactosSocios;
SELECT * FROM VistaCategoriasActivas;



-- READS SQL DATA
-- NO SQL
-- DETERMINISTIC
-- NO DETERMINISTIC

-- función categoriadeportes -- 
DELIMITER //
CREATE FUNCTION nombrarcat(P_CategoriaID INT)
RETURNS VARCHAR(230)
READS SQL DATA
BEGIN
    DECLARE resultadoCategoria VARCHAR(230);
    SET resultadoCategoria = (select Nombre from categoriadeportes where CategoriaID = P_CategoriaID ) ;
    RETURN resultadoCategoria;
END //

-- vista de Disciplinas por categoria y Q de socios  --
SELECT 
	nombrarcat(cd.CategoriaID) AS "Nombre de Disciplina",
    cd.Descripcion AS "Categoria",
    (SELECT COUNT(*) FROM Socios s 
    WHERE s.CategoriaID = cd.CategoriaID) AS "Total de Socios"
FROM 
    CategoriaDeportes cd;


-- segunda funcion Total de monto abonado por Socio --

DELIMITER //
CREATE FUNCTION totalPagosPorSocio(socio_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(Monto) INTO total FROM Pagos WHERE SocioID = socio_id;
    RETURN total;
END //
DELIMITER ;

-- vista de Disciplinas por categoria y Q de socios  --
SELECT 
    s.SocioID as "Carnet de Socio",
    s.Nombre,
    s.Apellido,
    totalPagosPorSocio(s.SocioID) AS "Total de Importe Pagado"
FROM 
    Socios s;

-- Store Procedure --
-- Registrar un pago --
DELIMITER //
CREATE PROCEDURE registrarPago(
    IN p_SocioID INT,
    IN p_Monto DECIMAL(10, 2)
)
BEGIN
	DECLARE ultimoPago INT;
    INSERT INTO Pagos (SocioID, Monto, FechaPago) VALUES (p_SocioID, p_Monto, CURDATE());
    SET ultimoPago = LAST_INSERT_ID();
    SELECT 
        p.PagoID,
        p.SocioID AS "Número de Socio",
        p.Monto,
        p.FechaPago AS "Fecha de Pago",
        s.Nombre AS "Nombre Socio",
        s.Apellido AS "Apellido Socio",
        s.DNI,
        s.Telefono,
        s.Direccion,
        s.Mail,
        s.Foto,
        s.ContactoFamiliar AS "Contacto Familiar",
        s.TelefonoFamiliar AS "Telefono del Famliar",
        s.CategoriaID 
    FROM 
        Pagos p
        INNER JOIN Socios s ON p.SocioID = s.SocioID
    WHERE 
        p.PagoID = ultimoPago;
END //
DELIMITER ;

-- Store Procedure Alta de un socio  --
DELIMITER //
CREATE PROCEDURE altaSocio(
    IN p_Nombre VARCHAR(100),
    IN p_Apellido VARCHAR(100),
    IN p_FechaNacimiento DATE,
    IN p_DNI DECIMAL(10,0),
    IN p_Telefono DECIMAL(10,0),
    IN p_Direccion VARCHAR(200),
    IN p_Mail VARCHAR(100),
    IN p_Foto VARCHAR(100),
    IN p_ContactoFamiliar VARCHAR(100),
    IN p_TelefonoFamiliar DECIMAL(10,0),
    IN p_CategoriaID INT
)
BEGIN
    DECLARE p_Edad INT;
    DECLARE ultimoSocio INT;
    SET p_Edad = TIMESTAMPDIFF(YEAR, p_FechaNacimiento, CURDATE());
    INSERT INTO Socios (
        Nombre, Apellido, FechaNacimiento, Edad, DNI, Telefono, Direccion, Mail, Foto, ContactoFamiliar, TelefonoFamiliar, CategoriaID
    ) VALUES (
        p_Nombre, p_Apellido, p_FechaNacimiento, p_Edad, p_DNI, p_Telefono, p_Direccion, p_Mail, p_Foto, p_ContactoFamiliar, p_TelefonoFamiliar, p_CategoriaID
    );
    SET ultimoSocio = LAST_INSERT_ID(); 
    SELECT 
    SocioID AS "Número de Socio", 
    Nombre, 
    Apellido, 
    FechaNacimiento AS "Fecha de Nacimiento", 
    Edad, 
    DNI, 
    Telefono, 
    Direccion, 
    Mail, 
    Foto, 
    ContactoFamiliar AS "Contacto Familiar", 
    TelefonoFamiliar AS "Telefono del Famliar", 
    CategoriaID
      FROM Socios
    WHERE SocioID = ultimoSocio;
END //
DELIMITER ;

--  Store Procedure Editar un Socio --
DELIMITER //
CREATE PROCEDURE actualizarSocio(
    IN p_SocioID INT,
    IN p_Nombre VARCHAR(100),
    IN p_Apellido VARCHAR(100),
    IN p_FechaNacimiento DATE,
    IN p_DNI DECIMAL(10,0),
    IN p_Telefono DECIMAL(10,0),
    IN p_Direccion VARCHAR(200),
    IN p_Mail VARCHAR(100),
    IN p_Foto VARCHAR(100),
    IN p_ContactoFamiliar VARCHAR(100),
    IN p_TelefonoFamiliar DECIMAL(10,0),
    IN p_CategoriaID INT
)
BEGIN
    DECLARE p_Edad INT;
    SET p_Edad = TIMESTAMPDIFF(YEAR, p_FechaNacimiento, CURDATE());
    UPDATE Socios
    SET Nombre = p_Nombre,
        Apellido = p_Apellido,
        FechaNacimiento = p_FechaNacimiento,
        Edad = p_Edad,
        DNI = p_DNI,
        Telefono = p_Telefono,
        Direccion = p_Direccion,
        Mail = p_Mail,
        Foto = p_Foto,
        ContactoFamiliar = p_ContactoFamiliar,
        TelefonoFamiliar = p_TelefonoFamiliar,
        CategoriaID = p_CategoriaID
    WHERE SocioID = p_SocioID;
    SELECT 
    SocioID AS "Número de Socio", 
    Nombre, 
    Apellido, 
    FechaNacimiento AS "Fecha de Nacimiento", 
    Edad, 
    DNI, 
    Telefono, 
    Direccion, 
    Mail, 
    Foto, 
    ContactoFamiliar AS "Contacto Familiar", 
    TelefonoFamiliar AS "Telefono del Famliar", 
    CategoriaID
      FROM Socios
    WHERE SocioID = p_SocioID;
END //
DELIMITER ;

-- llamadas a los Store Procedure --
-- Registrar un Pago --
CALL registrarPago(11912, 4000);

-- Alta Socio --
CALL altaSocio(
    'Cosme',
    'Fulanito',
    '1990-05-15',
    8751222611,
    9874587868,
    'Calle Falsa 123',
    'cosme.fulanito@gmail.com',
    'http://fotoconelyeti.com/foto.jpg',
    'Lisa la del ocho',
    0345267891,
    1
);

select * from socios where SocioID = 998747;

-- Actualizar un Socio -- 
CALL actualizarSocio(
    11912,
    'Kent',
    'Brockman',
    '1990-05-15',
    6785991869,
    8769082891,
    'Segurola y Habana 4310',
    'kent.brockman@gmail.com',
    'http://mytwocents.com/foto_n.jpg',
    'Abe Simpsons',
    765483321,
    3
);

-- Triggers -- 

-- 1 Trigger Cargar como fecha de alta de la disciplina la misma fecha de su creacion --
DELIMITER //
CREATE TRIGGER registrar_fecha_alta_disciplina
BEFORE INSERT ON Disciplinas
FOR EACH ROW
BEGIN
    SET NEW.FechaAltaDisciplina = CURDATE();
END //
DELIMITER ;

-- Ejemplo --
-- Insertar una nueva disciplina
-- INSERT INTO Disciplinas (Nombre, Descripcion) VALUES ('Natación pato al agua', 'ideal para chapotear'); --
-- Verificar la fecha de alta SELECT * FROM Disciplinas WHERE Nombre = 'Natación pato al agua'; --


-- 2 Trigger Cargar como fecha de alta de la inscripción la misma fecha de su creacion --
DELIMITER //
CREATE TRIGGER registrarFechaInscripcion
BEFORE INSERT ON Inscripciones
FOR EACH ROW
BEGIN
    SET NEW.FechaInscripcion = CURDATE();
END //
DELIMITER ;

-- Insertar una nueva inscripción
-- Ejemplo --
-- INSERT INTO Inscripciones (SocioID, ActividadID) VALUES (11912, 1); -- 
-- Verificar la fecha de inscripción SELECT * FROM Inscripciones WHERE SocioID = 11912 AND ActividadID = 1;

-- 3 Trigger evitar la carga de un menor de 4 años para nuestras disciplinas a la hora de dar de alta un Socio --

DELIMITER //
CREATE TRIGGER edadLimite
BEFORE INSERT ON Socios
FOR EACH ROW
BEGIN
    DECLARE socio_edad INT;
    SET socio_edad = TIMESTAMPDIFF(YEAR, NEW.FechaNacimiento, CURDATE());
    IF socio_edad < 4 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La edad del socio no puede ser menor a 4 años vuelva el año siguiente.';
    ELSE
        SET NEW.Edad = socio_edad;
    END IF;
END //
DELIMITER ;

-- Ejemplo --
-- Intentar insertar un socio menor de 4 años
-- INSERT INTO Socios (Nombre, Apellido, FechaNacimiento, DNI, Telefono, Direccion, Mail, Foto, ContactoFamiliar, TelefonoFamiliar, CategoriaID) VALUES ('Hugo', 'Simpsons', '2021-06-15', 7865907854, 4565376548, 'Avenida Siempre Viva 742', 'ifyouseemychildhood@gmail.com', 'http://pic.com/foto_22.jpg', 'Reverendo Alegria', 6754985621, 1); --
