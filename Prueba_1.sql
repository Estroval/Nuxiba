create database Prueba_1;

use Prueba_1;

CREATE TABLE USUARIOS (
userId int not null primary key auto_increment,
Login varchar(100) not null,
Nombre varchar(100) not null,
Paterno varchar(100) not null,
Marterno varchar(100) not null
 );
 
 
 CREATE TABLE EMPLEADOS (
 Login varchar(100) not null,
 Sueldo int not null,
 FechaIngreso date not null,
 userId int auto_increment,
 FOREIGN KEY (userId) REFERENCES USUARIOS(userId)
 );

SELECT * FROM USUARIOS;
SELECT * FROM EMPLEADOS;

SELECT * FROM USUARIOS
INNER JOIN EMPLEADOS ON USUARIOS.Login = EMPLEADOS.Login;

INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user01','8837', '2000-01-11');


INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user02','8837', '2000-01-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user03','15000', '2000-01-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user04','15000', '2000-01-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user05','7812', '2000-01-18');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user06','7812', '2000-01-18');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user07','10200', '2000-01-18');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user08','10200', '2000-01-18');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user09','13800', '2001-05-20');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user10','13800', '2001-05-20');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user11','18880', '2001-05-20');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user12','18880', '2001-05-20');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user13','8000', '2001-07-13');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user14','8000', '2001-07-13');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user15','6000', '2001-07-13');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user16','19470', '2001-07-13');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user17','19470', '2001-07-13');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user18','10200', '2001-07-16');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user19','10200', '2001-07-16');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user20','25000', '2001-07-16');



INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user21','7812', '2001-07-16');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user22','7812', '2001-07-16');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user23','12210', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user24','12210', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user25','7500', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user26','15020', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user27','15020', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user28','25000', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user29','7812', '2001-11-24');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user30','15020', '2001-12-12');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user31','15020', '2001-12-12');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user32','12210', '2001-12-12');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user33','12210', '2001-12-12');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user34','19740', '2008-08-17');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user35','19740', '2008-08-17');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user36','8000', '2008-08-17');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user37','8000', '2008-08-17');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user38','18880', '2009-06-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user39','18880', '2009-06-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user40','14000', '2009-06-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user41','13800', '2009-06-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user42','13800', '2009-06-11');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user43','15000', '2009-10-06');



INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user44','15000', '2009-10-06');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user45','13000', '2009-10-06');
INSERT INTO `prueba_1`.`EMPLEADOS` (`Login`,`Sueldo`, `FechaIngreso`) VALUES ('user46','8837', '2009-10-06');


SELECT * FROM USUARIOS
WHERE userId NOT IN (6, 7, 9, 10);

UPDATE EMPLEADOS
SET Sueldo = Sueldo * 1.1
WHERE FechaIngreso >= '2000-01-01' AND FechaIngreso <= '2001-12-31';


SELECT Nombre, PATERNO, FechaIngreso
FROM USUARIOS 
JOIN EMPLEADOS  ON USUARIOS.userId = EMPLEADOS.userId
WHERE PATERNO LIKE 'T%'
AND Sueldo > 10000
ORDER BY fechaIngreso DESC;


SELECT *
FROM USUARIOS 
JOIN EMPLEADOS  ON USUARIOS.userId = EMPLEADOS.userId

