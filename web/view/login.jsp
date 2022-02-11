<%-- 
    Document   : login
    Created on : 9 feb 2022, 16:37:17
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
/* estilos provisionales aqui */
body {font-family: Arial, Helvetica, sans-serif;
        background: #FFBC00}
form {border: 3px solid #04AA6D;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  text-align: center;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  border: 1px solid #ccc;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
  border: 1px solid #ccc;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 24px 0;
  width: 20%;
  height: 20%;
  
}

img.avatar {
  width: 10px;
  height: 10px;
  border-radius: 5%;
}

.container {
  padding: 16px;
  border: 1px solid #ccc;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="../css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="../css/sessionpages.css" media="screen" />
        <title>Bárbara bets</title>
    </head>
    <body>
        <h1>Login page (shares css with Register-page?)</h1>

        <form action="/action_page.php" method="post">
            <dir class ="imgcontenedorlogin">
                <img src="">
                <img src="../img/logo.png" alt="Avatar" class="avatarlogin">                
            </dir>
            <label for="email"><b>Email</b></label>
            <input type="" placeholder="Intruoduce la contraseña" name="psw" required>
            <label for="psw"><b>Password</b></label>
            <input type="Contraseña" placeholder="Intruoduce la contraseña" name="psw" required>
           
            <button type="submit">Inicia sesion</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Recordar
            </label>
        </div>

        <div class="container" style="background-color:#FFBC00">
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="psw">Has olvidado la<a href="#">contraseña?</a></span>
        </div>


    </form>
</body>
</html>
