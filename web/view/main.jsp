<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*" %>

<html>
    <head>
        <title>Apuestas B�rbaras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="../css/mainpage.css" media="screen" />
        <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script defer>
            let cookies = () => {
                //======================================================================
                // COOKIES
                //======================================================================

                //-----------------------------------------------------
                // Configuraci�n
                //-----------------------------------------------------
                const urlsScriptsCookies = ['https://analytics.google.com', 'https://facebook.com'];

                function contenidoScriptsCookies() {
                    ////////////  �Google Anal�tics? /////////////
                    ////////////  �Facebook Pixel? /////////////
                    ////////////  �Admob? /////////////
                    ////////////  etc  /////////////
                }


                //-----------------------------------------------------
                // Variables
                //-----------------------------------------------------
                const seccionCookie = document.querySelector('section.cookies');
                const cookieSi = document.querySelector('.cookies__boton--si');
                const cookieNo = document.querySelector('.cookies__boton--no');
                const nuevosScripts = document.querySelector('#nuevosScripts');

                //-----------------------------------------------------
                // Funciones
                //-----------------------------------------------------

                /**
                 * M�todo que oculta la secci�n de Cookie para siempre
                 */
                function ocultarCookie() {
                    // Borra la secci�n de cookies en el HTML
                    seccionCookie.remove();
                }

                /**
                 * M�todo que marca las cookies como aceptadas
                 */
                function aceptarCookies() {
                    // Oculta el HTML de cookies
                    ocultarCookie();
                    // Guarda que ha aceptado
                    localStorage.setItem('cookie', true);
                    // Tu codigo a ejecutar si aceptan las cookies
                    ejecutarSiAcepta();
                }

                /**
                 * M�todo que marca las cookies como denegadas
                 */
                function denegarCookies() {
                    // Oculta el HTML de cookies
                    ocultarCookie();
                    // Guarda que ha aceptado
                    localStorage.setItem('cookie', false);
                }

                /**
                 * M�todo que ejecuta tu c�digo si aceptan las cookies
                 */
                function ejecutarSiAcepta() {
                    // Crea los <script>
                    urlsScriptsCookies.forEach((url) => {
                        const nuevoScript = document.createElement('script');
                        nuevoScript.setAttribute('src', url);
                        nuevosScripts.appendChild(nuevoScript);
                    });
                    // Lanza los c�digos
                    contenidoScriptsCookies();
                }

                /**
                 * M�todo que inicia la l�gica
                 */
                function iniciar() {
                    // Comprueba si en el pasado el usuario ha marcado una opci�n
                    if (localStorage.getItem('cookie') !== null) {
                        if (localStorage.getItem('cookie') === 'true') {
                            // Acept�
                            aceptarCookies();
                        } else {
                            // No acept�
                            denegarCookies();
                        }
                    }
                }

                //-----------------------------------------------------
                // Eventos
                //-----------------------------------------------------
                cookieSi.addEventListener('click', aceptarCookies, false);
                cookieNo.addEventListener('click', denegarCookies, false);

                return {
                    iniciar: iniciar
                }
            }

            // Activa el c�digo. Comenta si quieres desactivarlo.
            cookies().iniciar();

        </script>
        <style>
            *{
                font-family: 'Roboto', sans-serif;
            }
            .cookies {
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                background: black;
                color: white;
                font-family: arial;
                text-align: center;
            }

            .cookies__boton {
                background: initial;
                border: 2px solid white;
                padding: 1rem;
                font-size: 1rem;
                color: white;
                width: 5rem;
                text-align: center;
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
                background-color:  #1F3B34; /*color bot�n*/
                color: white; /*color texto*/
                text-decoration: none; /*decoraci�n texto*/
                text-transform: uppercase; /*capitalizaci�n texto*/
                font-family: 'Helvetica', sans-serif; /*tipograf�a texto*/
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
                background-image: url(../img/simulador-apuestas-deportivas.png);
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
                background-image: url("../img/business-color_goal-64_icon-icons.com_53458.png");
                line-height: 40px;
                background-size: 28px;
                background-position-x: 3%;
                background-position-y: 8px;
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
            .c-enlaces-pc__ahora-juego {
                background-image: url("../img/Future-80_icon-icons.com_57322.png");
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
                background-image: url("../img/notification4_icon-icons.com_73708 (1).png");
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
                font-size: 12em; 
                text-shadow: .03em .03em 0 hsla(230,40%,50%,1);
                margin-left: 25%;
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



        <br>
        <div class="c-destacados-home c-2-destacados">
            <a  title="" class="c-2-destacados__enlace" id="qa_home_destacado1">
                <img src="../img/PRIMITIVA-1702.jpg" class="c-2-destacados__enlace-imagen"></a>
            <a  title="" class="c-2-destacados__enlace" id="qa_home_destacado2">
                <img src="../img/QUINIELA-180222.png" class="c-2-destacados__enlace-imagen"></a>
            <center> <video src="../VIDEO/Intro Eleccin de Ganadores_free.mp4" width="280" height="280"autoplay muted loop></video></center> <br> <BR>
            <picture ><source  type="image/webp" sizes="(min-width: 260px) 260px, 100vw" srcset="../img/mobile-device.png 621w"><img data-gatsby-image-ssr="" data-main-image="" style="opacity: 1;" sizes="(min-width: 621px) 621px, 100vw" decoding="async" loading="lazy" alt="Un ejemplo de c�mo se ve la versi�n m�vil de una p�gina web gratuita hecha con Jimdo." srcset="../img/mobile-device.png 621w"  srcset="../img/mobile-device.png 621w"></picture>


        </div> 

        <section>
            <br>
            <main>
                <h4 class="Apuestas">APUESTAS B�RBARAS</h4>
                <p><b><i>! Disfruta de la oferta de apuestas deportivas �</i></b></p>

                <p>En <b>APUESTAS B�RBARAS</b> encontrar�s  una extensa oferta de apuestas futbol�sticas online. Elige de entre las diferentes Ligas y marca un buen gol con tus apuestas de f�tbol.</p>


                <p>Elige cualquier competici�n de f�tbol y haz tus apuestas en cualquiera de las <b>Ligas Europeas</b>, entre semana y el fin de semana, haz tus apuestas de segunda divisi�n si es que buscas buenas cuotas, porque es una categor�a muy igualada en la que ning�n favorito es claro y los resultados de partidos no est�n claros. Si te gustan las apuestas a largo plazo, busca en los deportes las apuestas a ganador de una competici�n o de un galard�n en concreto.</p>


                <p>Como ya sabr�s, en Espa�a cada casa de apuestas online necesita una licencia para operar y Apuestas B�rbaras, por supuesto, es una <b>Casa de apuestas con Licencia en Espa�a</b>. Haz todas las apuestas que quieras en un entorno seguro y regulado, en el que no tendr�s problemas de ning�n tipo para depositar o retirar tu dinero. A Apuestas B�rbaras le avala su trayectoria como una de las casas de apuestas reguladas en Espa�a que opera ininterrumpidamente desde la <b>regulaci�n del mercado del juego online en junio de 2012</b>.</p>

                <p>La mec�nica para apostar en Apuestas B�rbaras es muy c�moda y sencilla gracias a nuestra <b>gu�a de apuestas deportivas</b> que te orientar� a lo largo del proceso. Los espa�oles cada d�a somos m�s aficionados a las apuestas por internet.</p>


                <p><b><i> �Vas a quedarte fuera de juego?</b></i></p>

                <p>Sigue los eventos deportivos m�s destacados cada d�a y realiza de manera segura tus apuestas deportivas aprovechando nuestras cuotas.</p>
                <h4 class="Apuestas">M�todos de apuestas Deportivas</h4>
                <p>Existen <b>varios M�todos de Apuestas</b> que se pueden aplicar a las apuestas deportivas, pero ninguno es 100% seguro. Vamos a mencionar m�todos m�s habituales, pero que conllevan cierto riesgo.</p>
                <h4 class="Apuestas">Martingala</h4>

                <p>Tiene su origen en el juego de casino de la Ruleta y consiste en hacer una apuesta, y volver a realizarla siempre que se haya acertado, o doblar el importe de la apuesta tras cada fallo, de tal forma que <b>siempre se obtiene una unidad como beneficio</b>, pero podr�a ocurrir que se tuviera que doblar la apuesta demasiadas veces seguidas.</p> 

                <h4 class="Apuestas">El M�todo 2/3</h4>

                <p>Consiste en escoger <b>3 partidos y hacer 3 apuestas combinando solo 2 de las selecciones</b>, que deben tener una cuota cercana a 2.0 para que sea rentable.</p>


                <p>Apostamos 1? a victorias de Equipo X y Equipo Y (cuota 1.75)</p>
                <p>Apostamos 1? a victorias de Equipo X y Equipo Z (cuota 1.75)</p>
                <p>Apostamos 1? a victorias de Equipo Y y Equipo Z (cuota 1.75)</p>
                <p>Inversi�n: 3? ? Premio acertando 2 de 3: 3.5? ? Beneficio: 0.5?</p>

                <h4 class="Apuestas">Sistema Patent</h4>

                <p>Es un sistema parecido bastante desconocido, pero que si se realiza correctamente ofrece bastantes posibilidades de ganar. Es un <b>sistema de 7 apuestas con 3 pron�sticos</b>. Una apuesta simple por cada pron�stico, 3 combinadas de 2 pron�sticos y una combinada con los 3 pron�sticos. Corre poco riesgo gracias a las apuestas simples, que pueden dar beneficios o al menos reducir las p�rdidas.</p>

                <h4 class="Apuestas">Estrategias de Apuestas</h4>

                <p><b><i>! Existen multitud de estrategias diferentes a la hora de enfocar las apuestas deportivas �</b></i></p>

                <p> Hay quien prefiere un comparador de apuestas, otros las apuestas simples, otros las combinadas de varias selecciones, otros ponen l�mites al n�mero de pron�sticos, otros utilizan las apuestas de sistema? Sea cual sea tu gusto, <b>puedes encontrar una estrategia con la que apostar habitualmente</b>, con el fin de aumentar el rendimiento de tus apuestas.</p>

                <p>Debes estar muy atento a la <b>clasificaci�n y los estados de forma de los equipos</b>, o saber si en sus partidos se marcan muchos o pocos goles. Una de las apuestas m�s habituales de es donde los usuarios apuestan a si en un partido habr� +2.5 o -2.5 goles en total, tambi�n conocido como over/under.</p>

                <p>Si eres de los que ve todos los partidos, <b>apostar a goleador</b> es otra buena opci�n, ya que suelen ser cuotas que se mantienen bastante estables a lo largo de la temporada en funci�n de la efectividad de los goleadores, pero ya sabemos que los delanteros van por rachas, y estar atento a los estados de forma te puede beneficiar mucho.</p>

            </main>


        </section> <br> <br>
        <footer class="banner">
            <DIV class="FUTBOL">
                <h1 data-shadow='FUTBOL!'></h1>
            </DIV> 


        </footer>

        <section class="cookies">
            <h2 class="cookies__titulo" >�Aceptas nuestras Cookies?</h2> 
            <p class="cookies__texto">Usamos cookies para mejorar tu experiencia en la web.</p>
            <div class="cookies__botones">
                <button  style="color:white; dismiss:acepto;" data-cli_action="accept" class="cookies__boton cookies__boton--no"  onclick=""  >   No</button>
                <button  style="color:white" class="cookies__boton cookies__boton--si" onclick="aceptarCookies()"   >  Si </button>
            </div>
        </section>

        <!-- No borrar, aqu� se generar�n todas las etiquetas <script> si acepta el usuario -->
        <div id="nuevosScripts"></div>





        <footer>
            <p>Autor: Ver�nica, Javi, Noah, Mark, Patricia y Sandra<br>

        </footer>                


    </body>
</html>