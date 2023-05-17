//%attributes = {}
var $readwrite : Boolean

$readwrite:=Not:C34(Locked:C147([Evenement:3]))

OBJECT SET ENTERABLE:C238([Evenement:3]libelle:2; $readwrite)
OBJECT SET ENTERABLE:C238([Evenement:3]date_debut:3; $readwrite)
OBJECT SET ENTERABLE:C238([Evenement:3]date_fin:4; $readwrite)

OBJECT SET ENABLED:C1123(*; "bouton supprimer"; $readwrite)
OBJECT SET ENABLED:C1123(*; "bouton enregistrer"; $readwrite)
