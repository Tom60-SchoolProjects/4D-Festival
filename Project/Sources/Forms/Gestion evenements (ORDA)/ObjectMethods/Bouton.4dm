var $result : Object

$result:=Form:C1466.edited_evenement.save()
If ($result.success=False:C215)
	ALERT:C41($result.statusText)
End if 
Form:C1466.edited_evenement.unlock()

Form:C1466.evenements:=ds:C1482.Evenement.all()