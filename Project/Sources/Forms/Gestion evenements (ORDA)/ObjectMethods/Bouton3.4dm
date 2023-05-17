var $result : Object
$result:=Form:C1466.edited_evenement.lock()

If ($result.success)
	//[Zone de saisie Evenement Libelle]Enable!=True
Else 
	ALERT:C41("QQ1 d'autre modifie cet enreg.")
End if 
