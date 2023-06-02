//%attributes = {"publishedWeb":true}
//C_TEXT($0; $1)
#DECLARE($in : Text)->$out : Text
var $response : Object
var $response_text : Text
var web_context : Object
var $arguments : Object

If (web_context=Null:C1517)
	web_context:=New object:C1471
End if 

$arguments:=tool_getArguments

$response:=New object:C1471
$response.error_code:=-1
$response.error_message:="Veuillez remplir tous les champs."


Case of 
		// Je vérifie que les champs sont présents
	: ($arguments.w_prenom=Null:C1517)
	: ($arguments.w_nom=Null:C1517)
	: ($arguments.w_email=Null:C1517)
	: ($arguments.w_password=Null:C1517)
		
		// Je vérifie que les champs ne sont pas vides
	: ($arguments.w_prenom="")
	: ($arguments.w_nom="")
	: ($arguments.w_email="")
		//: ($arguments.w_password="")
		
	Else 
		$response.error_code:=0
		$response.error_message:="OK"
		
End case 

If ($response.error_code=0)
	
	If (web_context.utilisateur#Null:C1517)
		web_context.utilisateur.nom:=$arguments.w_nom
		web_context.utilisateur.prenom:=$arguments.w_prenom
		web_context.utilisateur.email:=$arguments.w_email
		If ($arguments.w_password#"")
			web_context.utilisateur.hach_mdp:=Generate digest:C1147($arguments.w_password; SHA256 digest:K66:4)
		End if 
		web_context.utilisateur.save()
		
	Else 
		
		$response.error_code:=-2
		$response.error_message:="Veuillez vous identifier."
		
	End if 
	
	
	
End if 


$response_text:=JSON Stringify:C1217($response)
WEB SEND TEXT:C677($response_text; "application/json")