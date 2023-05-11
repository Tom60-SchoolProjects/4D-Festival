//%attributes = {}
Begin SQL
	
	DELETE FROM EVENEMENT WHERE (Libelle = 'GC')
	
End SQL

ALERT:C41("OK")