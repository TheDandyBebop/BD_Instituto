/* Consultas */

/* Alumnos que estan cursando materias de segundo de SMR */
select a.nombre, asg.ciclo, asg.curso 
from alumnos a, asignaturas asg, matriculaciones m 
where m.Cod_asignaturas = asg.Cod_asignaturas and m.N_Matricula = a.N_Matricula 
AND asg.ciclo like 'SMR' AND asg.curso like 'Segundo';

/*
 nombre | ciclo |  curso  
--------+-------+---------
 Pablo  | SMR   | Segundo
 Carla  | SMR   | Segundo
 Luis   | SMR   | Segundo
 Julia  | SMR   | Segundo
 Miguel | SMR   | Segundo
*/


/*  ¿Cuántos profesores componen el departamento de informática? */
select count(cod_dep) from integrantes_dep where cod_dep = 1;

/*
 count 
-------
     6
(1 row)
*/

/* Nombre de los alumnos que han repetido alguna asignatura. 
Se puede hacer de 2 formas. viendo los alumnos que han sacado menos de un 5 por ejemplo
La otra forma es ver los alumnos que aparezcan 2 veces o mas en alguna materia
*/
select nombre from alumnos, matriculaciones 
where alumnos.n_matricula = matriculaciones.n_matricula AND nota_final < 5; 
/*NOTA: como los genere aleatoriamente no coinciden los repetidores con las notas que tienen pero si fuera asi, mostraria a los mismos*/

select n_matricula, cod_asignaturas from matriculaciones group by (n_matricula, cod_asignaturas) 
having (count(n_matricula)>1) Order by n_matricula;
/*
 n_matricula | cod_asignaturas 
-------------+-----------------
           5 | BD_Dam
           7 | PG_Dam
           9 | BD_Dam
          13 | BD_Dam
          17 | BD_Dam
(5 rows)
*/


/* Aulas que no tienen ningún departamento que se responsabilice de ellas */

select nombre, aulas.cod_aula from aulas left join dep_encargado_aulas on 
aulas.cod_aula = dep_encargado_aulas.cod_aula where dep_encargado_aulas.cod_aula is null;
/*
 nombre  | cod_aula 
---------+----------
 Aula 10 | 1A10
 Aula 11 | 1A11
 Aula 12 | 1A12
 Aula 13 | 1A13
(4 rows)
*/

/* ¿Qué asignaturas son impartidas por E. Casado?  */

SELECT p.nombre, asg.nombre FROM profesores p inner JOIN asignaturas asg on p.id = asg.ID_prof 
where p.nombre like 'E. Casado';


/*
  nombre   |        nombre         
-----------+-----------------------
 E. Casado | Programacion
 E. Casado | Seguridad Informatica
(2 rows)
*/


/* ¿De cuántas aulas es responsable el departamento de informática? */
Select count(a.cod_aula) FROM aulas a inner JOIN dep_encargado_aulas d on d.cod_aula = a.cod_aula 
where d.Cod_Dep = 1;
/*
 count 
-------
     4
(1 row)
*/
