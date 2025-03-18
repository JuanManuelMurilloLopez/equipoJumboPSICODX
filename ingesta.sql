INSERT INTO preguntasOtis (idPreguntaOtis, idPrueba, numeroPregunta, pregunta)
VALUES
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 1, '¿Cuál de estas cinco palabras indica mejor lo que es una manzana?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 2, '¿Cuál de estas cinco palabras indica mejor lo que es un círculo?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 3, 'Si reordenamos las letras "ROFMA", ¿qué palabra se forma?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 4, 'Si reordenamos las letras "GATO", ¿qué palabra se forma?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 5, '¿Cuál de estas cinco cosas no pertenece al mismo grupo?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 6, '¿Qué número sigue en esta serie: 4, 8, 12, 16, 20, ...?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 7, 'Si el día después de mañana es domingo, ¿qué día fue ayer?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 8, 'Un comerciante compró algunos artículos por 27 pesos y los vendió por 30 pesos. ¿Cuánto ganó?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 9, 'Si 3 hombres pueden hacer un trabajo en 7 días, ¿cuántos hombres se necesitan para hacerlo en 1 día?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 10, 'Si dos pasteles cuestan 30 centavos, ¿cuántos pasteles se pueden comprar con 90 centavos?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 11, '¿Cuál de estos cinco números no pertenece al mismo grupo? 2, 4, 8, 12, 16'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 12, 'Si un tren viaja a 60 kilómetros por hora, ¿cuánto tiempo tardará en recorrer 300 kilómetros?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 13, 'Si una persona tiene 14 años y su hermano tiene el doble de edad, ¿cuántos años tendrá el hermano cuando la persona tenga 40 años?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 14, 'En una carrera, si adelantas al segundo, ¿en qué posición terminarás?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 15, 'Si 7 hombres construyen 6 casas en 3 días, ¿cuántas casas construirán 21 hombres en 7 días?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 16, 'Si uno dice "Un hombre puede hacer un trabajo en 4 días" y otro dice "Cuatro hombres pueden hacer el trabajo en 1 día", ¿quién tiene razón?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 17, 'Si un objeto cae 16 pies en el primer segundo, 48 pies en los dos primeros segundos, y 80 pies en los tres primeros segundos, ¿cuántos pies caerá en el cuarto segundo?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 18, 'Completa la analogía: Pájaro es a aire como pez es a...'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 19, 'Si Juan tiene 5 naranjas y Pedro tiene 8 naranjas, ¿cuántas naranjas debe dar Pedro a Juan para que ambos tengan la misma cantidad?'),
(UUID(), (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'), 20, 'Si X es mayor que Y, y Y es mayor que Z, entonces X es __ que Z.');



-- Opciones para la pregunta 1: ¿Cuál de estas cinco palabras indica mejor lo que es una manzana?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'Roja', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'Redonda', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Sabrosa', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Fruta', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'Comida', FALSE);

-- Opciones para la pregunta 2: ¿Cuál de estas cinco palabras indica mejor lo que es un círculo?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'Curva', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'Redondo', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Figura', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Punto', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'Línea', FALSE);

-- Opciones para la pregunta 3: Si reordenamos las letras "ROFMA", ¿qué palabra se forma?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'FRAMO', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'FORMA', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'MAFRO', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'FORMO', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'MARFO', FALSE);

-- Opciones para la pregunta 4: Si reordenamos las letras "GATO", ¿qué palabra se forma?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'GOTA', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'TOGA', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'ATGO', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'OGAT', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'TOAG', FALSE);

-- Opciones para la pregunta 5: ¿Cuál de estas cinco cosas no pertenece al mismo grupo?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'Patata', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'Zanahoria', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Manzana', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Cebolla', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'Remolacha', FALSE);

-- Opciones para la pregunta 6: ¿Qué número sigue en esta serie: 4, 8, 12, 16, 20, ...?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '22', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '24', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '25', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '26', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '28', FALSE);

-- Opciones para la pregunta 7: Si el día después de mañana es domingo, ¿qué día fue ayer?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'Miércoles', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'Jueves', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Viernes', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Sábado', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'Martes', FALSE);

-- Opciones para la pregunta 8: Un comerciante compró algunos artículos por 27 pesos y los vendió por 30 pesos. ¿Cuánto ganó?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '2 pesos', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '3 pesos', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '4 pesos', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '27 pesos', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '30 pesos', FALSE);

-- Opciones para la pregunta 9: Si 3 hombres pueden hacer un trabajo en 7 días, ¿cuántos hombres se necesitan para hacerlo en 1 día?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '3 hombres', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '7 hombres', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '10 hombres', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '21 hombres', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '24 hombres', FALSE);

-- Opciones para la pregunta 10: Si dos pasteles cuestan 30 centavos, ¿cuántos pasteles se pueden comprar con 90 centavos?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '3 pasteles', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '4 pasteles', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '6 pasteles', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '9 pasteles', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '15 pasteles', FALSE);

-- Opciones para la pregunta 11: ¿Cuál de estos cinco números no pertenece al mismo grupo? 2, 4, 8, 12, 16
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 11 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '2', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 11 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '4', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 11 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '8', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 11 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '12', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 11 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '16', FALSE);

-- Opciones para la pregunta 12: Si un tren viaja a 60 kilómetros por hora, ¿cuánto tiempo tardará en recorrer 300 kilómetros?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 12 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '3 horas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 12 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '4 horas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 12 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '5 horas', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 12 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '6 horas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 12 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '18000 horas', FALSE);

-- Opciones para la pregunta 13: Si una persona tiene 14 años y su hermano tiene el doble de edad, ¿cuántos años tendrá el hermano cuando la persona tenga 40 años?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 13 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '66 años', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 13 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '80 años', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 13 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '54 años', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 13 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '60 años', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 13 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '52 años', FALSE);

-- Opciones para la pregunta 14: En una carrera, si adelantas al segundo, ¿en qué posición terminarás?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 14 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'Primero', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 14 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'Segundo', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 14 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Tercero', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 14 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Depende de cuántos corredores hay', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 14 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'No se puede determinar', FALSE);

-- Opciones para la pregunta 15: Si 7 hombres construyen 6 casas en 3 días, ¿cuántas casas construirán 21 hombres en 7 días?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 15 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '21 casas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 15 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '28 casas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 15 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '36 casas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 15 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '42 casas', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 15 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '126 casas', FALSE);

-- Opciones para la pregunta 16: Si uno dice "Un hombre puede hacer un trabajo en 4 días" y otro dice "Cuatro hombres pueden hacer el trabajo en 1 día", ¿quién tiene razón?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 16 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'El primero', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 16 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'El segundo', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 16 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Ambos', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 16 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Ninguno', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 16 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'No se puede determinar', FALSE);

-- Opciones para la pregunta 17: Si un objeto cae 16 pies en el primer segundo, 48 pies en los dos primeros segundos, y 80 pies en los tres primeros segundos, ¿cuántos pies caerá en el cuarto segundo?
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 17 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '32 pies', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 17 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '48 pies', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 17 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '64 pies', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 17 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '112 pies', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 17 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '16 pies', FALSE);

-- Opciones para la pregunta 18: Completa la analogía: Pájaro es a aire como pez es a...
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 18 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'Nadar', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 18 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'Agua', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 18 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'Escamas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 18 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'Mar', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 18 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'Branquias', FALSE);

-- Continuando con la pregunta 19 (completando)
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 19 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, '1 naranja', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 19 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, '1.5 naranjas', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 19 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, '2 naranjas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 19 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, '3 naranjas', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 19 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, '4 naranjas', FALSE);

-- Opciones para la pregunta 20: Si X es mayor que Y, y Y es mayor que Z, entonces X es __ que Z.
INSERT INTO opcionesPreguntasOtis (idOpcionPreguntaOtis, idPreguntaOtis, numeroOpcion, descripcionOpcion, esCorrecta)
VALUES
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 20 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 1, 'mayor', TRUE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 20 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 2, 'menor', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 20 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 3, 'igual', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 20 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 4, 'no se puede determinar', FALSE),
(UUID(), (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 20 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')), 5, 'diferente', FALSE);


-- Inserciones para la tabla respuestaOtisAspirante
INSERT INTO respuestaOtisAspirante (idRespuestaOtis, idAspirante, idPreguntaOtis, idOpcionPreguntaOtis, idPrueba, respuestaAbierta, tiempoRespuesta)
VALUES
-- Respuestas de Juan López
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 1 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,25),

-- Respuestas de María Pérez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 2 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,18),

-- Respuestas de Carlos Rodríguez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'carlosrodríguez58@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 3 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND numeroOpcion = 3),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,32),

-- Respuestas de Laura Gómez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'lauragómez50@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 4 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,15),

-- Respuestas de Pedro Fernández
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'pedrofernández59@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 5 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,28),

-- Respuestas de Ana Martínez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'anamartínez97@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 6 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND numeroOpcion = 5),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,45),

-- Respuestas de Luis Ramírez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'luisramírez75@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 7 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,30),

-- Respuestas de Sofía Ramírez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'sofíaramírez88@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 8 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,22),

-- Respuestas de Miguel Ramírez
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'miguelramírez66@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 9 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND numeroOpcion = 2),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,40),

-- Respuestas de Elena García
(UUID(), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'elenagarcía10@example.com')), 
    (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')),
    (SELECT idOpcionPreguntaOtis FROM opcionesPreguntasOtis WHERE idPreguntaOtis = (SELECT idPreguntaOtis FROM preguntasOtis WHERE numeroPregunta = 10 AND idPrueba = (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS')) AND esCorrecta = TRUE),
    (SELECT idPrueba FROM pruebas WHERE nombre = 'OTIS'),NULL,19);


INSERT INTO colores (nombreColor, numeroColor, significado, hexColor) VALUES
('Azul', 1, 'Paciencia', '#00008B'),
('Verde', 2, 'Productividad', '#008B8B'),
('Rojo', 3, 'Agresividad', '#FF4500'),
('Amarillo', 4, 'Sociabilidad', '#FFFFE0'),
('Violeta', 5, 'Creatividad', '#8A2BE2'),
('Marrón', 6, 'Vigor', '#8B4513'),
('Negro', 7, 'Satisfacción', '#000000'),
('Gris', 8, 'Participación', '#808080');

INSERT INTO seleccionesColores VALUES
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 1),
    1,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 2),
    4,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 3),
    7,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 4),
    5,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 5),
    0,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 6),
    3,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 7),
    2,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 8),
    6,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 1),
    1,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 2),
    4,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 3),
    7,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 4),
    5,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 5),
    0,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 6),
    3,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 7),
    2,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'juanlópez39@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 8),
    6,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 1),
    1,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 2),
    4,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 3),
    7,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 4),
    5,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 5),
    0,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 6),
    3,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 7),
    2,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 8),
    6,
    1
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 1),
    1,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 2),
    4,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 3),
    7,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 4),
    5,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 5),
    0,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 6),
    3,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 7),
    2,
    2
),
(
    uuid(), 
    (SELECT idPrueba FROM pruebas WHERE nombre = 'COLORES DE LUSCHER'), 
    (SELECT idAspirante FROM aspirantes WHERE idUsuario = (SELECT idUsuario FROM usuarios WHERE correo = 'maríapérez76@example.com')),
    (SELECT idColor FROM colores WHERE numeroColor = 8),
    6,
    2
);



