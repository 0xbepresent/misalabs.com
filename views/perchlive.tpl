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
                success: function(data, textStatus, XMLHttpRequest){
                    alert('success' + XMLHttpRequest.getResponseHeader('Set-Cookie'));
                },
               error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert('error' + XMLHttpRequest.getResponseHeader('Set-Cookie'));
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
