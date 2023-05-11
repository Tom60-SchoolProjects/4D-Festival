//%attributes = {}
Begin SQL
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Info', '26/11/2022 15:00', '26/11/2022 23:00');
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('GC', '05/12/2022 22:00', '06/12/2022 3:00');
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('St Dié', '15/02/2023 14:00', '15/02/2023 20:00');
	
End SQL

ALERT:C41("OK")