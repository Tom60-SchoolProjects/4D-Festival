//%attributes = {}

var $curs_evenement; $nbre_boutiques; $curs_boutique : Integer
var $id_evenement : Integer
var $nomBoutique : Text

ARRAY LONGINT:C221($aIDs; 0)

Begin SQL
	
	SELECT ID FROM Evenement
	INTO :$aIDs;
	
End SQL

For ($curs_evenement; 1; Size of array:C274($aIDs))
	
	$nbre_boutiques:=Random:C100%5  // 0....4
	For ($curs_boutique; 1; $nbre_boutiques)
		
		Case of 
			: ($curs_boutique=1)
				$nomBoutique:="MiaMiame!"
			: ($curs_boutique=2)
				$nomBoutique:="Style & Cie"
			: ($curs_boutique=3)
				$nomBoutique:="TardTard"
			Else 
				$nomBoutique:="GlouGlou"
		End case 
		
		$id_evenement:=$aIDs{$curs_evenement}
		
		Begin SQL
			INSERT INTO Boutique
			(Nom, [ID Evenement])
			VALUES
			(:$nomBoutique, :$id_evenement);
		End SQL
		
	End for 
	
End for 

ALERT:C41("OK")