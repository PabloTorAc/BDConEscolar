CREATE TABLE docentes (
    id_docente NUMBER PRIMARY KEY,
    nombre VARCHAR2(20),
    ap_paterno VARCHAR(20),
    ap_materno VARCHAR2(20)
);

CREATE TABLE programa_educativo (
    id_programa VARCHAR2(10) PRIMARY KEY,
    fecha_registro DATE,
    nombre_programa VARCHAR2(100),
    descripcion_programa VARCHAR2(100),
    total_creditos NUMBER,
    requisitos_titulacion VARCHAR(50),
    area_conocimiento VARCHAR2(25)
);

DROP TABLE programa_educativo;

CREATE TABLE estudiantes (
    matricula NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    ap_paterno VARCHAR(50),
    ap_materno VARCHAR2(50),
    id_programa VARCHAR2(50),
    edad NUMBER,
    correo VARCHAR2(50),
    celular NUMBER,
    rfc VARCHAR2(50),
    curp VARCHAR(50),
    activo_inactivo VARCHAR(50),
    CONSTRAINT fk_est_pro FOREIGN KEY (id_programa)
        REFERENCES PROGRAMA_EDUCATIVO(id_programa)
);

DROP TABLE estudiantes;

CREATE TABLE estatus (
    id_estatus VARCHAR2(2) PRIMARY KEY,
    nombre_estatus VARCHAR(15)
);

DROP TABLE estatus;

CREATE TABLE periodos (
    id_periodo VARCHAR2(7) PRIMARY KEY,
    fecha_inicio DATE,
    fecha_fin  DATE
);

DROP TABLE periodos;

CREATE TABLE materias (
    id_materia NUMBER PRIMARY KEY,
    id_programa VARCHAR2(10),
    nombre_materia VARCHAR2(50),
    creditos NUMBER,
    horas_semanales NUMBER,
    CONSTRAINT fk_mat_pro FOREIGN KEY (id_programa)
        REFERENCES PROGRAMA_EDUCATIVO(id_programa)
);

DROP TABLE materias;

CREATE TABLE historial_alumnos (
    id_historial NUMBER PRIMARY KEY,
    matricula NUMBER,
    id_programa VARCHAR2(100),
    id_estatus VARCHAR2(100),
    id_periodo VARCHAR2(100),
    CONSTRAINT fk_his_pro FOREIGN KEY (id_programa)
        REFERENCES PROGRAMA_EDUCATIVO(id_programa),
    CONSTRAINT fk_his_estu FOREIGN KEY (matricula)
        REFERENCES ESTUDIANTES(matricula),
    CONSTRAINT fk_his_esta FOREIGN KEY (id_estatus)
        REFERENCES ESTATUS(id_estatus),
    CONSTRAINT fk_his_per FOREIGN KEY (id_periodo)
        REFERENCES PERIODOS(id_periodo)
);

DROP TABLE historial_alumnos;

CREATE TABLE registro_clases (
    id_clase NUMBER PRIMARY KEY,
    id_docente NUMBER,
    id_periodo VARCHAR(7),
    id_Materia NUMBER,
    CONSTRAINT fk_reg_doc FOREIGN KEY (id_docente)
        REFERENCES DOCENTES(id_docente),
    CONSTRAINT fk_reg_per FOREIGN KEY (id_periodo)
        REFERENCES PERIODOS(id_periodo),
    CONSTRAINT fk_reg_mat FOREIGN KEY (id_materia)
        REFERENCES MATERIAS(id_materia)
);

DROP TABLE registro_clases;

CREATE TABLE registro_calificaciones (
    id_calificacion NUMBER PRIMARY KEY,
    matricula NUMBER,
    id_clase NUMBER,
    semestre NUMBER,
    calificacion NUMBER,
    CONSTRAINT fk_cal_estu FOREIGN KEY (matricula)
        REFERENCES ESTUDIANTES(matricula),
    CONSTRAINT fk_his_cla FOREIGN KEY (id_clase)
        REFERENCES REGISTRO_CLASES(id_clase)
);

DROP TABLE registro_calificaciones;


