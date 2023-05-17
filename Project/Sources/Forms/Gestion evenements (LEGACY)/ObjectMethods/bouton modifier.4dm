READ WRITE:C146([Evenement:3])
LOAD RECORD:C52([Evenement:3])

If (Locked:C147([Evenement:3]))
	ALERT:C41("Déjà quelqu'un modifie déjà cette évenement")
End if 

activate_evenement