if (document.getElementById('header'))
    fetch('header.shtml')
            .then(response => response.text())
            .then(content => {
                document
                    .getElementById('header')
                    .insertAdjacentHTML('beforebegin', content);

                    $('#btn_logout').click(signout);  
            });

if (document.getElementById('header_nonav'))
    fetch('header_nonav.shtml')
            .then(response => response.text())
            .then(content => {
                document
                    .getElementById('header_nonav')
                    .insertAdjacentHTML('beforebegin', content);
            });