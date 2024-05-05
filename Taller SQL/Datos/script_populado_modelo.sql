/********************************
	CREACION DE TABLAS
********************************/

CREATE TABLE material (
	idMaterial		INTEGER		PRIMARY KEY,
	descripcion		VARCHAR(50)	NOT NULL
);

CREATE TABLE empresa (
	idEmpresa		INTEGER		PRIMARY KEY,
	razonSocial		VARCHAR(20)	NOT NULL
);


CREATE TABLE modelo (
	idModelo			INTEGER PRIMARY KEY,
	nombreM			    VARCHAR(50) NOT NULL,
	peso			    INTEGER,
	tensionMin			INTEGER	NOT NULL, 
	tensionMax			INTEGER,
	idEmpresa           INTEGER
	FOREIGN KEY (idEmpresa)
      REFERENCES empresa (idEmpresa),
  	CONSTRAINT peso_check CHECK (peso > 200),
  	CONSTRAINT tension_check CHECK (tensionMax>=tensionMin)
);

	
	
/********************************
	POBLACION DE TABLAS
********************************/


-- poblacion tabla empresa
insert into EMPRESA (idEmpresa, razonSocial) values (1, 'Yadel');
insert into EMPRESA (idEmpresa, razonSocial) values (2, 'Flashset');
insert into EMPRESA (idEmpresa, razonSocial) values (3, 'Photojam');
insert into EMPRESA (idEmpresa, razonSocial) values (4, 'Rhynyx');
insert into EMPRESA (idEmpresa, razonSocial) values (5, 'Skivee');
insert into EMPRESA (idEmpresa, razonSocial) values (6, 'Skalith');
insert into EMPRESA (idEmpresa, razonSocial) values (7, 'Bluezoom');
insert into EMPRESA (idEmpresa, razonSocial) values (8, 'Livetube');
insert into EMPRESA (idEmpresa, razonSocial) values (9, 'Nlounge');
insert into EMPRESA (idEmpresa, razonSocial) values (10, 'Realcube');
insert into EMPRESA (idEmpresa, razonSocial) values (11, 'Oyoba');
insert into EMPRESA (idEmpresa, razonSocial) values (12, 'Kwideo');
insert into EMPRESA (idEmpresa, razonSocial) values (13, 'Skilith');
insert into EMPRESA (idEmpresa, razonSocial) values (14, 'Dabshots');
insert into EMPRESA (idEmpresa, razonSocial) values (15, 'Fivechat');
insert into EMPRESA (idEmpresa, razonSocial) values (16, 'Pixope');
insert into EMPRESA (idEmpresa, razonSocial) values (17, 'Youspan');
insert into EMPRESA (idEmpresa, razonSocial) values (18, 'Tazz');
insert into EMPRESA (idEmpresa, razonSocial) values (19, 'Photolist');
insert into EMPRESA (idEmpresa, razonSocial) values (20, 'Gigazoom');
insert into EMPRESA (idEmpresa, razonSocial) values (21, 'Realbridge');
insert into EMPRESA (idEmpresa, razonSocial) values (22, 'Leenti');
insert into EMPRESA (idEmpresa, razonSocial) values (23, 'Einti');
insert into EMPRESA (idEmpresa, razonSocial) values (24, 'Twitterlist');
insert into EMPRESA (idEmpresa, razonSocial) values (25, 'Zoonder');
insert into EMPRESA (idEmpresa, razonSocial) values (26, 'Topicblab');
insert into EMPRESA (idEmpresa, razonSocial) values (27, 'Wikizz');
insert into EMPRESA (idEmpresa, razonSocial) values (28, 'Photospace');
insert into EMPRESA (idEmpresa, razonSocial) values (29, 'Avaveo');
insert into EMPRESA (idEmpresa, razonSocial) values (30, 'Einti');
insert into EMPRESA (idEmpresa, razonSocial) values (31, 'Zoonder');
insert into EMPRESA (idEmpresa, razonSocial) values (32, 'Dynabox');
insert into EMPRESA (idEmpresa, razonSocial) values (33, 'Gigabox');
insert into EMPRESA (idEmpresa, razonSocial) values (34, 'Divavu');
insert into EMPRESA (idEmpresa, razonSocial) values (35, 'Reallinks');
insert into EMPRESA (idEmpresa, razonSocial) values (36, 'Tekfly');
insert into EMPRESA (idEmpresa, razonSocial) values (37, 'Blogtag');
insert into EMPRESA (idEmpresa, razonSocial) values (38, 'Tagcat');
insert into EMPRESA (idEmpresa, razonSocial) values (39, 'Thoughtmix');
insert into EMPRESA (idEmpresa, razonSocial) values (40, 'Brainlounge');
insert into EMPRESA (idEmpresa, razonSocial) values (41, 'Roodel');
insert into EMPRESA (idEmpresa, razonSocial) values (42, 'Skilith');
insert into EMPRESA (idEmpresa, razonSocial) values (43, 'Oyoyo');
insert into EMPRESA (idEmpresa, razonSocial) values (44, 'Photolist');
insert into EMPRESA (idEmpresa, razonSocial) values (45, 'Twimm');
insert into EMPRESA (idEmpresa, razonSocial) values (46, 'Lazz');
insert into EMPRESA (idEmpresa, razonSocial) values (47, 'Fivespan');
insert into EMPRESA (idEmpresa, razonSocial) values (48, 'Tagtune');
insert into EMPRESA (idEmpresa, razonSocial) values (49, 'Realfire');
insert into EMPRESA (idEmpresa, razonSocial) values (50, 'Babblestorm');
insert into EMPRESA (idEmpresa, razonSocial) values (51, 'Twinte');
insert into EMPRESA (idEmpresa, razonSocial) values (52, 'Flashspan');
insert into EMPRESA (idEmpresa, razonSocial) values (53, 'Browsezoom');
insert into EMPRESA (idEmpresa, razonSocial) values (54, 'Jabbersphere');
insert into EMPRESA (idEmpresa, razonSocial) values (55, 'Dabshots');
insert into EMPRESA (idEmpresa, razonSocial) values (56, 'Photolist');
insert into EMPRESA (idEmpresa, razonSocial) values (57, 'Kare');
insert into EMPRESA (idEmpresa, razonSocial) values (58, 'Aimbu');
insert into EMPRESA (idEmpresa, razonSocial) values (59, 'Youbridge');
insert into EMPRESA (idEmpresa, razonSocial) values (60, 'Snaptags');
insert into EMPRESA (idEmpresa, razonSocial) values (61, 'Buzzshare');
insert into EMPRESA (idEmpresa, razonSocial) values (62, 'Realpoint');
insert into EMPRESA (idEmpresa, razonSocial) values (63, 'Wordify');
insert into EMPRESA (idEmpresa, razonSocial) values (64, 'Meedoo');
insert into EMPRESA (idEmpresa, razonSocial) values (65, 'Bubblemix');
insert into EMPRESA (idEmpresa, razonSocial) values (66, 'Divavu');
insert into EMPRESA (idEmpresa, razonSocial) values (67, 'Trupe');
insert into EMPRESA (idEmpresa, razonSocial) values (68, 'Yamia');
insert into EMPRESA (idEmpresa, razonSocial) values (69, 'Jaxspan');
insert into EMPRESA (idEmpresa, razonSocial) values (70, 'Bluejam');
insert into EMPRESA (idEmpresa, razonSocial) values (71, 'Wikido');
insert into EMPRESA (idEmpresa, razonSocial) values (72, 'Dynabox');
insert into EMPRESA (idEmpresa, razonSocial) values (73, 'Meezzy');
insert into EMPRESA (idEmpresa, razonSocial) values (74, 'Reallinks');
insert into EMPRESA (idEmpresa, razonSocial) values (75, 'Edgepulse');
insert into EMPRESA (idEmpresa, razonSocial) values (76, 'Eimbee');
insert into EMPRESA (idEmpresa, razonSocial) values (77, 'Feedmix');
insert into EMPRESA (idEmpresa, razonSocial) values (78, 'Trunyx');
insert into EMPRESA (idEmpresa, razonSocial) values (79, 'Skyvu');
insert into EMPRESA (idEmpresa, razonSocial) values (80, 'Lazz');
insert into EMPRESA (idEmpresa, razonSocial) values (81, 'Wordify');
insert into EMPRESA (idEmpresa, razonSocial) values (82, 'Mydo');
insert into EMPRESA (idEmpresa, razonSocial) values (83, 'Yodo');
insert into EMPRESA (idEmpresa, razonSocial) values (84, 'Livepath');
insert into EMPRESA (idEmpresa, razonSocial) values (85, 'Realpoint');
insert into EMPRESA (idEmpresa, razonSocial) values (86, 'Katz');
insert into EMPRESA (idEmpresa, razonSocial) values (87, 'Flipstorm');
insert into EMPRESA (idEmpresa, razonSocial) values (88, 'Jazzy');
insert into EMPRESA (idEmpresa, razonSocial) values (89, 'Meetz');
insert into EMPRESA (idEmpresa, razonSocial) values (90, 'Jaxworks');
insert into EMPRESA (idEmpresa, razonSocial) values (91, 'Jaxspan');
insert into EMPRESA (idEmpresa, razonSocial) values (92, 'Livepath');
insert into EMPRESA (idEmpresa, razonSocial) values (93, 'Dabvine');
insert into EMPRESA (idEmpresa, razonSocial) values (94, 'Eabox');
insert into EMPRESA (idEmpresa, razonSocial) values (95, 'Mynte');
insert into EMPRESA (idEmpresa, razonSocial) values (96, 'Gabtune');
insert into EMPRESA (idEmpresa, razonSocial) values (97, 'Jetwire');
insert into EMPRESA (idEmpresa, razonSocial) values (98, 'Kwilith');
insert into EMPRESA (idEmpresa, razonSocial) values (99, 'Edgeblab');
insert into EMPRESA (idEmpresa, razonSocial) values (100, 'Youtags');
insert into EMPRESA (idEmpresa, razonSocial) values (101, 'Skaboo');
insert into EMPRESA (idEmpresa, razonSocial) values (102, 'Browseblab');
insert into EMPRESA (idEmpresa, razonSocial) values (103, 'Meedoo');
insert into EMPRESA (idEmpresa, razonSocial) values (104, 'Quimm');
insert into EMPRESA (idEmpresa, razonSocial) values (105, 'Oodoo');
insert into EMPRESA (idEmpresa, razonSocial) values (106, 'Jetpulse');
insert into EMPRESA (idEmpresa, razonSocial) values (107, 'Cogibox');
insert into EMPRESA (idEmpresa, razonSocial) values (108, 'Izio');
insert into EMPRESA (idEmpresa, razonSocial) values (109, 'Katz');
insert into EMPRESA (idEmpresa, razonSocial) values (110, 'Skivee');
insert into EMPRESA (idEmpresa, razonSocial) values (111, 'Jabbersphere');
insert into EMPRESA (idEmpresa, razonSocial) values (112, 'Thoughtworks');
insert into EMPRESA (idEmpresa, razonSocial) values (113, 'Youopia');
insert into EMPRESA (idEmpresa, razonSocial) values (114, 'Agivu');
insert into EMPRESA (idEmpresa, razonSocial) values (115, 'Eare');
insert into EMPRESA (idEmpresa, razonSocial) values (116, 'Wordtune');
insert into EMPRESA (idEmpresa, razonSocial) values (117, 'Abatz');
insert into EMPRESA (idEmpresa, razonSocial) values (118, 'Jabbercube');
insert into EMPRESA (idEmpresa, razonSocial) values (119, 'Topicware');
insert into EMPRESA (idEmpresa, razonSocial) values (120, 'Oodoo');
insert into EMPRESA (idEmpresa, razonSocial) values (121, 'Voonder');
insert into EMPRESA (idEmpresa, razonSocial) values (122, 'Skippad');
insert into EMPRESA (idEmpresa, razonSocial) values (123, 'Jayo');
insert into EMPRESA (idEmpresa, razonSocial) values (124, 'Zoozzy');
insert into EMPRESA (idEmpresa, razonSocial) values (125, 'Abatz');
insert into EMPRESA (idEmpresa, razonSocial) values (126, 'Cogidoo');
insert into EMPRESA (idEmpresa, razonSocial) values (127, 'Kwinu');
insert into EMPRESA (idEmpresa, razonSocial) values (128, 'Jamia');
insert into EMPRESA (idEmpresa, razonSocial) values (129, 'Kwilith');
insert into EMPRESA (idEmpresa, razonSocial) values (130, 'Zoonder');
insert into EMPRESA (idEmpresa, razonSocial) values (131, 'Twitterwire');
insert into EMPRESA (idEmpresa, razonSocial) values (132, 'Demivee');
insert into EMPRESA (idEmpresa, razonSocial) values (133, 'Twinder');
insert into EMPRESA (idEmpresa, razonSocial) values (134, 'Skivee');
insert into EMPRESA (idEmpresa, razonSocial) values (135, 'Rhyloo');
insert into EMPRESA (idEmpresa, razonSocial) values (136, 'Midel');
insert into EMPRESA (idEmpresa, razonSocial) values (137, 'Feedfish');
insert into EMPRESA (idEmpresa, razonSocial) values (138, 'Wordify');
insert into EMPRESA (idEmpresa, razonSocial) values (139, 'Jabbercube');
insert into EMPRESA (idEmpresa, razonSocial) values (140, 'Mydo');
insert into EMPRESA (idEmpresa, razonSocial) values (141, 'Twitterbridge');
insert into EMPRESA (idEmpresa, razonSocial) values (142, 'Tazzy');
insert into EMPRESA (idEmpresa, razonSocial) values (143, 'Tazz');
insert into EMPRESA (idEmpresa, razonSocial) values (144, 'Centimia');
insert into EMPRESA (idEmpresa, razonSocial) values (145, 'Browsedrive');
insert into EMPRESA (idEmpresa, razonSocial) values (146, 'Skinte');
insert into EMPRESA (idEmpresa, razonSocial) values (147, 'Yakitri');
insert into EMPRESA (idEmpresa, razonSocial) values (148, 'Meevee');
insert into EMPRESA (idEmpresa, razonSocial) values (149, 'Riffwire');
insert into EMPRESA (idEmpresa, razonSocial) values (150, 'Ozu');
insert into EMPRESA (idEmpresa, razonSocial) values (151, 'Edgeblab');
insert into EMPRESA (idEmpresa, razonSocial) values (152, 'Babbleset');
insert into EMPRESA (idEmpresa, razonSocial) values (153, 'Rhycero');
insert into EMPRESA (idEmpresa, razonSocial) values (154, 'Wordify');
insert into EMPRESA (idEmpresa, razonSocial) values (155, 'Yodel');
insert into EMPRESA (idEmpresa, razonSocial) values (156, 'Fanoodle');
insert into EMPRESA (idEmpresa, razonSocial) values (157, 'Tagcat');
insert into EMPRESA (idEmpresa, razonSocial) values (158, 'Thoughtblab');
insert into EMPRESA (idEmpresa, razonSocial) values (159, 'Zava');
insert into EMPRESA (idEmpresa, razonSocial) values (160, 'Riffpedia');
insert into EMPRESA (idEmpresa, razonSocial) values (161, 'Fanoodle');
insert into EMPRESA (idEmpresa, razonSocial) values (162, 'Gabvine');
insert into EMPRESA (idEmpresa, razonSocial) values (163, 'Mydo');
insert into EMPRESA (idEmpresa, razonSocial) values (164, 'Rhycero');
insert into EMPRESA (idEmpresa, razonSocial) values (165, 'Flashpoint');
insert into EMPRESA (idEmpresa, razonSocial) values (166, 'Trunyx');
insert into EMPRESA (idEmpresa, razonSocial) values (167, 'Jetpulse');
insert into EMPRESA (idEmpresa, razonSocial) values (168, 'Realcube');
insert into EMPRESA (idEmpresa, razonSocial) values (169, 'BlogXS');
insert into EMPRESA (idEmpresa, razonSocial) values (170, 'Thoughtstorm');
insert into EMPRESA (idEmpresa, razonSocial) values (171, 'Kare');
insert into EMPRESA (idEmpresa, razonSocial) values (172, 'Trilith');
insert into EMPRESA (idEmpresa, razonSocial) values (173, 'Riffwire');
insert into EMPRESA (idEmpresa, razonSocial) values (174, 'Teklist');
insert into EMPRESA (idEmpresa, razonSocial) values (175, 'Yakijo');
insert into EMPRESA (idEmpresa, razonSocial) values (176, 'Ozu');
insert into EMPRESA (idEmpresa, razonSocial) values (177, 'Gigashots');
insert into EMPRESA (idEmpresa, razonSocial) values (178, 'Bubbletube');
insert into EMPRESA (idEmpresa, razonSocial) values (179, 'Thoughtworks');
insert into EMPRESA (idEmpresa, razonSocial) values (180, 'Shuffletag');
insert into EMPRESA (idEmpresa, razonSocial) values (181, 'Photolist');
insert into EMPRESA (idEmpresa, razonSocial) values (182, 'Skyble');
insert into EMPRESA (idEmpresa, razonSocial) values (183, 'Linkbridge');
insert into EMPRESA (idEmpresa, razonSocial) values (184, 'Dabvine');
insert into EMPRESA (idEmpresa, razonSocial) values (185, 'Leenti');
insert into EMPRESA (idEmpresa, razonSocial) values (186, 'Jayo');
insert into EMPRESA (idEmpresa, razonSocial) values (187, 'Tagcat');
insert into EMPRESA (idEmpresa, razonSocial) values (188, 'Jaxbean');
insert into EMPRESA (idEmpresa, razonSocial) values (189, 'Yodoo');
insert into EMPRESA (idEmpresa, razonSocial) values (190, 'Dabtype');
insert into EMPRESA (idEmpresa, razonSocial) values (191, 'Oyoba');
insert into EMPRESA (idEmpresa, razonSocial) values (192, 'Twitterbridge');
insert into EMPRESA (idEmpresa, razonSocial) values (193, 'Oba');
insert into EMPRESA (idEmpresa, razonSocial) values (194, 'Cogidoo');
insert into EMPRESA (idEmpresa, razonSocial) values (195, 'Meejo');
insert into EMPRESA (idEmpresa, razonSocial) values (196, 'Livefish');
insert into EMPRESA (idEmpresa, razonSocial) values (197, 'Skyndu');
insert into EMPRESA (idEmpresa, razonSocial) values (198, 'Latz');
insert into EMPRESA (idEmpresa, razonSocial) values (199, 'Youtags');
insert into EMPRESA (idEmpresa, razonSocial) values (200, 'Meetz');
insert into EMPRESA (idEmpresa, razonSocial) values (201, 'InnoZ');
insert into EMPRESA (idEmpresa, razonSocial) values (202, 'Shufflebeat');
insert into EMPRESA (idEmpresa, razonSocial) values (203, 'Quire');
insert into EMPRESA (idEmpresa, razonSocial) values (204, 'Yoveo');
insert into EMPRESA (idEmpresa, razonSocial) values (205, 'Ozu');
insert into EMPRESA (idEmpresa, razonSocial) values (206, 'Gigabox');
insert into EMPRESA (idEmpresa, razonSocial) values (207, 'Linklinks');
insert into EMPRESA (idEmpresa, razonSocial) values (208, 'Quatz');
insert into EMPRESA (idEmpresa, razonSocial) values (209, 'Browsedrive');
insert into EMPRESA (idEmpresa, razonSocial) values (210, 'Kwinu');
insert into EMPRESA (idEmpresa, razonSocial) values (211, 'Topicware');
insert into EMPRESA (idEmpresa, razonSocial) values (212, 'Skiba');
insert into EMPRESA (idEmpresa, razonSocial) values (213, 'Minyx');
insert into EMPRESA (idEmpresa, razonSocial) values (214, 'Kare');
insert into EMPRESA (idEmpresa, razonSocial) values (215, 'Oloo');
insert into EMPRESA (idEmpresa, razonSocial) values (216, 'Yotz');
insert into EMPRESA (idEmpresa, razonSocial) values (217, 'Mymm');
insert into EMPRESA (idEmpresa, razonSocial) values (218, 'Meevee');
insert into EMPRESA (idEmpresa, razonSocial) values (219, 'Devpulse');
insert into EMPRESA (idEmpresa, razonSocial) values (220, 'Tazz');
insert into EMPRESA (idEmpresa, razonSocial) values (221, 'Browsedrive');
insert into EMPRESA (idEmpresa, razonSocial) values (222, 'Dynava');
insert into EMPRESA (idEmpresa, razonSocial) values (223, 'Livetube');
insert into EMPRESA (idEmpresa, razonSocial) values (224, 'Tanoodle');
insert into EMPRESA (idEmpresa, razonSocial) values (225, 'Camido');
insert into EMPRESA (idEmpresa, razonSocial) values (226, 'Trilith');
insert into EMPRESA (idEmpresa, razonSocial) values (227, 'Kazio');
insert into EMPRESA (idEmpresa, razonSocial) values (228, 'Youfeed');
insert into EMPRESA (idEmpresa, razonSocial) values (229, 'Devify');
insert into EMPRESA (idEmpresa, razonSocial) values (230, 'Demivee');
insert into EMPRESA (idEmpresa, razonSocial) values (231, 'Browsebug');
insert into EMPRESA (idEmpresa, razonSocial) values (232, 'Yoveo');
insert into EMPRESA (idEmpresa, razonSocial) values (233, 'Ntag');
insert into EMPRESA (idEmpresa, razonSocial) values (234, 'Jamia');
insert into EMPRESA (idEmpresa, razonSocial) values (235, 'Voonte');
insert into EMPRESA (idEmpresa, razonSocial) values (236, 'Yakidoo');
insert into EMPRESA (idEmpresa, razonSocial) values (237, 'Youbridge');
insert into EMPRESA (idEmpresa, razonSocial) values (238, 'Dabvine');
insert into EMPRESA (idEmpresa, razonSocial) values (239, 'Kimia');
insert into EMPRESA (idEmpresa, razonSocial) values (240, 'Jetwire');
insert into EMPRESA (idEmpresa, razonSocial) values (241, 'Flashspan');
insert into EMPRESA (idEmpresa, razonSocial) values (242, 'Rhyloo');
insert into EMPRESA (idEmpresa, razonSocial) values (243, 'Skipfire');
insert into EMPRESA (idEmpresa, razonSocial) values (244, 'Skyndu');
insert into EMPRESA (idEmpresa, razonSocial) values (245, 'Jaxspan');
insert into EMPRESA (idEmpresa, razonSocial) values (246, 'Tambee');
insert into EMPRESA (idEmpresa, razonSocial) values (247, 'Fadeo');
insert into EMPRESA (idEmpresa, razonSocial) values (248, 'Feedfire');
insert into EMPRESA (idEmpresa, razonSocial) values (249, 'Yozio');
insert into EMPRESA (idEmpresa, razonSocial) values (250, 'Twitterworks');


-- poblacion tabla material
insert into MATERIAL (idMaterial, descripcion) values (1118, 'Vinyl');
insert into MATERIAL (idMaterial, descripcion) values (95, 'Wood');
insert into MATERIAL (idMaterial, descripcion) values (626, 'Vinyl');
insert into MATERIAL (idMaterial, descripcion) values (1303, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (1316, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (356, 'Brass');
insert into MATERIAL (idMaterial, descripcion) values (1843, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (899, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (818, 'Granite');
insert into MATERIAL (idMaterial, descripcion) values (227, 'Brass');
insert into MATERIAL (idMaterial, descripcion) values (1343, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (96, 'Granite');
insert into MATERIAL (idMaterial, descripcion) values (1508, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (1839, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (1444, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (1074, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (869, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (337, 'Granite');
insert into MATERIAL (idMaterial, descripcion) values (1067, 'Vinyl');
insert into MATERIAL (idMaterial, descripcion) values (885, 'Glass');
insert into MATERIAL (idMaterial, descripcion) values (830, 'Plastic');
insert into MATERIAL (idMaterial, descripcion) values (1072, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (1233, 'Wood');
insert into MATERIAL (idMaterial, descripcion) values (1445, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (211, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (1927, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (55, 'Vinyl');
insert into MATERIAL (idMaterial, descripcion) values (1102, 'Glass');
insert into MATERIAL (idMaterial, descripcion) values (1459, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (1202, 'Wood');
insert into MATERIAL (idMaterial, descripcion) values (1684, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (1060, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (312, 'Wood');
insert into MATERIAL (idMaterial, descripcion) values (1973, 'Aluminum');
insert into MATERIAL (idMaterial, descripcion) values (244, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (513, 'Brass');
insert into MATERIAL (idMaterial, descripcion) values (1524, 'Granite');
insert into MATERIAL (idMaterial, descripcion) values (613, 'Plastic');
insert into MATERIAL (idMaterial, descripcion) values (549, 'Brass');
insert into MATERIAL (idMaterial, descripcion) values (350, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (1958, 'Plexiglass');
insert into MATERIAL (idMaterial, descripcion) values (366, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (255, 'Wood');
insert into MATERIAL (idMaterial, descripcion) values (1336, 'Stone');
insert into MATERIAL (idMaterial, descripcion) values (1255, 'Rubber');
insert into MATERIAL (idMaterial, descripcion) values (1336, 'Brass');
insert into MATERIAL (idMaterial, descripcion) values (1098, 'Granite');
insert into MATERIAL (idMaterial, descripcion) values (1588, 'Plastic');
insert into MATERIAL (idMaterial, descripcion) values (1413, 'Vinyl');
insert into MATERIAL (idMaterial, descripcion) values (1564, 'Plexiglass');



-- Poblar tabla modelo
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (1, 'Prelude', 250, 224, 303, 220);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (2, 'M5', 260, 249, 311, 519);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (3, 'Ram 1500', 208, 259, 289, 351);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (4, 'S-Class', 255, 253, 302, 316);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (5, 'GTI', 278, 205, 301, 311);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (6, 'Outlander', 271, 227, 275, 104);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (7, 'Scoupe', 227, 209, 304, 103);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (8, 'Savana 1500', 270, 255, 290, 102);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (9, 'STS', 282, 244, 284, 101);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (10, 'Grand Cherokee', 205, 252, 301, 100);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (11, 'Tundra', 207, 266, 286, 23);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (12, 'Outlander', 250, 237, 281, 22);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (13, 'Durango', 258, 268, 306, 12);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (14, 'Reventón', 225, 200, 279, 4);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (15, 'A8', 283, 208, 298, 3);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (16, 'FX', 282, 262, 315, 2);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (17, 'Sonata', 276, 264, 293, 1);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (18, 'RX-7', 222, 259, 313, 198);
insert into MODELO (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (19, 'Freestyle', 208, 225, 291, 199);
insert into modelo (idModelo, nombreM, peso, tensionMin, tensionMax, idEmpresa) values (20, 'Accent', 272, 206, 307, 200);

