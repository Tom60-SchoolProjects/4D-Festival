//%attributes = {}
Begin SQL
	
	CREATE TABLE IF NOT EXISTS EVENEMENT (
	
	ID INT32 AUTO_INCREMENT PRIMARY KEY,
	Libelle VARCHAR NOT NULL,
	Date_Debut TIMESTAMP,
	Date_Fin TIMESTAMP
	
	);
	
End SQL

ALERT:C41("OK")