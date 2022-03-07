<%@page import="models.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!--
https://tomcat.apache.org/download-taglibs.cgi JSTL dowload page
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<% String path = request.getContextPath(); %>

<%
    List<Game> games=null; List<Bet> bets=null; List<Team> teams=null;
    if(session.getAttribute("GAMES") == null){
        games = (List<Game>) request.getAttribute("GAMES");
        session.setAttribute("GAMES", games);
        bets = (List<Bet>) request.getAttribute("BETS");
        session.setAttribute("BETS", bets);    
        teams = (List<Team>) request.getAttribute("TEAMS");
        session.setAttribute("TEAMS", teams); 
    }
    
    User user = (User) session.getAttribute("TOKEN");
    if(user==null){response.sendRedirect("/betsweb/view/login.jsp");}

%>
<html>
    <head>
        
    <jsp:include page="imports/header.jsp" /> 
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/mainpage.css" media="screen" />
        <div class="fondo-foto">
            <div class="foto" ></div>
        </div>

        <br>
        <div class="c-destacados-home c-2-destacados">
            <a  title="" class="c-2-destacados__enlace" id="qa_home_destacado1">
                <img src="<%= path %>/img/PRIMITIVA-1702.jpg" class="c-2-destacados__enlace-imagen">
            </a>
            <a  title="" class="c-2-destacados__enlace" id="qa_home_destacado2">
                <img src="<%= path %>/img/QUINIELA-180222.png" class="c-2-destacados__enlace-imagen">
            </a>
            <center> 
                <video class="c-2-destacados__enlace-imagen" src="<%= path %>/video/Intro Eleccin de Ganadores_free.mp4" width="280" height="280"autoplay muted loop></video>
            </center> <br> <BR>
<!--            <picture >
                <source  type="image/webp" sizes="(min-width: 260px) 260px, 100vw" srcset="<%= path %>/img/mobile-device.png 621w" />
                <img class="c-2-destacados__enlace-imagen" data-gatsby-image-ssr="" data-main-image="" style="opacity: 1;" sizes="(min-width: 621px) 621px, 100vw" decoding="async" loading="lazy" alt="web app" srcset="<%= path %>/img/mobile-device.png 621w"  srcset="<%= path %>/img/mobile-device.png 621w" />
            </picture>-->
        </div> 

        <section>
            <br>
            <main>
                <h4 class="Apuestas">APUESTAS BÁRBARAS</h4>
                <p><b><i>! Disfruta de la oferta de apuestas deportivas ¡</i></b></p>

                <p>En <b>APUESTAS BÁRBARAS</b> encontrarás  una extensa oferta de apuestas futbolísticas online. Elige de entre las diferentes Ligas y marca un buen gol con tus apuestas de fútbol.</p>


                <p>Elige cualquier competición de fútbol y haz tus apuestas en cualquiera de las <b>Ligas Europeas</b>, entre semana y el fin de semana, haz tus apuestas de segunda división si es que buscas buenas cuotas, porque es una categoría muy igualada en la que ningún favorito es claro y los resultados de partidos no están claros. Si te gustan las apuestas a largo plazo, busca en los deportes las apuestas a ganador de una competición o de un galardón en concreto.</p>


                <p>Como ya sabrás, en España cada casa de apuestas online necesita una licencia para operar y Apuestas Bárbaras, por supuesto, es una <b>Casa de apuestas con Licencia en España</b>. Haz todas las apuestas que quieras en un entorno seguro y regulado, en el que no tendrás problemas de ningún tipo para depositar o retirar tu dinero. A Apuestas Bárbaras le avala su trayectoria como una de las casas de apuestas reguladas en España que opera ininterrumpidamente desde la <b>regulación del mercado del juego online en junio de 2012</b>.</p>

                <p>La mecánica para apostar en Apuestas Bárbaras es muy cómoda y sencilla gracias a nuestra <b>guía de apuestas deportivas</b> que te orientará a lo largo del proceso. Los españoles cada día somos más aficionados a las apuestas por internet.</p>


                <p><b><i> ¿Vas a quedarte fuera de juego?</b></i></p>

                <p>Sigue los eventos deportivos más destacados cada día y realiza de manera segura tus apuestas deportivas aprovechando nuestras cuotas.</p>
                <h4 class="Apuestas">Métodos de apuestas Deportivas</h4>
                <p>Existen <b>varios Métodos de Apuestas</b> que se pueden aplicar a las apuestas deportivas, pero ninguno es 100% seguro. Vamos a mencionar métodos más habituales, pero que conllevan cierto riesgo.</p>
                <h4 class="Apuestas">Martingala</h4>

                <p>Tiene su origen en el juego de casino de la Ruleta y consiste en hacer una apuesta, y volver a realizarla siempre que se haya acertado, o doblar el importe de la apuesta tras cada fallo, de tal forma que <b>siempre se obtiene una unidad como beneficio</b>, pero podría ocurrir que se tuviera que doblar la apuesta demasiadas veces seguidas.</p> 

                <h4 class="Apuestas">El Método 2/3</h4>

                <p>Consiste en escoger <b>3 partidos y hacer 3 apuestas combinando solo 2 de las selecciones</b>, que deben tener una cuota cercana a 2.0 para que sea rentable.</p>


                <p>Apostamos 1? a victorias de Equipo X y Equipo Y (cuota 1.75)</p>
                <p>Apostamos 1? a victorias de Equipo X y Equipo Z (cuota 1.75)</p>
                <p>Apostamos 1? a victorias de Equipo Y y Equipo Z (cuota 1.75)</p>
                <p>Inversión: 3? ? Premio acertando 2 de 3: 3.5? ? Beneficio: 0.5?</p>

                <h4 class="Apuestas">Sistema Patent</h4>

                <p>Es un sistema parecido bastante desconocido, pero que si se realiza correctamente ofrece bastantes posibilidades de ganar. Es un <b>sistema de 7 apuestas con 3 pronósticos</b>. Una apuesta simple por cada pronóstico, 3 combinadas de 2 pronósticos y una combinada con los 3 pronósticos. Corre poco riesgo gracias a las apuestas simples, que pueden dar beneficios o al menos reducir las pérdidas.</p>

                <h4 class="Apuestas">Estrategias de Apuestas</h4>

                <p><b><i>! Existen multitud de estrategias diferentes a la hora de enfocar las apuestas deportivas ¡</b></i></p>

                <p> Hay quien prefiere un comparador de apuestas, otros las apuestas simples, otros las combinadas de varias selecciones, otros ponen límites al número de pronósticos, otros utilizan las apuestas de sistema? Sea cual sea tu gusto, <b>puedes encontrar una estrategia con la que apostar habitualmente</b>, con el fin de aumentar el rendimiento de tus apuestas.</p>

                <p>Debes estar muy atento a la <b>clasificación y los estados de forma de los equipos</b>, o saber si en sus partidos se marcan muchos o pocos goles. Una de las apuestas más habituales de es donde los usuarios apuestan a si en un partido habrá +2.5 o -2.5 goles en total, también conocido como over/under.</p>

                <p>Si eres de los que ve todos los partidos, <b>apostar a goleador</b> es otra buena opción, ya que suelen ser cuotas que se mantienen bastante estables a lo largo de la temporada en función de la efectividad de los goleadores, pero ya sabemos que los delanteros van por rachas, y estar atento a los estados de forma te puede beneficiar mucho.</p>

            </main>


        </section> <br> <br>
        <footer class="banner">
            <DIV class="FUTBOL">
                <h1 data-shadow='FUTBOL!'></h1>
            </DIV> 


        </footer>

<!--        <section class="cookies">
            <h2 class="cookies__titulo" >¿Aceptas nuestras Cookies?</h2> 
            <p class="cookies__texto">Usamos cookies para mejorar tu experiencia en la web.</p>
            <div class="cookies__botones">
                <button  style="color:white" data-cli_action="accept" class="cookies__boton cookies__boton--no" >   No</button>
                <button  style="color:white" class="cookies__boton cookies__boton--si" onclick="aceptarCookies()"   >  Si </button>
            </div>
        </section>
        <script>
            [...document.querySelectorAll('.cookies__boton')].map((btn)=>{
                btn.addEventListener('click', (e)=>{
                    e.target.parentNode.parentNode.classList.add('hidden')
                })
            });          
        </script>-->
<jsp:include page="imports/footer.html" /> 
