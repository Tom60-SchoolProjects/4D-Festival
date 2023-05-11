//%attributes = {"publishedWeb":true}
C_TEXT:C284($0; $1)

var $evenements : cs:C1710.EVENEMENT
$evenements:=ds:C1482.EVENEMENT.all().orderBy("Libelle")