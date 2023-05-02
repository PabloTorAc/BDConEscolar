CREATE VIEW V_ESTUDIANTES_INSCRITOS
AS SELECT e.matricula, e.nombre || ' ' || e.ap_paterno || ' ' || e.ap_materno "nombre completo", 
    p.id_programa clave_carrera, p.nombre_programa nombre_carrrera
FROM estudiantes e
JOIN programa_educativo p
ON p.id_programa=e.id_programa
WHERE activo_inactivo LIKE 'ACTIVO';

CREATE VIEW V_ESTUDIANTES_GENERAL
AS SELECT e.matricula, e.nombre || ' ' || e.ap_paterno || ' ' || e.ap_materno "nombre completo", 
    p.id_programa clave_carrera, p.nombre_programa nombre_carrrera, e.activo_inactivo
FROM estudiantes e
JOIN programa_educativo p
ON p.id_programa=e.id_programa;

DROP VIEW V_ESTUDIANTES_GENERAL;

