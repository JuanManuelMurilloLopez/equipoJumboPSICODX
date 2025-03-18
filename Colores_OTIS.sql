CREATE TABLE preguntasOtis (
    idPreguntaOtis VARCHAR(36) PRIMARY KEY not NULL, 
    idPrueba VARCHAR(36),
    numeroPregunta INT,
    pregunta VARCHAR(255),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE opcionesPreguntasOtis (
    idOpcionPreguntaOtis VARCHAR(36) PRIMARY KEY,
    idPreguntaOtis VARCHAR(36),
    numeroOpcion INT,
    descripcionOpcion TEXT,
    esCorrecta BOOLEAN,
    FOREIGN KEY (idPreguntaOtis) REFERENCES preguntasOtis(idPreguntaOtis)
);

CREATE TABLE respuestaOtisAspirante (
    idRespuestaOtis VARCHAR(36) PRIMARY KEY not NULL,
    idAspirante VARCHAR(36),
    idPreguntaOtis VARCHAR(36),
    idOpcionPreguntaOtis VARCHAR(36),  -- Solo si es opción múltiple
    idPrueba VARCHAR(36),
    respuestaAbierta VARCHAR(5),  -- Solo si es pregunta abierta
    tiempoRespuesta INT,  -- En segundos
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idPreguntaOtis) REFERENCES preguntasOtis(idPreguntaOtis),
    FOREIGN KEY (idOpcionPreguntaOtis) REFERENCES opcionesPreguntasOtis(idOpcionPreguntaOtis),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE colores(
    idColor INT AUTO_INCREMENT PRIMARY KEY, -- INT AUTO_INCREMENT
    nombreColor VARCHAR(50),
    numeroColor INT,
    significado VARCHAR(50),
    hexColor VARCHAR(7)
);

CREATE TABLE seleccionesColores(
    idSeleccionColores VARCHAR(36) PRIMARY KEY NOT NULL, -- UUID
    idPrueba VARCHAR(36), -- UUID
    idAspirante VARCHAR(36), -- UUID
    idColor INT, -- INT AUTO_INCREMENT
    posicion INT CHECK (posicion <= 7 AND posicion >= 0),
    fase INT CHECK (fase = 1 OR fase = 2),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba),
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idColor) REFERENCES colores(idColor)
);
