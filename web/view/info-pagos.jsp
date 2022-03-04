<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*" %>

<html>
    <head>
        <title>Apuestas Bárbaras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="../css/mainpage.css" media="screen" />
        <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>

        <style>
            *{
                font-family: 'Roboto', sans-serif;
            }
            #a{
                float:left;
                padding-right: 4.2%;
                padding-top: 20.8%;
                /*    border: 5px solid #1F3B34;*/


            }


            #img{
                padding-top: 5%;
                padding-left: 45%; 
            }
            img{
                display:block;
                margin:auto;
            }
            .boton {
                padding:20%; /*espacio alrededor texto*/
                margin: 10% 30%;
                border:  #1F3B34;
                background-color:  #1F3B34; /*color botón*/
                color: white; /*color texto*/
                text-decoration: none; /*decoración texto*/
                text-transform: uppercase; /*capitalización texto*/
                font-family: 'Helvetica', sans-serif; /*tipografía texto*/
                border-radius: 100%; /*bordes redondos*/
            }
            .c{
                color: white; /*color texto*/
            }
            header div{
                /*    background-color: #FFBC00;*/
                height: 100%;
                background: conic-gradient( lightblue,white, lightblue);
            }
            .logo {
                width: 5rem;
                /* margin: 1rem 2rem 0 2rem; */

            }
            .Apuestas {
                background-color: #1F3B34;
                color: white;
                padding: 10px;
                font-family: Perpetua;
            }
            p{

            }

            h1 span{
                text-align: center;
            }
            .search {
                position: relative;
                width: 1.5rem;
                top: 2rem;
                margin-left: 1rem;
            }
            footer {
                text-align: center;
                padding: 3px;
                background-color: #1F3B34;
                color: white;
            }
            main {
                padding-right: 5%;
                column-count:2;
                margin: 1%;
                -moz-column-count: 2;
                -webkit-column-count:2;
                /*espaciado entre columnas*/
                column-gap:150px;
                -moz-column-gap:150px;
                -webkit-column-gap: 150px;
                /*lineas separadoras*/
                column-rule:6px dotted black;
                -moz-column-rule:6px dotted black;
                -webkit-column-rule:2px dotted grey

            }
            a {
                outline: none;
                text-decoration: none;
                color: black;
            }
            .foto{
                height: 350px;
                background-image: url(https://www.guru-store.es/gurustore/uploads/Sistema%20de%20pago/usapagos-530x397.png);
                background-repeat: no-repeat;
                background-position-x: center;
                background-position-y: center;
                background-size: 30rem;
                filter:alpha(opacity=95);

                -moz-opacity:.95;opacity:.95;

            }
            .enlaces-destacados-home {
                width: 100%;
                display: flex;
                justify-content: space-around;
                align-items: center;
                margin-bottom: 1%;
            }
            .c-enlaces-pc__ultimos-resultados {
                background-image: url("../img/../img/paypal.png");
                line-height: 40px;
                background-size: 45px;
                background-position-x: 4%;
                background-position-y: 8px;
                background-repeat: no-repeat;
                float: left;
                border: 1px solid #107bbf;
                color: #107bbf;
                width: 26%;
                padding: 0.4rem 0.4rem;
                display: inline-block;
                white-space: nowrap;
                -webkit-box-shadow: 5px 5px 5px 0 rgb(7 11 50 / 29%);
                -moz-box-shadow: 5px 5px 5px 0 rgba(7,11,50,0.29);
                box-shadow: 5px 5px 5px 0 rgb(7 11 50 / 29%);
                text-transform: uppercase;
                color: #107bbf;
                font-family: "Hurme_GeometricSans2_SB";
                font-size: .9rem;
                vertical-align: middle;
                display: inline-block;
                background-color: #fff;
                cursor: pointer;
            }
            .c-enlaces-pc__ahora-juego {
                background-image: url("../img/../img/visa.png");
                line-height: 40px;
                background-size: 28px;
                background-position-x: 7%;
                background-position-y: 10px;
                background-repeat: no-repeat;
                float: left;
                border: 1px solid #107bbf;
                color: #107bbf;
                width: 26%;
                padding: 0.2rem 0.4rem;
                display: inline-block;
                white-space: nowrap;
                -webkit-box-shadow: 5px 5px 5px 0 rgb(7 11 50 / 29%);
                -moz-box-shadow: 5px 5px 5px 0 rgba(7,11,50,0.29);
                box-shadow: 5px 5px 5px 0 rgb(7 11 50 / 29%);
                text-transform: uppercase;
                color: #107bbf;
                font-family: "Hurme_GeometricSans2_SB";
                font-size: .9rem;
                vertical-align: middle;
                display: inline-block;
                background-color: #fff;
                cursor: pointer;
            }
            .c-enlaces-pc__avisos {
                background-image: url("../img/maestro.png");
                line-height: 40px;
                background-size: 28px;
                background-position-x: 7%;
                background-position-y: 10px;
                background-repeat: no-repeat;
                float: left;
                border: 1px solid #107bbf;
                color: #107bbf;
                width: 26%;
                padding: 0.2rem 0.4rem;
                display: inline-block;
                white-space: nowrap;
                -webkit-box-shadow: 5px 5px 5px 0 rgb(7 11 50 / 29%);
                -moz-box-shadow: 5px 5px 5px 0 rgba(7,11,50,0.29);
                box-shadow: 5px 5px 5px 0 rgb(7 11 50 / 29%);
                text-transform: uppercase;
                color: #107bbf;
                font-family: "Hurme_GeometricSans2_SB";
                font-size: .9rem;
                vertical-align: middle;
                display: inline-block;
                background-color: #fff;
                cursor: pointer;
            }
            .c-2-destacados {
                width: 40%;
                float: left;
                padding-top: 6%;
            }

            .c-2-destacados__enlace {
                width: 49%;

            }
            .c-2-destacados__enlace-imagen {
                width: 60%;


            }
            .fondo-foto{

                /*   background: conic-gradient(lightpink, white, powderblue);*/
                background: conic-gradient(#FFBC00, white, #1F3B34);
            }
            h1 {
                display: inline-block;
                color: white;
                font-family: 'Righteous', serif;
                font-size: 5em;
                text-shadow: 0.03em 0.03em 0 hsl(230deg 40% 50%);

                text-align: center;
            }
            h1:after {
                content: attr(data-shadow);
                position: absolute;
                top: .06em; left: .06em;
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
            video{
                --webkit-box-shadow: 0 10px 6px -6px #777;
                -moz-box-shadow: 0 10px 6px -6px #777;
                box-shadow: 0 10px 6px -6px #777;
                background-image: url(data:image/jpeg;base64,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);
            }


            @keyframes shad-anim {
                0% {background-position: 0 0}
                0% {background-position: 100% -100%}
            }
            .FUTBOL{
                BACKGROUND-IMAGE: url(../img/BANNER2_LARGO_3_sin_logo.jpg);
                background-repeat: no-repeat;
                background-position-x: center;
                background-position-y: center;
                background-size: 100%;
            }

            .btnnav1 {
                background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),

                    no-repeat center center/cover;
                font-family: Arial, Helvetica, sans-serif;

            }

            .btnnav1 .btnnavcont {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .btnnavcont a {
                font-size: 1.5rem;
                padding: 1rem 3rem;
                color: #f4f4f4;
                text-transform: uppercase;
            }

            .btnnavcont a  {
                text-decoration: none;
                border: 2px solid #67F48C;
                position: relative;
                overflow: hidden;
                border-radius: 10% ;
            }

            .btnnavcont a:hover {
                box-shadow: 1px 1px 25px 10px rgba(146, 148, 248, 0.4);
            }

            .btnnavcont a:before {
                content: "";
                position: absolute;
                top: 0;
                left: -100%;
                width: 100%;
                height: 100%;
                background: linear-gradient(
                    120deg,
                    transparent,
                    rgba(146, 148, 248, 0.4),
                    transparent
                    );
                transition: all 650ms;
            }

            .btnnavcont a:hover:before {
                left: 100%;
            }

            .banner{
                background-color: #353c66;
            }
            .img1 {
                width: 
                    8rem;
                margin: -3.2rem 7rem;
            }
            .visa {
                width: 8rem;
                margin: -3.2rem 7rem;
            }
            .maestro {
                width: 9rem;
                margin: -3.2rem 7rem;
            }
            .maestro img{
                width: 1rem;
            }
            .visa img{
                width: 1rem;
            }
            /* botones nav*/
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

            header div {
                background-color: #FFBC00;
                height: 100%;
                width: 14.5%;
            }

            /*fin de estilos del nav*/


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
                <button class="menu-btn-principal"><center><a style="color:white" href="register.jsp">REGISTRO</a></center></button>
                <button class="menu-btn-principal"><center><a style="color:white" href="iniciar.jsp">Prueba</a></center></button>
                <button class="menu-btn-principal-ayuda"><center><a style ="color:white"href="Ayuda.jsp">?</a></center></button>               
            </nav>
        </header>  
        <div class="fondo-foto">
            <div class="foto">


            </div>

        </div>
    </div>

    <div></div>

    <h1><span style="color: #003300; text-align: center "> M&eacute;todos de Pago Aceptados</span></h1>
    <div>
        <p style="text-align:center">A continuaci&oacute;n encontrar&aacute;s una lista y una breve descripci&oacute;n de cada m&eacute;todo de dep&oacute;sito ofrecido por <strong>Apuestas B&aacute;rbaras</strong>. Para consultar las instrucciones completas sobre c&oacute;mo realizar un dep&oacute;sito con alguno de los m&eacute;todos enumerados en la lista.</p>
        <center>
            <table class="TableList" style="height: 741px; width: 534px; border-style: groove; border-color: TOMATO;" border="2">
                <tbody>
                    <tr style="height: 18px;">
                        <th style="height: 18px; width: 522.8px;" colspan="2">M&eacute;todos de dep&oacute;sito con los que tambi&eacute;n puedes realizar retiros</th>
                    </tr>
                    <tr style="height: 54px;">
                        <td style="height: 54px; width: 128.087px;">Tarjetas de cr&eacute;dito y d&eacute;bito VISA</td>
                        <td style="height: 54px; width: 389.112px;">Un m&eacute;todo f&aacute;cil y r&aacute;pido para depositar directamente en tu cuenta. Disponible para socios de todo el mundo.</td>
                    </tr>
                    <tr style="height: 36px;">
                        <td style="height: 36px; width: 128.087px;">MasterCard</td>
                        <td style="height: 36px; width: 389.112px;">Un m&eacute;todo f&aacute;cil y r&aacute;pido para depositar directamente en tu cuenta.</td>
                    </tr>
                    <tr style="height: 109px;">
                        <td style="height: 109px; width: 128.087px;">ApplePay</td>
                        <td style="height: 109px; width: 389.112px;">Una tecnolog&iacute;a de pago y una de las funciones de los &uacute;ltimos iPhones, iPads y Apple Watch. Recoge informaci&oacute;n de tus tarjetas de cr&eacute;dito, tarjetas de d&eacute;bito y otros datos de pago confidenciales de la aplicaci&oacute;n Wallet. Esto te permite utilizar tu dispositivo como monedero para pagar en las tiendas.</td>
                    </tr>
                    <tr style="height: 91px;">
                        <td style="height: 91px; width: 128.087px;">MuchBetter</td>
                        <td style="height: 91px; width: 389.112px;">MuchBetter es una aplicaci&oacute;n m&oacute;vil de monedero electr&oacute;nico que pone a tu disposici&oacute;n una forma instant&aacute;nea, segura y sencilla de depositar fondos en tu cuenta de Apuestas B&aacute;rbaras mediante varias opciones diferentes.</td>
                    </tr>
                    <tr style="height: 72px;">
                        <td style="height: 72px; width: 128.087px;">NETELLER</td>
                        <td style="height: 72px; width: 389.112px;">Disponibles para nuestros socios en todo el mundo, los dep&oacute;sitos con NETELLER son una manera instant&aacute;nea, segura y f&aacute;cil de depositar dinero en tu cuenta, directamente desde tu cuenta de NETELLER.</td>
                    </tr>
                    <tr style="height: 91px;">
                        <td style="height: 91px; width: 128.087px;">PayPal</td>
                        <td style="height: 91px; width: 389.112px;">Los dep&oacute;sitos con PayPal est&aacute;n disponibles en Alemania, Espa&ntilde;a, el Reino Unido, Irlanda, Italia, Portugal, Finlandia, Dinamarca, Austria y Suecia y son una manera instant&aacute;nea, segura y sencilla de depositar fondos en tu cuenta.</td>
                    </tr>
                    <tr style="height: 54px;">
                        <td style="height: 54px; width: 128.087px;">Skrill</td>
                        <td style="height: 54px; width: 389.112px;">Skrill es un m&eacute;todo seguro, f&aacute;cil e instant&aacute;neo de depositar en tu cuenta, disponible para nuestros socios en todo el mundo.</td>
                    </tr>
                    <tr style="height: 18px;">
                        <th style="height: 18px; width: 522.8px;" colspan="2">M&eacute;todos de dep&oacute;sito que no pueden recibir pagos</th>
                    </tr>
                    <tr style="height: 72px;">
                        <td style="height: 72px; width: 128.087px;">Paysafecard</td>
                        <td style="height: 72px; width: 389.112px;">Los dep&oacute;sitos con la tarjeta Paysafecard son una forma instant&aacute;nea, segura y f&aacute;cil de depositar fondos en tu cuenta. Se puede comprar las tarjetas Paysafe en cualquier distribidor Paysafecard.</td>
                    </tr>
                    <tr style="height: 72px;">
                        <td style="height: 72px; width: 128.087px;">Klarna (Sofortbanking)</td>
                        <td style="height: 72px; width: 389.112px;">Para nuestros socios Espa&ntilde;a, los dep&oacute;sitos con este m&eacute;todo son una manera instant&aacute;nea, segura y sencilla de depositar en tu cuenta de Apuestas B&aacute;rbaras directamente desde su cuenta bancaria.</td>
                    </tr>
                    <tr style="height: 18px;">
                        <th style="height: 18px; width: 522.8px;" colspan="2">M&eacute;todos s&oacute;lo para pagos de ganancias</th>
                    </tr>
                    <tr style="height: 36px;">
                        <td style="height: 36px; width: 128.087px;">Transferencia Electr&oacute;nica</td>
                        <td style="height: 36px; width: 389.112px;">Recibe el pago de tus ganancias directamente a tu cuenta bancaria personal.</td>
                    </tr>
                </tbody>
            </table>
        </center>
        <p style="text-align:center"><strong>Apuestas B&aacute;rbaras</strong> utiliza las tecnolog&iacute;as de seguridad y cifrado m&aacute;s avanzadas a fin de garantizar la absoluta seguridad de tus transacciones y de toda tu informaci&oacute;n financiera.</p>
    </div>


</section> <br> <br>
<footer class="banner">
    <DIV class="FUTBOL">
        <h1 data-shadow='FUTBOL!'></h1>
    </DIV> 


</footer>







<footer>
    <p>Autor: Verónica, Javi, Noah, Mark, Patricia y Sandra<br>

</footer>                


</body>
</html>