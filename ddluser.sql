CREATE TABLE usuario (
id_usuario INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
contraseña VARCHAR(15),
zonahoraria datetime default current_timestamp(),
genero varchar(15),
telefono varchar(15)
);


CREATE TABLE entrada (
id_ingreso INT NOT NULL,
id_usuario INT,
fecha_creacion DATETIME DEFAULT 
CURRENT_TIMESTAMP()
);

INSERT INTO usuario(id_usuario, nombre, apellido, contraseña, genero, telefono)
VALUES ('1301','José','Benavente','gato 123','M','1234567'),
('1302','Marcela','Fuentes','perro 234','F','2345678'),
('1303','Francisca','Valdivia','oso 456','F','3456789'),
('1304','Leonardo','Lorenzini','cat 789','M','4567890'),
('1305','Andrea','Bragado','dogui 023','F','9874561'),
('1306','Claudio','Lopez','lolo 502','M','3217895'),
('1307','Maria','Venturelli','roedor 408','F','9638521'),
('1308','Hernan','Norambuena','loqui 746','M','1596327'),
('1309','Carla','lackington','rama 0854','F','5558741');



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

CREATE TABLE contacto (
id_contacto INT,
id_usuario INT NOT NULL,
numero_telefono VARCHAR(50) NOT NULL,
correo_electronico VARCHAR(50) NOT NULL
);

INSERT INTO contacto(id_contacto, id_usuario, numero_telefono, correo_electronico)
VALUES ('2150','1301','4456014','jfuenzalida@cbs.com'),
('2151','1302','8823654','heink@ctc.com'),
('2152','1303','3332545','mayor@klm.com'),
('2153','1304','2227015','june@reef.com'),
('2154','1305','9993325','feel@kraf.com'),
('2155','1306','1112223','rjerez@kpo.com'),
('2156','1307','7775550','mjuarez@weef.com'),
('2157','1308','3369851','jaramilloa@jfr.com'),
('2158','1309','2783364','soka@herr.com');



UPDATE ddluser.usuario SET zonahoraria = convert_tz(zonahoraria,'-04:00','-02:00') where id_usuario > 0;


/* La tabla usuario está conformada por 7 atributos denominados: 
id_usuario del tipo entero porque es un atributo numérico,
nombre del tipo varchar(50) porque es un atributo del tipo texto,
apellido del tipo varchar(50) porque es un atributo del tipo texto,
contraseña del tipo varchar(15) porque es un atributo alfanumerico,
zonahoraria datetime porque es un atributo del tipo formato fecha-hora y o con la característica default current_timestamp(),
para que se autogenere fechas y horas actuales desde lo que marca el sistema.
genero varchar(15) porque es un atributo de tipo texto.
telefono varchar(15) porque es del tipo alfanumerico.

La tabla entrada posee 3 atributos denominados:
id_ingreso del tipo INT porque es un atributo numérico Id.
id_usuario del tipo INT porque es un atributo numérico Id.
fecha_creacion del tipo DATETIME porque es un atributo del tipo formato fecha-hora y o con la característica default current_timestamp().
  */
  
ALTER TABLE ddluser.usuario
ADD PRIMARY KEY (id_usuario);

ALTER TABLE ddluser.contacto
ADD CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);




