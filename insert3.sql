SET search_path TO chua, public;

INSERT INTO student(netid, fname, lname, yrInSchool) VALUES
	('mp4444', 'May', 'Pham', 'SR'),
	('hp9999','Hal','Prince','FR'),
	('rj2222','Raj','Jain','GR'),
	('dc3333','Deb','Cortez','SO'),
	('zs8888','Zoey','Stein','SO'),
	('ge0000','Gerald','Elephant','FR');
	
INSERT INTO grades(student_id, section_id, grade) VALUES
	('mp4444', 1, 'A'),
	('hp9999', 1, 'B'),
	('rj2222', 3, null),
	('dc3333', 4, 'B'),
	('zs8888', 5, 'A'),
	('mp4444', 6, 'B'),
	('hp9999', 7, 'B'),
	('rj2222', 8, 'A'),
	('dc3333', 9, 'A'),
	('zs8888', 10, 'A'),
	('mp4444', 11, 'B'),
	('hp9999', 11, 'B'),
	('ge0000', 5, 'F' ); -- because an elephant taking a writing course would be silly