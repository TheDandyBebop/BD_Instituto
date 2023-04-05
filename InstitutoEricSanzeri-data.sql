/* Genero Profesores */
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530A','Javi','Matematico','611747106','206001'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530B','E. Casado','Físico','611747106',206012); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530C','Jose Luis','Ingeniero electronico','611747106','206002'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530D','Santi','Ingeniero electronico','611747106','206003'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530E','Carlos','Ingeniero Tec. Informático','611747106','206004'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530F','Paqui','¿¿ Informatica ??','611747106','206005'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530G','Elisa','Economista','611747106','206006'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530H','Ana','Economista','611747106','206007'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530I','Elvira','Filología Inglesa','611747106','206008'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530J','Silvia','Filología Inglesa','611747106','206009'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530K','Elena','Filología Inglesa','611747106','206010'); 
INSERT INTO profesores(DNI,NOMBRE,Especialidad,TLF,ID) VALUES ('18445530L','Sara','Filología Inglesa','611747106','206011'); 

/* Genero departamentos */
INSERT INTO departamentos(Cod_Dep, NOMBRE) VALUES (1,'Informatica'); 
INSERT INTO departamentos(Cod_Dep, NOMBRE) VALUES (2,'Matematicas'); 
INSERT INTO departamentos(Cod_Dep, NOMBRE) VALUES (3,'Economia'); 
INSERT INTO departamentos(Cod_Dep, NOMBRE) VALUES (4,'Tecnologia'); 
INSERT INTO departamentos(Cod_Dep,NOMBRE) VALUES (5,'Lengua castellana'); 
INSERT INTO departamentos(Cod_Dep,NOMBRE) VALUES (6,'Geografia e Historia'); 
INSERT INTO departamentos(Cod_Dep,NOMBRE) VALUES (7,'Física y Quimica'); 
INSERT INTO departamentos(Cod_Dep,NOMBRE) VALUES (8,'Ingles');

/* vinculo profesores y departamentos */
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (1,206001);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (1,206012);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (1,206002);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (1,206004);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (1,206005);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (1,206003);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (3,206006);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (3,206007);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (8,206008);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (8,206009);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (8,206010);
INSERT INTO Integrantes_Dep(Cod_Dep,ID_prof) VALUES (8,206011);

/* Genero las aulas */
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('2A19','Se limpió la clase a principio de curso y se quitaron las estanterías de FyQ','Segunda','Aula 19','19');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1I03','Hubo que montar las mesas y las sillas en septiembre','Primera','Informatica 03','03');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1I02','No estaba pensada para tantos ordenadores','Primera','Informatica 02','02');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1I01','Tenía una disposición en forma de U que se cambió. Tenía la maqueta del canfranero','Primera','Informatica 01','01');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('2A10','La usan para dar ingles','Segunda','Aula 10','10');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1AM','La usan para el de la real academia de la lengua','Primera','Aula Magna','0');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1A10','Aulas de la ESO','Primera','Aula 10','10');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1A11','Aulas de la ESO','Primera','Aula 11','11');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1A12','Aulas de la ESO','Primera','Aula 12','12');
INSERT INTO aulas(Cod_aula,Descripcion,Planta,Nombre,Numero) VALUES ('1A13','Aulas de la ESO','Primera','Aula 13','13');

/* Vinculo aulas y departamentos */
INSERT INTO Dep_encargado_aulas(Cod_aula,Cod_Dep) VALUES ('1I01',1);
INSERT INTO Dep_encargado_aulas(Cod_aula,Cod_Dep) VALUES ('1I02',1);
INSERT INTO Dep_encargado_aulas(Cod_aula,Cod_Dep) VALUES ('1I03',1);
INSERT INTO Dep_encargado_aulas(Cod_aula,Cod_Dep) VALUES ('2A19',1);
INSERT INTO Dep_encargado_aulas(Cod_aula,Cod_Dep) VALUES ('2A10',8);
INSERT INTO Dep_encargado_aulas(Cod_aula,Cod_Dep) VALUES ('1AM',5);

/* Meto los ciclos */
INSERT INTO ciclos(Siglas,Nombre) VALUES ('ASC','CFGS en Animacion Socio-Cultural');
INSERT INTO ciclos(Siglas,Nombre) VALUES ('SMR','CFGM en Sistemas Microinformaticos y Redes');
INSERT INTO ciclos(Siglas,Nombre) VALUES ('DAM','CFGS en Diseño de Aplicaciones Multimedia');
INSERT INTO ciclos(Siglas,Nombre) VALUES ('DAW','CFGS en Diseño de Aplicaciones Web');

/* Meto las asignaturas que estan en el documento */
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('LM_Dam','206001','1I03','Lenguaje de marcas','Primero',3,'HTML,XML,CSS','DAM'); 
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('PG_Dam','206012','1I03','Programacion','Primero',8,'Java','DAM'); 
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('SO_Dam','206002','1I03','Sistemas Operativos','Primero',5,'Windows, Ubuntu, Debian','DAM'); 
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('BD_Dam','206004','1I03','Bases de datos','Primero',6,'MariaDB, PostgreSQL','DAM'); 
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('ED_Dam','206005','1I03','Entornos de desarrollo','Primero',6,'IDE Eclipse, IntelliJ','DAM'); 
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('FOL_Dam','206006','1AM','FOL','Primero',5,'Estatuto y seguridad','DAM');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('ING_Dam','206004','2A10','Ingles','Primero',2,'Ingles Tecnico','DAM');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('AD_Dam','206004','1I02','Acceso a datos','Segundo',8,'Java + SQL','DAM');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('PPS_Dam','206004','1I02','Programacion Procesos y Servicios','Segundo',10,'No especifica','DAM');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('RL_SMR','206001','2A19','Redes Locales','Primero',5,'IP, Encaminamientos','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('ME_SMR','206002','2A19','Montaje y mantenimiento de equipos','Primero',4,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('SOM_SMR','206003','2A19','Sistemas Operativos Monopuestos','Primero',6,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('ING_SMR','206004','2A19','Ingles','Primero',3,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('FOL_SMR','206006','2A19','FOL','Primero',5,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('AI_SMR','206002','2A19','Aplicaciones informaticas','Primero',3,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('SI_SMR','206012','1I01','Seguridad Informatica','Segundo',7,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('AW_SMR','206005','1I01','Aplicaciones WEB','Segundo',4,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('SOR_SMR','206003','1I01','Sistemas operativos en red','Segundo',5,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('SR_SMR','206004','1I01','Servicios en red','Segundo',6,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('ING2_SMR','206004','2A10','Ingles 2','Segundo',3,'No especifica','SMR');
INSERT INTO Asignaturas(Cod_asignaturas,ID_prof,Cod_aula,Nombre,Curso,Horas,Contenido,Ciclo) VALUES ('IAC_SMR','206006','1AM','Iniciación a la actividad emprendedora','Segundo',3,'No especifica','SMR');


/* Genero alumnos aleatorios, gracias Chat GePeTo */
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(1,'611747105','Pico ASPE 3','R','Abanes','26/02/2000','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(2,'611747106','Calle Flores 12','Luisa','García','15/06/1999','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(3,'611747107','Avenida del Parque 45','Pedro','Martínez','19/10/2001','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(4,'611747108','Plaza Mayor 2','Ana','Fernández','03/01/2002','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(5,'611747109','Calle San Juan 14','Juan','Hernández','17/09/2000','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(6,'611747110','Avenida de la Libertad 7','Sara','Sánchez','28/05/1998','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(7,'611747111','Calle Granada 9','Diego','Romero','12/08/2003','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(8,'611747112','Paseo de la Alameda 27','Elena','Gómez','23/11/1999','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(9,'611747113','Calle Mayor 5','Antonio','Pérez','06/04/2001','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(10,'611747114','Plaza de la Constitución 3','María','López','09/12/1997','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(11,'611747115','Calle del Sol 18','Carlos','Gutiérrez','31/07/2002','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(12,'611747116','Avenida del Mar 10','Lucía','Ruiz','25/03/1996','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(13,'611747117','Calle Alfonso X 6','Javier','González','14/02/2004','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(14,'611747118','Paseo de la Castellana 25','Isabel','Rodríguez','27/09/1998','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(15,'611747119','Calle San Francisco 7','Miguel','Díaz','08/11/2000','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(16,'611747120','Avenida de la Victoria 14','Paula','Alonso','20/01/2003','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(17,'611747121','Calle de la Fuente 8','Juan Carlos','Márquez','05/07/1999','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(18,'611747122','Plaza del Ayuntamiento 4','Laura','Jiménez','18/09/2001','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(19,'611747119','Calle de la Luna 6','Sofía','Moreno','29/06/2000','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(20,'611747120','Avenida de la Paz 3','Pedro','García','12/11/2002','DAM');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(21,'611747134','Calle del Sol 5','María','Cabrera','09/07/2003','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(22,'611747135','Avenida del Mar 12','Pablo','Vargas','15/11/2001','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(23,'611747136','Calle de la Palma 14','Carla','Soto','22/03/1999','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(24,'611747137','Plaza Mayor 1','Luis','Fernández','07/09/2000','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(25,'611747138','Calle del Rosal 8','Julia','Hernández','18/12/1997','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(26,'611747139','Avenida de la Victoria 17','Miguel','González','01/06/2002','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(27,'611747140','Calle del Cid 3','Isabel','Rojas','14/02/2001','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(28,'611747141','Plaza de la Cruz 6','Javier','Castro','26/05/1998','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(29,'611747142','Avenida de la Libertad 11','Lucía','Álvarez','08/10/2003','SMR');
INSERT INTO Alumnos(N_Matricula,TLF,Direccion,Nombre,Apellido,F_Nacimiento,ciclo) VALUES(30,'611747143','Calle de la Feria 19','Antonio','Sánchez','19/04/1997','SMR');

/* Creo distintas becas */
INSERT into Becas(Codigo_beca,Tipo_Beca) VALUES ('A121','Beca Transporte');
INSERT into Becas(Codigo_beca,Tipo_Beca) VALUES ('A122','Beca Comedor');
INSERT into Becas(Codigo_beca,Tipo_Beca) VALUES ('A123','Beca Estudios');
INSERT into Becas(Codigo_beca,Tipo_Beca) VALUES ('A124','Beca Deportiva');
INSERT into Becas(Codigo_beca,Tipo_Beca) VALUES ('A125','Beca de Investigación');
INSERT into Becas(Codigo_beca,Tipo_Beca) VALUES ('A126','Beca de Movilidad');

/* Vinculo becas con alumnos */
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A125','20','1000€','20/02/2020');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A123','5','1500€','03/03/2021');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A124','10','800€','18/05/2021');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A126','20','1200€','02/09/2020');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A121','28','600€','10/12/2021');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A125','12','1000€','05/06/2021');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A122','18','500€','15/02/2022');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A124','3','700€','22/08/2021');
INSERT INTO Becas_Asignadas(Codigo_beca,N_Matricula,Importe,Fecha) VALUES('A123','7','1200€','09/11/2021');

/* Meto a los Alumnos de primero de Dam */
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) Values('PG_Dam','1',8,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','2',7,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','3',9,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','4',6,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','5',8,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','6',5,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','7',9,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','8',8,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','9',7,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','10',6,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','11',8,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','12',7,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','13',9,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','14',5,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','15',7,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','16',8,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','17',6,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','18',9,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('BD_Dam','19',8,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','20',7,'2019-20');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES('PG_Dam','7',2,'2019-20');


/* Meto a los Alumnos de Primero de Dam que repitieron */
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('PG_Dam','3','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('BD_Dam','5','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('PG_Dam','7','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('BD_Dam','9','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('PG_Dam','11','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('BD_Dam','13','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('PG_Dam','15','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('BD_Dam','17','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('PG_Dam','19','2022-23');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('BD_Dam','20','2022-23');

/* Meto a los Alumnos de primero de SMR */
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('RL_SMR','20','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('ME_SMR','21','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso,Nota_Final) VALUES('RL_SMR','22','2020-21',9);
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('ME_SMR','23','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso,Nota_Final) VALUES('RL_SMR','24','2020-21',8);
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('ME_SMR','25','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('RL_SMR','26','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso,Nota_Final) VALUES('ME_SMR','27','2020-21',7);
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('RL_SMR','28','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES('ME_SMR','29','2020-21');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso,Nota_Final) VALUES('RL_SMR','30','2020-21',6);

/* Meto a los Alumnos de segundo de SMR */
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES ('AW_SMR', 22, 7, '2021-22');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES ('SR_SMR', 23, '2021-22');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES ('AW_SMR', 24, 9, '2021-22');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Año_Curso) VALUES ('SR_SMR', 25, '2021-22');
INSERT INTO Matriculaciones(Cod_asignaturas,N_Matricula,Nota_Final,Año_Curso) VALUES ('AW_SMR', 26, 6, '2021-22');
