//%attributes = {"publishedWeb":true}
#DECLARE($in : Text)->$out : Text
var $response : Object
var web_context : Object

$response:=New object:C1471
$response.error_code:=0
$response.error_message:="OK"


If (web_context#Null:C1517)
	web_context.utilisateur:=Null:C1517
End if 


WEB SEND TEXT:C677(JSON Stringify:C1217($response); "application/json")