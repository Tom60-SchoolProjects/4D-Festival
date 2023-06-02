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
	: ($arguments.w_email=Null:C1517)
	: ($arguments.w_password=Null:C1517)
		
		// Je vérifie que les champs ne sont pas vides
	: ($arguments.w_email="")
	: ($arguments.w_password="")
		
	Else 
		$response.error_code:=0
		$response.error_message:="OK"
		
End case 

If ($response.error_code=0)
	
	// Vérifier si l'utilisateur existe déjà
	var $utilisateurs : Object
	var $passHash : Text
	$passHash:=Generate digest:C1147($arguments.w_password; SHA256 digest:K66:4)
	$utilisateurs:=ds:C1482.Utilisateur.query("email === :1 and hach_mdp === :2"; $arguments.w_email; $passHash)
	
	If ($utilisateurs.length=1)
		web_context.utilisateur:=$utilisateurs.first()
	Else 
		$response.error_code:=-2
		$response.error_message:="Mauvais nom d'utilisateur/mots de passe"
	End if 
	
End if 


$response_text:=JSON Stringify:C1217($response)
WEB SEND TEXT:C677($response_text; "application/json")