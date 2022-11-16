/*---------CREANDO LAS ENTIDADES Y SUS RELACIONES--------*/

--tablas o entidades
CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int8,
  "role_id" int
);

CREATE TABLE "user_courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "course_id" uuid
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "duration" int NOT NULL,
  "score" float,
  "category_id" int,
  "course_id" uuid
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL DEFAULT 'student'
);

--relaciones

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

/*---AGREGANDO 2 registros por tabla------*/

-- insertando registros a tabla roles
insert into roles (
	name

) values 
(
	'student'
),
(
	'teacher'
),
(
	'admin'
);


-- insertando registros a la tabla users
insert into users (
	id,
	name,
	email,
	password,
	age,
	role_id
) values 
(
	'af66f5c4-6517-11ed-9022-0242ac120002',
	'Sahid Kick',
	'sahid@academlo.com',
	'root',
	22,
	2
),
(
	'e7fa8c2a-6517-11ed-9022-0242ac120002',
	'Jose Perez',
	'jose@academlo.com',
	'1234',
	26,
	1
);

--insertando registros en la tabla courses
insert into courses (
	id,
	title,
	description,
	level,
	teacher	
) values (
	'2294f270-6519-11ed-9022-0242ac120002',
	'Desarrollo Fronted con JS',
	'En este curso aprenderás a consumir APIs con el uso de la biblioteca REACT',
	'medio',
	'Benjamin Flores'
),
(
	'9f31ebbc-6519-11ed-9022-0242ac120002',
	'Desarrollo Backend con JS',
	'En este curso aprenderás toda la lógica para la creación y consumo de APIs',
	'avanzado',
	'Sahid Kick'
);


--insertando registros en la tabla categories
insert into categories (
	name
) values (
	'Desarrollo Web'
),
(
	'Ciencia de Datos'
);

--insertando registros en la tabla course_videos
insert into course_videos  (
	id,
	title,
	url,
	duration,
	score,
	category_id,
	course_id
) values (
	'ae0be756-6540-11ed-9022-0242ac120002',
	'Ruta de recipes, cors, introduccion al testing',
	'https://us02web.zoom.us/rec/share/H4XZEC8mKRo5AoaIIfz1FCHZejujAJ4_zFpy4C_wzNggblhDYX0fOdCRYKsNImb6.6A0I-OdX6nCdlnrq',
	180,
	4.5,
	1,
	'9f31ebbc-6519-11ed-9022-0242ac120002'
),(
	'b737342c-6543-11ed-9022-0242ac120002',
	'Testing, Seeders',
	'https://us02web.zoom.us/rec/share/CMG3LHLBFjLIsnYDWOyLdFUZ8WGo-c9M68gbk2Xm00vi71xxQqB1TbEcY371pxIH.S8P2jh6t9gBNX7Qj',
	191,
	4.7,
	1,
	'9f31ebbc-6519-11ed-9022-0242ac120002'
);

--insertando registros en la tabla user_courses
insert into user_courses (
	id,
	user_id,
	course_id 
) values (
	'd9eeda46-6544-11ed-9022-0242ac120002',
	'e7fa8c2a-6517-11ed-9022-0242ac120002',
	'9f31ebbc-6519-11ed-9022-0242ac120002'
),(
	'1e23b394-6545-11ed-9022-0242ac120002',
	'af66f5c4-6517-11ed-9022-0242ac120002',
	'9f31ebbc-6519-11ed-9022-0242ac120002'
);
