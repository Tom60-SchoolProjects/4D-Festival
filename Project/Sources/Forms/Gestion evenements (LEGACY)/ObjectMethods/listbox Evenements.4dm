// On assigne une variable de travail pour pouvoir modifier les données
// et les sauvegardés plus tard
If (Form event code:C388=On Selection Change:K2:29)
	var $colonne; $line : Integer
	
	LISTBOX GET CELL POSITION:C971(*; "listbox Evenements"; $colonne; $line)
	
	If ($line>0)
		GOTO SELECTED RECORD:C245([Evenement:3]; $line)
	End if 
End if 