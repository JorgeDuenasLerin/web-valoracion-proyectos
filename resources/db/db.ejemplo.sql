/*
Datos de prueba de la base datos
*/
DELETE FROM UsuarioParticipaEnProyecto WHERE id < 1000;
DELETE FROM Comentario WHERE id < 1000;
DELETE FROM Valoracion WHERE id < 1000;
DELETE FROM Proyecto WHERE id < 1000;
DELETE FROM Modulo WHERE id < 1000;
DELETE FROM Curso WHERE id < 1000;
DELETE FROM Usuario WHERE id < 1000;

INSERT INTO Usuario (id, login, pass, foto, nombre, github, linkedin)
 VALUES
  (1, 'jorge', '1234', NULL, 'Jorge', NULL, NULL),
  (2, 'sara', '1234', NULL, 'Sara', NULL, NULL),
  (3, 'pepe', '1234', NULL, 'José', NULL, NULL)
;

INSERT INTO Modulo
  VALUES
  (1, 'Programacion'),
  (2, 'DWES')
;

INSERT INTO Curso
  VALUES
  (1, '2018/19'),
  (2, '2019/20')
;

INSERT INTO Proyecto (id, nombre, pagina, id_modulo, id_curso)
  VALUES
  (1, 'Pacman', '<h1>Página de pacman</h1><p>Página de pacman</p>', 1 , 1),
  (2, 'Tetris', '<h1>Tetris</h1><p>Página de Tetris</p>', 1 , 1)
;

INSERT INTO UsuarioParticipaEnProyecto
  VALUES
  (1, 1, 1),
  (2, 2, 1),
  (3, 3, 2)
;

INSERT INTO Comentario (id, id_usuario, id_proyecto, texto)
  VALUES
  (1, 1, 1, 'Es un gran proyecto!!'),
  (2, 3, 1, 'Es una basura, el mío es mejor'),
  (3, 1, 1, 'No tienes ni idea')
;

INSERT INTO Valoracion (id, id_usuario, id_proyecto, valoracion)
  VALUES
  (1, 1, 2, 1),
  (2, 2, 2, 4),
  (3, 3, 1, 1)
;
