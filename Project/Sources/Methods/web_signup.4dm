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
	: ($arguments.w_password="")
		
	Else 
		$response.error_code:=0
		$response.error_message:="OK"
		
End case 

If ($response.error_code=0)
	
	// Vérifier si l'utilisateur existe déjà
	var $utilisateurs : Object
	$utilisateurs:=ds:C1482.Utilisateur.query("email === :1"; $arguments.w_email)
	If ($utilisateurs.length=0)
		
		// Créer l'utilisateur
		var $nouvel_utilisateur : cs:C1710.UtilisateurEntity
		$nouvel_utilisateur:=ds:C1482.Utilisateur.new()
		$nouvel_utilisateur.nom:=$arguments.w_nom
		$nouvel_utilisateur.prenom:=$arguments.w_prenom
		$nouvel_utilisateur.email:=$arguments.w_email
		$nouvel_utilisateur.hach_mdp:=Generate digest:C1147($arguments.w_password; SHA256 digest:K66:4)
		$nouvel_utilisateur.save()
		
		web_context.utilisateur:=$nouvel_utilisateur
		
	Else 
		
		$response.error_code:=-2
		$response.error_message:="Utilisateur déjà existant."
		
	End if 
	
	
End if 


$response_text:=JSON Stringify:C1217($response)
WEB SEND TEXT:C677($response_text; "application/json")