DROP DATABASE IF EXISTS INSTITUTO;
CREATE DATABASE INSTITUTO;

DROP TABLE IF EXISTS profesores CASCADE;
    CREATE TABLE profesores (
        DNI char(9) NOT NULL CONSTRAINT formato_DNI CHECK(DNI ~ '^[0-9]{8}[A-Z]$'),
        Nombre varchar(15) NOT NULL,
        Especialidad VARCHAR(40) NOT NULL,
        TLF INT NOT NULL,
        ID INT,
        PRIMARY KEY (ID)
    );

DROP TABLE IF EXISTS departamentos CASCADE;
    CREATE TABLE departamentos (
        Cod_Dep INT,
        Nombre varchar(40) NOT NULL,
        PRIMARY KEY(Cod_Dep)
    );

DROP TABLE IF EXISTS Integrantes_Dep CASCADE;
    CREATE TABLE Integrantes_Dep (
        Cod_Dep INT,
        ID_prof INT NOT NULL,
        PRIMARY KEY (ID_prof),
        FOREIGN KEY (ID_prof) REFERENCES profesores(ID),
        FOREIGN KEY (Cod_Dep) REFERENCES departamentos(Cod_Dep)
    );

DROP TABLE IF EXISTS aulas CASCADE;
    CREATE TABLE aulas (
        Cod_aula varchar(9),
        Descripcion varchar(150),
        Planta VARCHAR(15) NOT NULL,
        Nombre varchar(40),
        Numero INT,
        PRIMARY KEY(Cod_aula)
    );

DROP TABLE IF EXISTS Dep_encargado_aulas CASCADE;
    CREATE TABLE Dep_encargado_aulas (
        Cod_aula varchar(9),
        Cod_Dep INT,
        PRIMARY KEY(Cod_aula),
        FOREIGN KEY (Cod_aula) REFERENCES aulas(Cod_aula),
        FOREIGN KEY (Cod_Dep) REFERENCES departamentos(Cod_Dep)
    );

DROP TABLE IF EXISTS Ciclos CASCADE;
    CREATE TABLE Ciclos (
        Siglas varchar(9),
        Nombre varchar(50) NOT NULL,
        PRIMARY KEY(Siglas)
    );

DROP TABLE IF EXISTS Asignaturas CASCADE;
    CREATE TABLE Asignaturas (
        Cod_asignaturas varchar(9),
        ID_prof INT,
        Cod_aula VARCHAR(9),
        Nombre varchar(50) NOT NULL,
        Curso VARCHAR(15) NOT NULL,
        Horas INT NOT NULL,
        Ciclo varchar(9),
        Contenido VARCHAR(30) NOT NULL,
        PRIMARY KEY(Cod_asignaturas),
        FOREIGN KEY (Cod_aula) REFERENCES aulas(Cod_aula),
        FOREIGN KEY (ID_prof) REFERENCES profesores(ID),
        FOREIGN KEY (Ciclo) REFERENCES Ciclos(Siglas)
    );


DROP TABLE IF EXISTS Alumnos CASCADE;
    CREATE TABLE Alumnos (
        N_Matricula int,
        TLF INT NOT NULL,
        Direccion VARCHAR(40) NOT NULL,
        Nombre varchar(40) NOT NULL,
        Apellido varchar(40) NOT NULL,
        F_Nacimiento DATE NOT NULL,
        Ciclo varchar(9),
        PRIMARY KEY(N_Matricula),
        FOREIGN KEY (Ciclo) REFERENCES Ciclos(Siglas)
    );

DROP TABLE IF EXISTS Becas CASCADE;
    CREATE TABLE Becas (
        Codigo_beca varchar(9),
        Tipo_Beca varchar(40) NOT NULL,
        PRIMARY KEY(Codigo_beca)
    );


DROP TABLE IF EXISTS Becas_Asignadas CASCADE;
    CREATE TABLE Becas_Asignadas (
        Codigo_beca varchar(9),
        N_Matricula SMALLINT,
        Importe VARCHAR(10) NOT NULL,
        Fecha DATE NOT NULL,
        CONSTRAINT CP_BecasAsignadas PRIMARY KEY(Codigo_beca,N_Matricula),
        FOREIGN KEY (Codigo_beca) REFERENCES Becas(Codigo_beca),
        FOREIGN KEY (N_Matricula) REFERENCES Alumnos(N_Matricula)
    );

DROP TABLE IF EXISTS Matriculaciones CASCADE;
    CREATE TABLE Matriculaciones (
        Cod_asignaturas varchar(9),
        N_Matricula SMALLINT,
        Nota_Final SMALLINT,
        Año_Curso VARCHAR(7) CONSTRAINT formato_Curso CHECK(Año_Curso ~ '^[0-9]{4}-[0-9]{2}$') NOT NULL,
        CONSTRAINT CP_Matriculaciones PRIMARY KEY(N_Matricula,Cod_asignaturas,Año_Curso),
        FOREIGN KEY (Cod_asignaturas) REFERENCES Asignaturas(Cod_asignaturas),
        FOREIGN KEY (N_Matricula) REFERENCES Alumnos(N_Matricula)
    );
