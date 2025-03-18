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
    idGrupo VARCHAR(36),
    idPreguntaOtis VARCHAR(36),
    idOpcionPreguntaOtis VARCHAR(36),  -- Solo si es opción múltiple
    idPrueba VARCHAR(36),
    respuestaAbierta VARCHAR(5),  -- Solo si es pregunta abierta
    tiempoRespuesta INT,  -- En segundos
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idPreguntaOtis) REFERENCES preguntasOtis(idPreguntaOtis),
    FOREIGN KEY (idOpcionPreguntaOtis) REFERENCES opcionesPreguntasOtis(idOpcionPreguntaOtis),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba),
    FOREIGN KEY (idGrupo) REFERENCES grupos(idGrupo)
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
    idGrupo VARCHAR(36),
    idColor INT, -- INT AUTO_INCREMENT
    posicion INT CHECK (posicion <= 7 AND posicion >= 0),
    fase INT CHECK (fase = 1 OR fase = 2),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba),
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idColor) REFERENCES colores(idColor),
    FOREIGN KEY (idGrupo) REFERENCES grupos(idGrupo)
);


CREATE TABLE preguntasKostick(
    idPreguntaKostick VARCHAR(36) PRIMARY KEY not NULL, 
    idPrueba VARCHAR(36),
    numeroPregunta INT,
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE opcionesKostick(
    idOpcionKostick VARCHAR(36) PRIMARY KEY,
    idPreguntaKostick VARCHAR(36),
    opcionKostick VARCHAR(1),
    descripcionOpcion TEXT,
    FOREIGN KEY (idPreguntaKostick) REFERENCES preguntasKostick(idPreguntaKostick)
);

CREATE TABLE respuestasKostickAspirante ( -- agregar grupo :(
    idRespuestaKostick VARCHAR(36) PRIMARY KEY not NULL,
    idAspirante VARCHAR(36),
    idGrupo VARCHAR(36),
    idPreguntaKostick VARCHAR(36),
    idOpcionKostick VARCHAR(36),  -- Solo si es opción múltiple
    idPrueba VARCHAR(36),
    tiempoRespuesta INT,  -- En segundos
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idGrupo) REFERENCES grupos(idGrupo),
    FOREIGN KEY (idPreguntaKostick) REFERENCES preguntasKostick(idPreguntaKostick),
    FOREIGN KEY (idOpcionKostick) REFERENCES opcionesKostick(idOpcionKostick),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE preguntas16PF(
    idPregunta16PF VARCHAR(36) PRIMARY KEY not NULL, 
    idPrueba VARCHAR(36),
    numeroPregunta INT,
    pregunta16PF VARCHAR(255),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE opciones16PF(
    idOpcion16PF VARCHAR(36) PRIMARY KEY,
    idPregunta16PF VARCHAR(36),
    opcion16PF VARCHAR(1),
    descripcionOpcion TEXT,
    FOREIGN KEY (idPregunta16PF) REFERENCES preguntas16PF(idPregunta16PF)
);

CREATE TABLE respuestas16PFAspirante ( -- agregar grupo :(
    idRespuesta16PF VARCHAR(36) PRIMARY KEY not NULL,
    idAspirante VARCHAR(36),
    idGrupo VARCHAR(36),
    idPregunta16PF VARCHAR(36),
    idOpcion16PF VARCHAR(36),  -- Solo si es opción múltiple
    idPrueba VARCHAR(36),
    tiempoRespuesta INT,  -- En segundos
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idGrupo) REFERENCES grupos(idGrupo),
    FOREIGN KEY (idPregunta16PF) REFERENCES preguntas16PF(idPregunta16PF),
    FOREIGN KEY (idOpcion16PF) REFERENCES opciones16PF(idOpcion16PF),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE preguntasHartman(
    idPreguntaHartman VARCHAR(36) PRIMARY KEY not NULL, 
    idPrueba VARCHAR(36),
    fasePregunta ENUM('1','2'),
    numeroPregunta INT,
    preguntaHartman VARCHAR(255),
    valorHartman INT,
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE respuestasHartmanAspirante ( -- agregar grupo :(
    idRespuestaHartman VARCHAR(36) PRIMARY KEY not NULL,
    idAspirante VARCHAR(36),
    idGrupo VARCHAR(36),
    idPreguntaHartman VARCHAR(36),
    idPrueba VARCHAR(36),
    respuestaAbierta INT,  -- Solo si es pregunta abierta
    tiempoRespuesta INT,  -- En segundos
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idGrupo) REFERENCES grupos(idGrupo),
    FOREIGN KEY (idPreguntaHartman) REFERENCES preguntasHartman(idPreguntaHartman),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE seriesTerman(
    idSerieTerman INT AUTO_INCREMENT PRIMARY KEY, -- INT AUTO_INCREMENT
    idPrueba VARCHAR(36),
    duracion INT,
    nombreSeccion VARCHAR(50),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);

CREATE TABLE preguntasTerman(
    idPreguntaTerman VARCHAR(36) PRIMARY KEY not NULL, 
    idSerieTerman INT,
    numeroPregunta INT,
    preguntaTerman VARCHAR(255),
    FOREIGN KEY (idSerieTerman) REFERENCES seriesTerman(idSerieTerman)
);

CREATE TABLE opcionesTerman(
    idOpcionTerman VARCHAR(36) PRIMARY KEY,
    idPreguntaTerman VARCHAR(36),
    opcionTerman INT,
    descripcionOpcion TEXT,
    esCorrecta BOOLEAN,
    FOREIGN KEY (idPreguntaTerman) REFERENCES preguntasTerman(idPreguntaTerman)
);

CREATE TABLE respuestasTermanAspirante ( -- agregar grupo :(
    idRespuestaTerman VARCHAR(36) PRIMARY KEY not NULL,
    idAspirante VARCHAR(36),
    idGrupo VARCHAR(36),
    idPreguntaTerman VARCHAR(36),
    idPrueba VARCHAR(36),
    respuestaAbierta VARCHAR(20),  -- Solo si es pregunta abierta
    tiempoRespuesta INT,  -- En segundos
    FOREIGN KEY (idAspirante) REFERENCES aspirantes(idAspirante),
    FOREIGN KEY (idGrupo) REFERENCES grupos(idGrupo),
    FOREIGN KEY (idPreguntaTerman) REFERENCES preguntasTerman(idPreguntaTerman),
    FOREIGN KEY (idPrueba) REFERENCES pruebas(idPrueba)
);
