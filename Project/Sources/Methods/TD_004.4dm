//%attributes = {}
Begin SQL
	
	DELETE FROM Evenement WHERE (Libelle = 'GC')
	
End SQL

ALERT:C41("OK")