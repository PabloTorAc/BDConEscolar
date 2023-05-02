INSERT INTO docentes VALUES (67, 'JOSE', 'TORRES','GONZALEZ');
INSERT INTO docentes VALUES (68, 'MARIA', 'ARVIZU','MARTINEZ');
INSERT INTO docentes VALUES (69, 'JESUS', 'HERNANDEZ','OCHOA');
INSERT INTO docentes VALUES (70, 'PEDRO', 'RUIZ','LOZANO');
INSERT INTO docentes VALUES (71, 'JUDAS', 'JUAREZ','MARTINEZ');

INSERT INTO programa_educativo VALUES ('LISSC01','01/01/2016','Licenciatura en ingenieria en software y sistemas computacionales',
                                        'ingenieria para el desarrollo de software ',110,'Juntar todos los créditos y tésis',
                                        'Ingenierias');
INSERT INTO programa_educativo VALUES ('LIIM01','05/03/2015','Licenciatura en ingenieria industrial y manofactura',
                                        'ingenieria para la administracion de empresas industriales',105,'Juntar todos los créditos y tésis',
                                        'Ingenierias');
INSERT INTO programa_educativo VALUES ('LDI01','03/05/2012','Licenciatura en diseño industrial',
                                        'Licenciatura para diseñar objetos',95,'Juntar todos los créditos y tésis',
                                        'Diseño');
INSERT INTO programa_educativo VALUES ('LDD01','04/08/2014','Licenciatura en diseño digital',
                                        'Licenciatura para el diseño de logos ',96,'Juntar todos los créditos y tésis',
                                        'Diseño');
INSERT INTO programa_educativo VALUES ('LAE01','12/12/2012','Licenciatura en administración de empresas',
                                        'Licenciatura para administrar empresas',50,'Juntar todos los créditos y tésis',
                                        'Administracion');

INSERT INTO estudiantes VALUES (1621,'MARTÍN','ACOSTA','LIMON','LISSC01',19,'M.LIMON1521@SCUL.COM',9284736281,'LIMACS5','LIMA02948273491049','ACTIVO');
INSERT INTO estudiantes VALUES (1622,'PEDRO','LOPEZ','MARTÍN','LIIM01',21,'P.MARTÍN1522@SCUL.COM',1928573923,'MALPOE7','MALP49H76904368G65','INACTIVO');
INSERT INTO estudiantes VALUES (1623,'ALBERTO','ARVIZU','RUIZ','LDI01',25,'A.RUIZ1523@SCUL.COM',2192837502,'RUAARI3','RUAA93860468937HG5','ACTIVO');
INSERT INTO estudiantes VALUES (1624,'JUAN','JUAREZ','ORTIZ','LDD01',24,'J.ORTIZ1524@SCUL.COM',9483746102,'ORJJUR8','ORJJ7037506HG1967H','ACTIVO');
INSERT INTO estudiantes VALUES (1625,'PABLO','MANDUJANO','ALVAREZ','LAE01',23,'P.ALVAREZ1525@SCUL.COM',4810394837,'ALMPAD1','ALMP068498629846JI','INACTIVO');

TRUNCATE TABLE estudiantes;

INSERT INTO estatus VALUES ('T','TERMINADA');
INSERT INTO estatus VALUES ('BT','BAJA TEMPORAL');
INSERT INTO estatus VALUES ('BD','BAJA DEFINITIVA');
INSERT INTO estatus VALUES ('BE','BAJA POR EGRESO');
INSERT INTO estatus VALUES ('BP','BAJA PROMEDIO');

INSERT INTO periodos VALUES ('2020-02','01/08/2020','27/12/2020');
INSERT INTO periodos VALUES ('2021-01','01/01/2021','27/07/2021');
INSERT INTO periodos VALUES ('2021-02','01/08/2021','27/12/2021');
INSERT INTO periodos VALUES ('2022-01','01/01/2022','27/07/2022');
INSERT INTO periodos VALUES ('2022-02','01/08/2022','27/12/2022');

INSERT INTO materias VALUES (1521,'LISSC01','Administración de bases de datos',2,4);
INSERT INTO materias VALUES (1522,'LISSC01','Programación orientada a objetos',2,6);
INSERT INTO materias VALUES (1523,'LIIM01','Calculo',1,2);
INSERT INTO materias VALUES (1524,'LIIM01','Materiales',3,5);
INSERT INTO materias VALUES (1525,'LDI01','Ergonomia',2,3);
INSERT INTO materias VALUES (1526,'LDI01','Carpinteria',2,5);
INSERT INTO materias VALUES (1527,'LDD01','Photoshop',4,3);
INSERT INTO materias VALUES (1528,'LDD01','After Efects',3,2);
INSERT INTO materias VALUES (1529,'LAE01','Contabilidad',4,5);
INSERT INTO materias VALUES (1530,'LAE01','Habilidades Gerenciales',3,6);



INSERT INTO historial_alumnos VALUES (15,1621,'LISSC01','T','2020-02');
INSERT INTO historial_alumnos VALUES (16,1621,'LISSC01','T','2021-01');
INSERT INTO historial_alumnos VALUES (17,1622,'LIIM01','T','2020-02');
INSERT INTO historial_alumnos VALUES (18,1622,'LIIM01','BT','2021-01');
INSERT INTO historial_alumnos VALUES (19,1623,'LDI01','T','2021-01');
INSERT INTO historial_alumnos VALUES (20,1623,'LDI01','T','2021-02');
INSERT INTO historial_alumnos VALUES (21,1624,'LDD01','T','2021-02');
INSERT INTO historial_alumnos VALUES (22,1624,'LDD01','T','2022-01');
INSERT INTO historial_alumnos VALUES (23,1625,'LAE01','T','2022-01');
INSERT INTO historial_alumnos VALUES (24,1625,'LAE01','BP','2022-02');

TRUNCATE TABLE historial_alumnos;

INSERT INTO registro_clases VALUES (1660,67,'2020-02','1521');
INSERT INTO registro_clases VALUES (1661,67,'2021-01','1522');
INSERT INTO registro_clases VALUES (1662,68,'2020-02','1523');
INSERT INTO registro_clases VALUES (1663,68,'2021-01','1524');
INSERT INTO registro_clases VALUES (1664,69,'2021-01','1525');
INSERT INTO registro_clases VALUES (1665,69,'2021-02','1526');
INSERT INTO registro_clases VALUES (1666,70,'2021-02','1527');
INSERT INTO registro_clases VALUES (1667,70,'2022-01','1528');
INSERT INTO registro_clases VALUES (1668,71,'2022-01','1529');
INSERT INTO registro_clases VALUES (1669,71,'2022-02','1530');

SELECT * FROM registro_clases;



INSERT INTO registro_calificaciones VALUES (15,1621,1660,2,10);
INSERT INTO registro_calificaciones VALUES (16,1621,1661,3,10);
INSERT INTO registro_calificaciones VALUES (17,1622,1662,3,9);
INSERT INTO registro_calificaciones VALUES (18,1622,1663,4,8);
INSERT INTO registro_calificaciones VALUES (19,1623,1664,1,7);
INSERT INTO registro_calificaciones VALUES (20,1623,1665,2,10);
INSERT INTO registro_calificaciones VALUES (21,1624,1666,6,5);
INSERT INTO registro_calificaciones VALUES (22,1624,1667,7,8);
INSERT INTO registro_calificaciones VALUES (23,1625,1668,7,9);
INSERT INTO registro_calificaciones VALUES (24,1625,1669,8,9);

TRUNCATE TABLE registro_calificaciones;


