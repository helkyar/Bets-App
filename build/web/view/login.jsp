<%-- 
    Document   : login
    Created on : 9 feb 2022, 16:37:17
    Author     : Sandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
