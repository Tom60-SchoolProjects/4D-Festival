// Au chargement du formulaire...
If (Form event code:C388=On Load:K2:1)
	// ...injecter les évenements dans le formulaire
	Form:C1466.evenements:=ds:C1482.Evenement.all()
End if 