//%attributes = {}
Begin SQL
	
	INSERT INTO Evenement
	(Libelle, [Date debut], [Date fin])
	VALUES
	('Info', '26/11/2022 15:00', '26/11/2022 23:00');
	
	INSERT INTO Evenement
	(Libelle, [Date debut], [Date fin])
	VALUES
	('GC', '05/12/2022 22:00', '06/12/2022 3:00');
	
	INSERT INTO Evenement
	(Libelle, [Date debut], [Date fin])
	VALUES
	('St Dié', '15/02/2023 14:00', '15/02/2023 20:00');
	
End SQL

ALERT:C41("OK")