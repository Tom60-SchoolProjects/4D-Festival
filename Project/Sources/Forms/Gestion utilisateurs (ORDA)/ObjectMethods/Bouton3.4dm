var $result : Object
$result:=Form:C1466.edited_utilisateur.lock()

If ($result.success)
	//[Zone de saisie Evenement Libelle]Enable!=True
Else 
	ALERT:C41("Quelqu'un d'autre modifie cet enregistrement.")
End if 
