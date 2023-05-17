If (Form event code:C388=On Load:K2:1)
	// ...injecter les évenements dans le formulaire
	load_evenements
	// et on verouille le formulaire de droite en lecture seul
	READ ONLY:C145([Evenement:3])
End if 