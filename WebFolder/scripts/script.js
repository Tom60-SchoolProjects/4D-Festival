
$(document).ready(function () {
  $('#form_login')
    .submit(function (event) {
      event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

      var formContent = $(this).serialize();

      $.ajax({
        method: "POST",
        url: "/4DACTION/web_signin",
        data: formContent
      }).done(function (response) {
          if (response.error_code == 0) {
            window.location = '/home.shtml';
          }
          else {
            alert(response.error_message);
          }
      });
  });

  $('#form_inscription').submit(function (event) {
    event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

    var formContent = $(this).serialize();

    $.ajax(
      {
        method: "POST",
        url: "/4DACTION/web_signup",
        data: formContent
      }
    )
      .done(
        function (response) {
          if (response.error_code == 0) {
            window.location = '/home.shtml';
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
        url: "/4DACTION/web_account",
        data: formContent
      }
    )
      .done(
        function (response) {
          if (response.error_code == 0) {
            window.location = '/home.shtml';
          }
          else {
            alert(response.error_message);
          }
        }
      );
  });

});

function signout(event) {
  // Pour éviter d'exectuer l'action et du coup de changer de page
  event.preventDefault();

  $.ajax( {
      method: "POST",
      url: "/4DACTION/web_signout"
    }).done(
      function (response) {
        if (response.error_code == 0)
          location.reload(true);
        else
          alert(response.error_message);
      }
    );
}