//%attributes = {"publishedWeb":true}
C_TEXT:C284($0; $1)

var evenements : cs:C1710.EvenementSelection
evenements:=ds:C1482.Evenement.all().orderBy("libelle asc")

