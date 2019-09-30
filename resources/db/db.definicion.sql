/*
Crear una página web para compartir los proyectos que realizan los alumnos.

Los alumnos se deberán crear un perfil en la página. El acceso se puede
realizar con un usuario y una contraseña o bien mediante el login
social mediante github.

El perfil del alumno tendrá una foto, su nombre y enlaces a redes sociales
profesionales: github y Linkedin
*/

/* Usuario tiene FOREIGN KEY a Usuario*/
DROP TABLE IF EXISTS UsuarioParticipaEnProyecto;

DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  login varchar(255),
  pass varchar(255),
  foto varchar(255),
  nombre varchar(255),
  github varchar(255),
  linkedin varchar(255),
  PRIMARY KEY (id)
);


/*
-- Proyectos --

Un proyecto de los alumnos debe tener la posibilidad de tener una página
dentro de la aplicación web. Para hacer esto en la base de datos se guardará
un campo de texto en el que estará el HTML.

El proyecto también debe tener un enlace a la página de github y
una imagen o logotipo.
*/

DROP TABLE IF EXISTS Proyecto;
CREATE TABLE Proyecto (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  nombre varchar(255),
  pagina TEXT,
  imagen varchar(255),
  logotipo varchar(255),
  PRIMARY KEY (id)
);

/*
En un proyecto pueden participar varios alumnos, todos los alumnos
que participen en el proyecto podrán editar la información de este.
*/

DROP TABLE IF EXISTS UsuarioParticipaEnProyecto;
CREATE TABLE UsuarioParticipaEnProyecto (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  id_usuario MEDIUMINT NOT NULL,
  id_proyecto MEDIUMINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id),
  FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id)
);

/*

-- Curso y módulo --
Existen distintos tipo de proyectos según  el módulo en el que se lleven
a cabo. Por ejemplo:
Los proyectos del año 2018/2019 del módulo de programación.


*/

DROP TABLE IF EXISTS Modulo;
CREATE TABLE Modulo (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  nombre varchar(255),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Curso;
CREATE TABLE Curso (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  nombre varchar(255),
  PRIMARY KEY (id)
);

/* Una vez creadas las nuevas entidades
podemos asociarlas a la entidad ya creada
de proyecto */

ALTER TABLE Proyecto
  ADD COLUMN id_modulo MEDIUMINT NOT NULL,
  ADD FOREIGN KEY fk_modulo(id_modulo) REFERENCES Modulo(id);
