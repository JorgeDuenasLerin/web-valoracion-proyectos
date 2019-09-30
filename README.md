# Web valoración de proyectos

## Requisitos

Crear una página web para compartir los proyectos que realizan los alumnos.

Los alumnos se deberán crear un perfil en la página. El acceso se puede
realizar con un usuario y una contraseña o bien mediante el login
social mediante github.

El perfil del alumno tendrá una foto, su nombre y enlaces a redes sociales
profesionales: github y Linkedin


### Proyectos
Un proyecto de los alumnos debe tener la posibilidad de tener una página
dentro de la aplicación web. Para hacer esto en la base de datos se guardará
un campo de texto en el que estará el HTML.

En un proyecto pueden participar varios alumnos, todos los alumnos
que participen en el proyecto podrán editar la información de este.

El proyecto también debe tener un enlace a la página de github y
una imagen o logotipo.


### Curso y módulo
Existen distintos tipo de proyectos según  el módulo en el que se lleven
a cabo. Por ejemplo:
Los proyectos del año 2018/2019 del módulo de programación.


### Comentarios
Todos los alumnos autentificados pueden dejar comentarios en los
proyectos de los otros.


### Valoraciones
A parte de los comentarios, por cada año/curso los usuarios tienen puntos
para dar a los proyectos que más les hayan gustado.

Los puntos que se pueden dar por a cada promoción son:
5, 4, 3, 2, 1

### Listados
Habrá una pantalla pública que no requiera autentificación
en la que se podrán aplicar diversos filtros.
.- Ordenar por valoraciones
.- Filtrar por promoción
.- Filtrar por año, etc.

La vista del detalle de cada proyecto también será pública


1.- Tarea.
Genera el entidad relación
Genera una consulta para sacar:
.- Todos los campos del proyecto con id 37
.- Todas las valoraciones que tenga el proyecto id 49
.- Todos los proyectos de un alumno
.- Listado de proyectos del curso 2018/19 de programación



## Ejecución

Del servidor de prueba
```
# desde la ruta raíz
$ bin/runserver.sh
```

Limpiar archivos README.md de los directorios
```
# desde la ruta raíz
$ bin/cleanreadme.sh
```
