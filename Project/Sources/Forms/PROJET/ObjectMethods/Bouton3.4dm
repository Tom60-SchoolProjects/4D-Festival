var $result : Object
$result:=Form:C1466.displayedEvenement.lock()

If ($result.success)
	// C'est tout bon, je peux modifier
Else 
	ALERT:C41("QQ1 d'autre modifie cet enreg.")
End if 
