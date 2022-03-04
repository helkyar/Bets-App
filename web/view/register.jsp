<%-- 
    Document   : register
    Created on : 9 feb 2022, 16:37:27
    Author     : admin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Apuestas Bárbaras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="../css/mainpage.css" media="screen" />
        <style>
            *{
                font-family: 'Roboto', sans-serif;
            }
            marquee{
                font-size: 3rem;

            }


            footer {
                text-align: center;
                padding: 3px;
                background-color: #1F3B34;
                color: white;
            }

            input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
                color: #aca49c;
                font-size: 0.875em;
            }

            input:focus::-webkit-input-placeholder, textarea:focus::-webkit-input-placeholder {
                color: #bbb5af;
            }

            input::-moz-placeholder, textarea::-moz-placeholder {
                color: #aca49c;
                font-size: 0.875em;
            }

            input:focus::-moz-placeholder, textarea:focus::-moz-placeholder {
                color: #bbb5af;
            }

            input::placeholder, textarea::placeholder {
                color: #aca49c;
                font-size: 0.875em;
            }

            input:focus::placeholder, textarea::focus:placeholder {
                color: #bbb5af;
            }

            input::-ms-placeholder, textarea::-ms-placeholder {
                color: #aca49c;
                font-size: 0.875em;
            }

            input:focus::-ms-placeholder, textarea:focus::-ms-placeholder {
                color: #bbb5af;
            }

            /* on hover placeholder */

            input:hover::-webkit-input-placeholder, textarea:hover::-webkit-input-placeholder {
                color: #e2dedb;
                font-size: 0.875em;
            }

            input:hover:focus::-webkit-input-placeholder, textarea:hover:focus::-webkit-input-placeholder {
                color: #cbc6c1;
            }

            input:hover::-moz-placeholder, textarea:hover::-moz-placeholder {
                color: #e2dedb;
                font-size: 0.875em;
            }

            input:hover:focus::-moz-placeholder, textarea:hover:focus::-moz-placeholder {
                color: #cbc6c1;
            }

            input:hover::placeholder, textarea:hover::placeholder {
                color: #e2dedb;
                font-size: 0.875em;
            }

            input:hover:focus::placeholder, textarea:hover:focus::placeholder {
                color: #cbc6c1;
            }

            input:hover::placeholder, textarea:hover::placeholder {
                color: #e2dedb;
                font-size: 0.875em;
            }

            input:hover:focus::-ms-placeholder, textarea:hover::focus:-ms-placeholder {
                color: #cbc6c1;
            }

            body {
                font-family: 'Lato', sans-serif;

                color: #b3aca7;
            }

            .titulo{
                position: relative;
                margin: 100px 0 25px 0;
                font-size: 2.3em;
                text-align: center;
                letter-spacing: 7px;
                background: black;
                color: white;
            }

            #form {
                position: relative;
                width: 500px;
                /*  margin: 5px auto 100px auto;*/
                padding: 2%;
            }

            input {
                font-family: 'Lato', sans-serif;
                font-size: 0.875em;
                width: 470px;
                height: 50px;
                padding: 0px 15px 0px 15px;

                background: transparent;
                outline: none;
                color: black;


                border-bottom: none;

                transition: all 0.3s ease-in-out;
                -webkit-transition: all 0.3s ease-in-out;
                -moz-transition: all 0.3s ease-in-out;
                -ms-transition: all 0.3s ease-in-out;
            }

            input:hover {
                background: #b3aca7;
                color: #e2dedb;
            }



            #submit {
                width: 502px;

                padding: 0;
                margin: -5px 0px 0px 0px;

                font-family: 'Lato', sans-serif;
                font-size: 0.875em;
                color: black;

                outline:none;
                cursor: pointer;

                border: solid 1px #b3aca7;
                border-top: none;
            }

            #submit:hover {
                color: #e2dedb;
            }
            .fondo-foto {
                /* background: conic-gradient(lightpink, white, powderblue); */
                background: conic-gradient(#FFBC00, white, #1F3B34);
            }
            .caja{
                margin-right: 30rem;
                margin-left: 28rem;
                background: white;
                border: yellow 5px dotted;
                filter:alpha(opacity=95);

                -moz-opacity:.95;opacity:.95;
            }
            .FUTBOL{
                BACKGROUND-IMAGE: url(../img/BANNER5_LARGO.jpg);
                background-repeat: no-repeat;
                background-position-x: center;
                background-position-y: center;
                background-size: 100%;
            }
            h1 {
                display: inline-block;
                color: white;
                font-family: 'Righteous', serif;
                font-size: 5rem; 
                text-shadow: .03em .03em 0 hsla(230,40%,50%,1);
                margin-left: 25%;
                margin-bottom: 15%;

            }
            h1:after {
                content: attr(data-shadow);
                position: absolute;
                top: 6.5rem; left: 10rem;
                z-index: -1;
                text-shadow: none;
                background-image:
                    linear-gradient(
                    45deg,
                    transparent 45%,
                    hsla(48,20%,90%,1) 45%,
                    hsla(48,20%,90%,1) 55%,
                    transparent 0
                    );
                background-size: .05em .05em;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;

                animation: shad-anim 15s linear infinite;

            }
            .logo {
                width: 7rem;
            }
            a {
                outline: none;
                text-decoration: none;
                color: black;
            }
            .menu-btn-principal{

                background-color: #1F3B34;
                color: white;
                border: 2px solid white;
               border-radius: 20%;
               width: 100px;
               heigh: 100px;
              

                padding: 10px;
                margin: 5px;
                transition-duration: 0.4s;

            }

            .menu-btn-principal:hover {
                box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.24), 0 10px 20px 0 rgba(0, 0, 0, 0.19);
                background-color: gray;

                color: black;
            }
            .menu-btn-principal-ayuda{
                 background-color: #1F3B34;
                color: white;
                border: 2px solid white;
               font-size: 1.5rem;
                border-radius: 1% 50%;
                
              

                padding: 10px;
                margin: 5px;
                transition-duration: 0.4s;
            }
            .menu-btn-principal-ayuda:hover{
                
                box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.24), 0 10px 20px 0 rgba(0, 0, 0, 0.19);
                background-color: gray;

                color: black;
                
            }
        </style>
    </head>
    <body>
   <header>            
            <div>
                <img class="logo" src="../img/LOGO_APUESTAS-04.png" alt="alt"/>
            </div>
            <form action="action">


                <label><%= new Date()%></label>
            </form>

            <nav>

               
                  <button class="menu-btn-principal"><center><a  style="color:white" href="main.jsp">INICIO</a></center></button> 
                 <button class="menu-btn-principal"><center><a  style="color:white" href="login.jsp">LOGIN</a></center></button> 
                <button class="menu-btn-principal"><center><a style="color:white" href="iniciar.jsp">Prueba</a></center></button>
                <button class="menu-btn-principal-ayuda"><center><a style ="color:white"href="Ayuda.jsp">?</a></center></button>               
            </nav>
        </header>   

        <div class="fondo-foto">   
            <div class="titulo">Registro:</div>

            <form id="form" class="topBefore caja">

                <input id="name" type="text" placeholder="NAME"><br><br>
                <input id="email" type="text" placeholder="E-MAIL"><br><br>
                <input id="telefono" type="text" placeholder="telefono"><br><br>
                <input id="password" type="text" placeholder="password"><br><br>
                <input id="password" type="text" placeholder="poner otra vez el password"> <br><br>
                <input id="submit" type="submit" value="GO!">

            </form>
        </div>  
        <footer class="banner">
            <DIV class="FUTBOL">
                <h1 data-shadow='¡FUTBOL!'></h1>
            </DIV> 


        </footer>

        <footer>
            <p>Autor: Verónica, Javi, Noah, Mark, Patricia y Sandra<br>

        </footer>  
    </body>
</html>
