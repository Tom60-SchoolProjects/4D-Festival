//%attributes = {"publishedWeb":true}
C_TEXT:C284($0; $1)

var boutiques : cs:C1710.BoutiquesSelection
boutiques:=ds:C1482.Boutique.all().orderBy("nom asc")