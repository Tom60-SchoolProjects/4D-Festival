
$(document).ready(function(){

  $('#form_login').submit(function (event) {
    event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

    var formContent = $(this).serialize();

    $.ajax(
        {
        method: "POST",
        url : "/4DACTION/wForm_Login",
        data: formContent
        }
      )
      .done(
        function(response){
          if (response.error_code == 0) {
            // location.reload(true);
            window.location = '/home.shtml';
            // alert('OK');
          }
          else {
            alert(response.error_message);
          }
        }
      );
  });

  $('#form_inscription').submit(function (event) {
    event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

    var formContent = $(this).serialize();

    $.ajax(
        {
        method: "POST",
        url : "/4DACTION/wForm_Inscription",
        data: formContent
        }
      )
      .done(
        function(response){
          if (response.error_code == 0) {
            // location.reload(true);
            window.location = '/home.shtml';
            // alert('OK');
          }
          else {
            alert(response.error_message);
          }
        }
      );
  });

  $('#form_account').submit(function (event) {
    event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

    var formContent = $(this).serialize();

    $.ajax(
        {
        method: "POST",
        url : "/4DACTION/wForm_Account",
        data: formContent
        }
      )
      .done(
        function(response){
          if (response.error_code == 0) {
            // location.reload(true);
            window.location = '/home.shtml';
            // alert('OK');
          }
          else {
            alert(response.error_message);
          }
        }
      );
  });

  
  $('#btn_logout').click(function (event) {
    event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

    $.ajax(
        {
        method: "POST",
        url : "/4DACTION/wForm_Logout"
        }
      )
      .done(
        function(response){
          if (response.error_code == 0) {
            location.reload(true);
            //window.location = '/home.shtml';
            // alert('OK');
          }
          else {
            alert(response.error_message);
          }
        }
      );
  });

});