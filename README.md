## DB Cursos API

El siguiente repositorio se creó una base de datos enfocada en una API para una web de cursos en PostgreSQL cumpliendo las 3 reglas para la normalización de base de datos. Se crearon las siguientes tablas o entidades: users, user_courses (tabla pivote), courses, course_videos, categories, roles

## Relaciones entre tablas

- De uno a muchos: users y roles, categories y course_videos, course_videos y course

- De muchos a muchos: users y courses



## Base de Datos

[Base de datos creada](https://dbdiagram.io/d/637313d0c9abfc611172aa8a)


## Recursos Utilizados

- PostgreSQL

- DBeaver

- VSCode