CREATE TABLE usuarios (
id_usuario INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
contraseña VARCHAR(15),
genero varchar(15),
telefono varchar(15)
);


CREATE TABLE entrada (
id_ingreso INT NOT NULL,
id_usuario INT,
fecha_creacion DATETIME DEFAULT 
CURRENT_TIMESTAMP()
);

INSERT INTO usuarios(id_usuario, nombre, apellido, contraseña, genero, telefono)
VALUES ('2150','José','Benavente','gato 123','M','1234567'),
('2151','Marcela','Fuentes','perro 234','F','2345678'),
('2152','Francisca','Valdivia','oso 456','F','3456789'),
('2153','Leonardo','Lorenzini','cat 789','M','4567890'),
('2154','Andrea','Bragado','dogui 023','F','9874561'),
('2155','Claudio','Lopez','lolo 502','M','3217895'),
('2156','Maria','Venturelli','roedor 408','F','9638521'),
('2157','Hernan','Norambuena','loqui 746','M','1596327'),
('2158','Carla','lackington','rama 0854','F','5558741');



INSERT INTO entrada(id_ingreso, id_usuario)
VALUES ('2150','1301'),
('2151','1302'),
('2152','1303'),
('2153','1304'),
('2154','1305'),
('2155','1306'),
('2156','1307'),
('2157','1308'),
('2158','1309');

CREATE TABLE contactos (
id_contacto INT PRIMARY KEY,
numero_telefono VARCHAR(50) NOT NULL,
correo_electronico VARCHAR(50) NOT NULL
);

INSERT INTO contactos(id_contacto, numero_telefono, correo_electronico)
VALUES ('20','4456014','jfuenzalida@cbs.com'),
('21','8823654','heink@ctc.com'),
('22','3332545','mayor@klm.com'),
('23','2227015','june@reef.com'),
('24','9993325','feel@kraf.com'),
('25','1112223','rjerez@kpo.com'),
('26','7775550','mjuarez@weef.com'),
('27','3369851','jaramilloa@jfr.com'),
('28','2783364','soka@herr.com');

ALTER TABLE useraplic RENAME COLUMN telefono TO id_telefono;
ALTER TABLE contactos RENAME COLUMN numero_telefono TO id_telefono;