var $result : Object

$result:=Form:C1466.edited_utilisateur.save()
If ($result.success=False:C215)
	ALERT:C41($result.statusText)
End if 
Form:C1466.edited_utilisateur.unlock()

Form:C1466.utilisateurs:=ds:C1482.Utilisateur.all()