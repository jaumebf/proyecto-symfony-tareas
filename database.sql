CREATE DATABASE IF NOT EXISTS symfony_master;
USE symfony_master;

CREATE TABLE IF NOT EXISTS users(
id          int(255) auto_increment not null,
nole        varchar(50),
name        varchar(100),
surname     varchar(200),
email       varchar(255),
password    varchar(255),
created_at  datetime,
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO users VALUES(NULL, 'ROLE_USER', 'Jaume', 'Balañá', 'jaume@jaume.com', '1234', CURTIME());
INSERT INTO users VALUES(NULL, 'ROLE_USER', 'Roger', 'Perex', 'roger@perez.com', '1234', CURTIME());
INSERT INTO users VALUES(NULL, 'ROLE_USER', 'Crles', 'Balañá', 'carles@jaume.com', '1234', CURTIME());

CREATE TABLE IF NOT EXISTS tasks(
id          int(255) auto_increment not null,
user_id     int(255),
title       varchar(255),
content     text,
priority    varchar(20),
hours       int(100),
created_at  datetime,
CONSTRAINT pk_tasks PRIMARY KEY(id),
CONSTRAINT fk_task_user FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;

INSERT INTO tasks VALUES(NULL, 1, 'Tarea 1', 'Contenido de prueba 1', 'hight', 40, CURTIME());
INSERT INTO tasks VALUES(NULL, 1, 'Tarea 2', 'Contenido de prueba 2', 'hight', 40, CURTIME());
INSERT INTO tasks VALUES(NULL, 2, 'Tarea 3', 'Contenido de prueba 3', 'hight', 40, CURTIME());
INSERT INTO tasks VALUES(NULL, 2, 'Tarea 4', 'Contenido de prueba 4', 'hight', 40, CURTIME());
INSERT INTO tasks VALUES(NULL, 3, 'Tarea 5', 'Contenido de prueba 5', 'hight', 40, CURTIME());
