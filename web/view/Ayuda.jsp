<%-- 
    Document   : bets
    Created on : 9 feb 2022, 16:25:14
    Author     : admin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
    <head>
        <title>Apuestas Bárbaras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="../css/mainpage.css" media="screen" />


        <style>
            .logo {
    width: 12rem;
    /* margin: 1rem 2rem 0 2rem; */
}
            .row {
                position:absolute;

                width:200px;
                background-color: #1F3B34;
                color: white;
                text-align: center;
                padding: 0.5%;
            }
.ContactUsButton {
    cursor: pointer;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    color: #000;
    background-color: white;
    border-color: black;
    width: 200px !important;
    padding: 10px;
    font-size: 20px;
    border-width: thin;
    position: relative;
    background-color: #fff0e6;
    box-shadow: 0px 2px 2px #993d00;
    -webkit-box-shadow: 0px 2px 2px #993d00;
    -moz-box-shadow: 0px 2px 2px #993d00;
}
            .row2 {
                margin-left: 230px;
                margin-right:20px;
                margin-top:10px;

            }
            header div {
                background-color: #FFBC00;
                height: 100%;
                width: 14.5%;
            }
            .ContactUs {
                padding: 20px 0;
                margin-left: auto;
                margin-right: auto;
                width: 100%;
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
            table {
                border-collapse: collapse;
                width: 85%;
                height: 100%;
            }

            .Categories {
                margin: auto;
               padding-left: 250px;
                max-width: 996px;
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
            .CategoryBox {
                display: inline-table;
                margin: 30px 50px 30px 0px;
            }
            .Faqs {
                background: url(/euf/assets/images/generic/mobile/chips.png) no-repeat bottom;
                background-size: cover;
                background-color: white;
            }
            .CategoryLink {
                color: #000;
            }


            .ShowAll {
                text-decoration: none;
                font-size: 14px;
                color: black;
            }
            h3 {
                display: block;
                font-size: 1.17em;
                margin-block-start: 1em;
                margin-block-end: 1em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                font-weight: bold;
            }
            .MultilineHome_Margin a {
                text-decoration: none;
                color: #333;
                margin-left: 5px;
            }
            .CB223 img {
                height: 40px;
                width: 36px;
            }
            .FAQBox {
                min-width: 500px;
                max-width: 800px;
                width: 60%;
                margin: auto;
                height: 430px;
            }
            .PopularFaqs {
                background-repeat: no-repeat;
                background-size: cover;
                background-color: #000;
                padding-top: 20px;
            }
            .PopularFaqs h2 {
                margin-top: 0px;
                color: white;
                text-align: center;
                padding-top: 5px;
                font-weight: 100;
            }
            .FAQQuestion {
                margin-left: 1%;
                color: white;
                background-color: #2d2d2d;
                width: 350px;
                padding: 10px 10px;
                float: left;
                min-height: 50px;
                text-align: center;

    background-repeat: no-repeat;
    background-size: 35px;
    background-position-y: 50%;
    background-position-x: 95%;
    border-radius: 4px;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    margin-bottom: 10px;
            }
            .FAQQuestion p {
                font-weight: normal !important;
         
                margin-top: 5%;
                font-size: 13px;
                min-height: 34px;
            }
            a {
  outline: none;
  text-decoration: none;
  color: black;
}
            ul {
                display: block;
                list-style-type: disc;
                margin-block-start: 1em;
                margin-block-end: 1em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                padding-inline-start: 40px;
            }
            .FAQAnswer {
                float: left;
                animation: fadein 2s;
                background-color: #2d2d2d;
                color: white;
                padding: 15px 10px;
            }
            .menu-btn-principal{
        
        background-color: #1F3B34;
        color: white;
        border: 2px solid white;
        
        padding: 10px;
        margin: 5px;
        transition-duration: 0.4s;

    }

    .menu-btn-principal:hover {
        box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.24), 0 10px 20px 0 rgba(0, 0, 0, 0.19);
        background-color: gray;
   
        color: black;
    }

        </style>
    </head>
    <body>
        <header>            
            <div>
                <img class="logo" src="<%= path %>/img/logo-apuestas2.png" alt="alt"/>
            </div>
            <form action="action">

                <img class="search" src="<%= path %>/img/search.png" alt="alt"/>
                <input type="text" />
                    <label><%= new Date() %></label>
            </form>

            <nav>

                <button class="menu-btn-principal"><center><img src="<%= path %>/img/user.png" alt="/" height="25" width="25"/><a  style="color:white" href="main.jsp">INICIO</a></center></button> 
                <button class="menu-btn-principal"><center><img src="<%= path %>/img/user.png" alt="/" height="25" width="25"/><a  style="color:white" href="login.jsp">INICIAR</a></center></button> 
                  <button class="menu-btn-principal"><center><img  src="<%= path %>/img/user_add_12818.png" alt="/" height="25" width="25"/><a style="color:white" href="register.jsp">REGISTRO</a></center></button>
                                  <button class="menu-btn-principal"><center><img src="<%= path %>/img/help.png" alt="/" height="25" width="25"/><a style="color:white" href="Ayuda.jsp">AYUDA</a></center></button>    

            </nav>
        </header> 
        <div class="">
            <div class="row">
                <h2>FAQ:</h2>
                <br>
                <h3>¿Cómo hacer apuestas deportivas?</h3>
                <p>
                    Es muy sencillo: entra en la página de apuestas Barbaras, regístrate y deposita aprovechando alguna de las múltiples ofertas de las paginas de apuestas y ya podrás apostar.
                </p>
                <h3>¿Cómo funcionan las apuestas deportivas?</h3>
                <p>
                    Cada participante en un evento deportivo tiene una cuota que se fija en función a la probabilidad estimada de que ello ocurra. Es decir, la cuota y por lo tanto el beneficio que se obtiene con una victoria del Real Madrid será menor si se enfrenta a un equipo de Segunda división que si juega la final de la Champions, ya que es más probable que ocurra.
                </p>
                <h3>¿Qué es el hándicap en las apuestas?</h3>
                <p>
                    El hándicap es una ventaja o desventaja que supuestamente tiene un participante o equipo frente a su oponente. En apuestas, se utiliza para igualar la cuota, dando una ventaja a un rival.
                </p>

            </div>
            <div class="row2">
                <h3>¿Qué es una apuesta múltiple?</h3>
                <p>
                    Es lo mismo que una apuesta combinada, la cuota de cada pronóstico se multiplica por las de las otras selecciones. 
                </p>
                <h3>¿Qué son las apuestas cruzadas?</h3>
                <p> 
                    Estas son apuestas en las que los apostantes definen la apuesta, y la casa de apuestas deportivas simplemente actúa como intermediario, garantizando el pago y cobrando una pequeña comisión por ello. 
                </p>
                <h3>¿Qué es el yield en las apuestas?</h3>
                <p>
                    Es el rendimiento general o beneficio medio con relación a la inversión, que tiene un apostador sobre el total de sus apuestas. 
                </p>
                <h3>¿Qué son las unidades en las apuestas?</h3>
                <p>Es la cantidad que decidimos invertir en una apuesta, que suele equivaler a un 1% del dinero disponible para ello. No hay que confundirlo con el stake, que siempre se mantiene ent
                    re el 1/10 y el 10/10, las unidades aumentan a medida que aumenta el bankroll.
                </p>
                <h3>¿Cómo hacer apuestas seguras?</h3>
                <p>
                    Las apuestas deportivas seguras estás basadas en el principio financiero de arbitraje, que consiste en coger el valor de ambas variables (en este caso cuotas) por encima de 2, de tal forma que gane quien gane, se obtiene beneficio. 
                </p>
            </div>
        </div>
        <section>
            <div  id="b" >
                <section class="Faqs">
                    <div class="Categories" id="rn_HomePageProductCategoryList_3">


                        <div class="CategoryBox CB223">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/223/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/2340047-box-boxes-envelope-gift-he_85574.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/223/p/815"> 
                                <h3>Bonos y Promociones</h3>
                            </a>
                            <a class="ShowAll" href="/">Elegibilidad para las promociones</a>
                            <br>
                            <a class="ShowAll" href="/">Cómo solicitar bonus individuales</a>
                            <br>
<!--                            <a class="ShowAll" href="/">Cómo solicitar bonus individuales</a>
                            <br>-->

                            <a class="ShowAll" href="/app/answers/list/c/223/p/815">Ver todos</a>
                        </div>

                        <div class="CategoryBox CB226">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/226/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/depositos.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/226/p/815">
                                <h3>Depositos</h3>
                            </a>
                            <a class="ShowAll" href="/">Métodos de Depósito</a>
                            <br>
                            <a class="ShowAll" href="/">Verificación de identidad</a>
                            <br>
                            <a class="ShowAll" href="/">El «Cajero»</a>
                            <br>

                            <a class="ShowAll" href="/app/answers/list/c/226/p/815">Ver todos</a>
                        </div>

                        <div class="CategoryBox CB227">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/227/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/juegos.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/227/p/815">
                                <h3>Juegos</h3>
                            </a>
                            <a class="ShowAll" href="/">Reglas de apuestas deportivas</a>
                            <br>
                            <a class="ShowAll" href="/">Cómo usar una apauesta gratuita</a>
                            <br>
                            <a class="ShowAll" href="/">Ganancias/resultado del juego</a>
                            <br>




                            <a class="ShowAll" href="/app/answers/list/c/227/p/815">Ver todos</a>
                        </div>

                        <div class="CategoryBox CB235">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/235/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/llave.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/235/p/815">
                                <h3>Conectar</h3>
                            </a>
                            <a class="ShowAll" href="/">Cambio de contraseña</a>
                            <br>
                            <a class="ShowAll" href="/">¿Has olvidado tu contraseña?</a>
                            <br>
                            <a class="ShowAll" href="/">¿Has olvidado tu usuario?</a>
                            <br>

                            <a class="ShowAll" href="/app/answers/list/c/235/p/815">Ver todos</a>
                        </div>

                        <div class="CategoryBox CB229">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/229/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/usuario.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/229/p/815">
                                <h3>Mi Cuenta</h3>
                            </a>

                            <a class="ShowAll" href="/">Envío de documentos</a>
                            <br>
                            <a class="ShowAll" href="/">Reapertura de Cuenta</a>
                            <br>
                            <a class="ShowAll" href="/">Cómo cerrar tu cuenta</a>
                            <br>

                            <a class="ShowAll" href="/app/answers/list/c/229/p/815">Ver todos</a>
                        </div>



                        <div class="CategoryBox CB246">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/246/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/inscripcion.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/246/p/815">
                                <h3>Inscripción</h3>
                            </a>

                            <a class="ShowAll" href="/">Formato de DNI/NIF/NIE</a>
                            <br>
                            <a class="ShowAll" href="/">Confidencialidad</a>
                            <br>
                            <a class="ShowAll" href="/">¿No eres residente en España?</a>
                            <br>

                            <a class="ShowAll" href="/app/answers/list/c/246/p/815">Ver todos</a>
                        </div>

                        <div class="CategoryBox CB230">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/230/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/mantenimiento.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/230/p/815">
                                <h3>Asuntos Tecnicos</h3>
                            </a>

                            <a class="ShowAll" href="/">Política Desconexiones</a>
                            <br>
                            <a class="ShowAll" href="/">Problemas técnicos en el Cajero</a>
                            <br>
                            <a class="ShowAll" href="/">Notificaciones de inserción</a>
                            <br>

                            <a class="ShowAll" href="/app/answers/list/c/230/p/815">Ver todos</a>
                        </div>

                        <div class="CategoryBox CB225">				
                            <div class="CategoryBoxImageDiv">
                                <a href="/app/answers/list/c/225/p/815">
                                    <img class="CategoryBoxImage" src="<%= path %>/img/dinero.png">
                                </a>
                            </div>
                            <a class="CategoryLink" href="/app/answers/list/c/225/p/815">
                                <h3>Retiros</h3>
                            </a>

                            <a class="ShowAll" href="/">Plazo Recepción Retiro</a>
                            <br>
                            <a class="ShowAll" href="/">El «Cajero»</a>
                            <br>
                            <a class="ShowAll" href="/">Cómo eliminar tarjetas del Cajero</a>
                            <br>

                            <a class="ShowAll" href="/app/answers/list/c/225/p/815">Ver todos</a>
                        </div>
                    </div>

                </section> 
            </div>


        </section>

        <section id="PopularFaqsSection" class="PopularFaqs">
            <h2 class="rn_Expanded">Preguntas frecuentes
            </h2>
            <div class="rn_Report">
                <div id="rn_MultilineFaq_13" class="FAQBox rn_MultilineFaq rn_Multiline">
                    <div id="FAQ_Q12442" class="FAQQuestion" onclick="FAQClick(this.id)" open="0" odd="1">
                        <p> ¿Por qué he recibido un e-mail solicitándome el envío de mis documentos?</p>						</div>
                    <div id="FAQ_Q13410" class="FAQQuestion" onclick="FAQClick(this.id)" open="0" odd="0">
                        <p style="FONT-WEIGHT: bold">Elegibilidad para las promociones&nbsp;</p>						</div>
                    <div id="FAQ_A12442" class="FAQAnswer" style="display:none"><p>Para cumplir con el nuevo requerimiento de la Regulación del Juego en España, hemos de tener documentos de todos nuestros socios.</p>

                        <ul>
                            <li>En caso que ya hayas mandado estos documentos en algún momento y hayas recibido una confirmación de verificación de los mismo, por favor, ignora este email.</li>
                            <li>En caso que hayas mandado recientemente algún documento, por favor, ten en cuenta que lo procesaremos a la mayor brevedad y te informaremos sobre si éste ha pasado nuestros controles de seguridad o no.</li>
                            <li>En caso que nunca hayas mandado ninguno de los documentos solicitados, por favor, hazlo. Puedes enviárnoslo sacándole una foto con tu teléfono móvil, una cámara o usando un scanner. Accede a tu cuenta y haz clic en el botón de cajero. Sigue las instrucciones del apartado “Verificar ID”. &nbsp;Alternativamente, puedes enviarlo a <span style="font-weight:bold;">Apuestas Barbara</span> indicando “<span style="font-weight:bold;">VERIFICACIÓN ID</span>” en el asunto. Una vez recibamos tu documentación, procederemos a verificar tu cuenta tal y como solicita la nueva normativa.&nbsp;</li>
                        </ul>

                        <p>Por favor, recuerda que los documentos que estamos solicitando son <span style="font-weight:bold;">DNI</span>, <span style="font-weight:bold;">pasaporte</span> o <span style="font-weight:bold;">permiso de conducir</span> si eres español, o <span style="font-weight:bold;">NIE</span> si eres extranjero residente en España.<br>
                            &nbsp;</p></div><div id="FAQ_A13410" class="FAQAnswer" style="display:none"><div>A continuación, puedes consultar algunas preguntas frecuentes sobre la elegibilidad para las promociones.</div>

                        <div>&nbsp;</div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿Qué requisitos tengo que cumplir para poder disfrutar de las promociones?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Para poder ofrecerte promociones, la Regulación del Juego en España nos exige que: (i) hayas tenido una cuenta de juego abierta en nuestra plataforma durante, al menos, 30 días; (ii) hayas sido verificado documentalmente y (iii) no se te aplique ninguna restricción o limitación para participar en promociones y ofertas.</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿Cómo puedo cumplir con los requisitos para poder disfrutar de las promociones?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Para cumplir con los requisitos para poder disfrutar de las promociones deberás: (i) esperar al menos 30 días desde que te registraste en nuestra plataforma; y (ii) haber sido verificado documentalmente.</p>

                                <p>Si tienes dudas sobre cómo puedes verificarte documentalmente, puedes consultar la siguiente <b> <a href="https://888-external-espana.custhelp.com/app/answers/detail/a_id/12442/p/295/">FAQ</a></b>.</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿En general, qué motivos pueden dar lugar a la suspensión del ofrecimiento de una promoción?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Cualquier incumplimiento de los Términos y Condiciones generales o de los Términos específicos aplicables a cada una de las promociones ofrecidas a través de nuestra plataforma (incluyendo a título enunciativo, cualquier abuso realizado por el jugador) pueden dar lugar a la suspensión del ofrecimiento de una promoción al jugador que haya incurrido en dicho incumplimiento.&nbsp;</p>

                                <p>Para más información puedes consultar <span style="font-weight:bold;"><a href="https://www.888.es/terminos-y-condiciones/" target="_blank">los términos y condiciones generales</a></span> aplicables al uso de la plataforma.&nbsp;</p>

                                <p>Asimismo, 888 puede aplicar ciertas medidas preventivas que restringen temporalmente el acceso a promociones y ofertas en caso de detectar a un jugador de riesgo.</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿Qué medidas preventivas se aplican a jugadores de riesgo?&nbsp;</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Como parte de nuestro compromiso con el juego responsable, a partir del 27 de abril de 2021, en caso de que detectemos que estás incurriendo en un comportamiento de riesgo, pondremos en marcha las medidas de prevención que tenemos establecidas y que puedes consultar en nuestra página de <span style="font-weight:bold;"><a href="https://www.888.es/juego-responsable/" target="_blank">juego responsable</a></span>.&nbsp;</p>

                                <p>Entre las medidas de prevención previstas se incluye la restricción temporal durante 90 días de tus cuentas para que no recibas mensajes promocionales ni tengas la posibilidad de aumentar tus límites personales de depósito. Además, mientras tu cuenta se considere de riesgo, no podrás recibir ningún tipo de promoción u oferta nueva por parte de 888 ni podrás acumular ni canjear puntos de fidelidad.&nbsp;</p>

                                <p>En caso de que se te excluya del acceso a las promociones debido a la aplicación de dichas medidas preventivas, te informaremos por correo electrónico.</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿Qué pasa con las promociones en las que estaba participando cuando se ha detectado que mi comportamiento es de riesgo?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Las medidas preventivas afectan a las promociones, ventajas o incentivos cuyas condiciones para poder ser recibidos no se hayan completado antes de que tu cuenta fuera considerada como de riesgo. De esta manera, si un jugador solicitó una promoción, pero no completó los términos establecidos para poder reclamar el bono antes de ser considerado como jugador de riesgo, la promoción no se podrá completar tras ser considerado como jugador de riesgo.&nbsp;</p>

                                <p>El jugador que haya recibido un bono antes de convertirse en jugador de riesgo podrá hacer efectivas las ganancias de los bonos y transferir las ganancias al saldo de dinero real durante el periodo de restricción.</p>

                                <p>Sin embargo, si estás a mitad de camino de cumplir los términos para poder hacer efectivo un bono pendiente, ese bono no se concederá durante el periodo de riesgo aunque los términos se cumplan durante el periodo de riesgo. &nbsp;Esta lógica se aplica a cualquier desafío o promoción basada en actividades que hayan comenzado antes del periodo de riesgo y que no se hayan completado en su totalidad antes del periodo de riesgo, y la promoción se cancelará.&nbsp;</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿Cuándo se entiende que un jugador es de riesgo?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Cuando detectamos que su comportamiento de juego puede presentar problemas sobre el control real de sus hábitos de juego. Para tomar esta decisión tenemos en cuenta el historial de juego reciente del jugador.&nbsp;</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿Durante cuánto tiempo se aplican las medidas preventivas?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>En caso de detectar un jugador de riesgo, las medidas preventivas se aplicarán durante un período mínimo de 90 días. Se te notificará por correo electrónico una vez que se levante esta restricción.</p>
                            </div>
                        </div>

                        <div class="sub_faq">
                            <div class="sub_faq_q">
                                <p>¿A qué tipo de bonos tendré acceso durante el tiempo en que apliquen las medidas preventivas?</p>
                            </div>

                            <div class="sub_faq_a">
                                <p>Sólo tendrá acceso a los bonos inmediatos existentes en su cuenta de juego que hayan sido recibidos antes del periodo de riesgo.</p>
                            </div>
                        </div></div>						<div id="FAQ_Q9765" class="FAQQuestion" onclick="FAQClick(this.id)" open="0" odd="1">
                        <p style="FONT-WEIGHT: bold">Deseo reabrir mi cuenta. ¿Qué debo hacer?</p>						</div>
                    <div id="FAQ_Q9713" class="FAQQuestion" onclick="FAQClick(this.id)" open="0" odd="0">
                        <p style="FONT-WEIGHT: bold">¿Cuánto tiempo me llevará recibir mis ganancias?</p>						</div>
                    <div id="FAQ_A9765" class="FAQAnswer" style="display:none"><div class="div888">
                            <p>Haz clic en la marca correspondiente a continuación:</p>

                            <p align="center"><a href="/app/answers/detail/a_id/9765/p/295,296" style="TEXT-DECORATION: underline"><img alt="888casino link" border="0" src="https://promo.888.com/onlinehelp/OH%20Images/Brand%20Logos/888casino_es_small.png" style="MAX-WIDTH: 64px; WIDTH: 25%"></a><a href="/app/answers/detail/a_id/9765/p/295,297" style="TEXT-DECORATION: underline"><img alt="888poker link" border="0" src="https://promo.888.com/onlinehelp/OH%20Images/Brand%20Logos/888poker_es_small.png" style="MAX-WIDTH: 64px; WIDTH: 25%"></a><a href="/app/answers/detail/a_id/9765/p/295,815" style="TEXT-DECORATION: underline"><img alt="888sport link" border="0" src="https://promo.888.com/onlinehelp/OH%20Images/Brand%20Logos/888sport_es_small.png" style="MAX-WIDTH: 64px; WIDTH: 25%"></a></p>
                        </div>

                        <div class="Casinodiv">
                            <p>Para solicitar que se reabra una cuenta en la que se aplicó el cierre tras la solicitud del titular de esta, ponte en contacto con nosotros directamente.</p>

                            <p>Haz clic<span style="COLOR: #59b300">&nbsp;<a href="/app/answers/detail/a_id/9875/p/295,296" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #59b300">aquí</a></span> para ver nuestros datos de contacto.</p>

                            <p>Si lo prefieres, puedes utilizar el formulario de "<a href="/app/ask/p/295,296" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #59b300">Contacto</a>". Para ello, escribe "<span style="FONT-WEIGHT: bold">Reabrir mi cuenta</span>" en la línea del "asunto" e indicándonos los siguientes datos, tal y como aparecen registrados en tu cuenta de <span style="FONT-WEIGHT: bold">888.es</span>:</p>

                            <ol>
                                <li>Tu nombre completo.</li>
                                <li>Tu dirección postal completa.</li>
                                <li>Tu dirección de email registrada.</li>
                            </ol>

                            <p><span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: bold">IMPORTANTE</span>:</span> Si la cuenta en cuestión hace referencia a una cuenta de <span style="FONT-WEIGHT: bold; COLOR: #59b300">888casino.com</span> anteriormente registrada, sentimos decirte que ya se ha cerrado definitivamente, de acuerdo con la nueva normativa española.</p>

                            <p>Sin embargo, hemos abierto automáticamente una nueva cuenta de <span style="FONT-WEIGHT: bold; COLOR: #59b300">888casino.es</span> a tu nombre que cumple con todos los requisitos normativos de España.</p>

                            <p>Para acceder a tu nueva cuenta de casino, lo único que tienes que hacer es visitar nuestra página web&nbsp;<a href="https://www.888casino.es/" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #59b300">aquí</a> y hacer clic en la pestaña "<span style="FONT-WEIGHT: bold; COLOR: #59b300">Jugar Ya</span>".</p>

                            <p>Podrás acceder a esta nueva cuenta utilizando tu nombre de usuario y contraseña anteriores.</p>

                            <p><span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: bold">Nota</span></span>: Nos reservamos el derecho a rechazar la reapertura de una cuenta por cualquier motivo y bajo nuestro propio criterio.</p>
                        </div>

                        <div class="Pokerdiv">
                            <p>Para solicitar que se reabra una cuenta en la que se aplicó el cierre tras la solicitud del titular de esta, ponte en contacto con nosotros directamente.</p>

                            <p>Haz clic&nbsp;<a href="/app/answers/detail/a_id/9875/p/295,297" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold">aquí</a> para ver nuestros datos de contacto.</p>

                            <p>Si lo prefieres, puedes utilizar el formulario de "<a href="/app/ask/p/295,297" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold">Contacto</a>". Para ello, escribe "<span style="FONT-WEIGHT: bold">Reabrir mi cuenta</span>" en la línea del "asunto" e indicándonos los siguientes datos, tal y como aparecen registrados en tu cuenta de <span style="FONT-WEIGHT: bold">888.es</span>:</p>

                            <ol>
                                <li>Tu nombre completo.</li>
                                <li>Tu dirección postal completa.</li>
                                <li>Tu dirección de email registrada.</li>
                            </ol>

                            <p><span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: bold">IMPORTANTE</span>:</span> Si la cuenta en cuestión hace referencia a una cuenta de <span style="FONT-WEIGHT: bold; COLOR: #0080ff">888poker.com</span> anteriormente registrada, sentimos decirte que ya se ha cerrado definitivamente, de acuerdo con la nueva normativa española.</p>

                            <p>Sin embargo, hemos abierto automáticamente una nueva cuenta de <span style="FONT-WEIGHT: bold; COLOR: #0080ff">888poker.es</span> a tu nombre que cumple con todos los requisitos normativos de España.</p>

                            <p>Para acceder a tu nueva cuenta de poker, lo único que tienes que hacer es visitar nuestra página web&nbsp;<a href="https://www.888poker.es/" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #0080ff">aquí</a> y descargar/instalar el nuevo software de poker de <span style="FONT-WEIGHT: bold">888.es</span>.</p>

                            <p>Podrás acceder a esta nueva cuenta utilizando tu nombre de usuario y contraseña anteriores.</p>

                            <p><span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: bold">Nota</span></span>: Nos reservamos el derecho a rechazar la reapertura de una cuenta por cualquier motivo y bajo nuestro propio criterio.</p>
                        </div>

                        <div class="Sportdiv">
                            <p>Para solicitar que se reabra una cuenta en la que se aplicó el cierre tras la solicitud del titular de esta, ponte en contacto con nosotros directamente.</p>

                            <p>Haz clic&nbsp;<a href="/app/answers/detail/a_id/9875/p/295,815" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold">aquí</a> para ver nuestros datos de contacto.</p>

                            <p>Si lo prefieres, puedes utilizar el formulario de "<a href="/app/ask/p/295,815" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold">Contacto</a>". Para ello, escribe "<span style="FONT-WEIGHT: bold">Reabrir mi cuenta</span>" en la línea del "asunto" e indicándonos los siguientes datos, tal y como aparecen registrados en tu cuenta de <span style="FONT-WEIGHT: bold">888.es</span>:</p>

                            <ol>
                                <li>Tu nombre completo.</li>
                                <li>Tu dirección postal completa.</li>
                                <li>Tu dirección de email registrada.</li>
                            </ol>

                            <p><span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: bold">IMPORTANTE</span>:</span> Si la cuenta en cuestión hace referencia a una cuenta de <span style="FONT-WEIGHT: bold; COLOR: #fa6200">888sport.com</span> anteriormente registrada, sentimos decirte que ya se ha cerrado definitivamente, de acuerdo con la nueva normativa española.</p>

                            <p>Sin embargo,&nbsp;para abrir&nbsp;una nueva cuenta de <span style="FONT-WEIGHT: bold; COLOR: #fa6200">888sport.es</span> , lo único que tienes que hacer es visitar nuestra página web&nbsp;<a href="https://www.888sport.es/" style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #fa6200">aquí</a> y haz clic en ¡<span style="FONT-WEIGHT: bold; COLOR: #fa6200">Regístrate</span>!</p>

                            <p><span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: bold">Nota</span></span>: Nos reservamos el derecho a rechazar la reapertura de una cuenta por cualquier motivo y bajo nuestro propio criterio.</p>
                        </div></div><div id="FAQ_A9713" class="FAQAnswer" style="display:none"><ul>
                            <li>Para consultar el estado de tus retiros en cualquier momento, visita nuestro "<span style="FONT-WEIGHT: bold">Cajero</span>" y selecciona la pestaña "<span style="FONT-WEIGHT: bold">Historial</span>".</li>
                            <li>A continuación podrás consultar los métodos de retiro que ofrecemos. Selecciona el enlace '<span style="FONT-WEIGHT: bold">Más detalles</span>' para obtener mayor información sobre el método de retiro elegido:</li>
                        </ul>

                        <table width="100%">
                            <tbody>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                                <tr>
                                    <td><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9837">Tarjetas de crédito</a></td>
                                    <td>
                                        <p>Plazo total:</p>
                                    </td>
                                    <td style="FONT-WEIGHT: bold">
                                        <p>Hasta 6 días hábiles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_credit_card.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></td>
                                    <td colspan="2"><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9837">Más detalles</a></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                                <tr>
                                    <td><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9838">Tarjetas de débito</a></td>
                                    <td>
                                        <p>Plazo total:</p>
                                    </td>
                                    <td style="FONT-WEIGHT: bold">
                                        <p>Hasta 6 días hábiles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_debit_card.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></td>
                                    <td colspan="2"><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9838">Más detalles</a></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                                <tr>
                                    <td><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9842">Transferencia electrónica</a></td>
                                    <td>
                                        <p>Plazo total:</p>
                                    </td>
                                    <td style="FONT-WEIGHT: bold">
                                        <p>De 5 a 8 días hábiles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_wire_transfer_es.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></td>
                                    <td colspan="2"><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9842">Más detalles</a></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                                <tr>
                                    <td><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9840">Neteller</a></td>
                                    <td>
                                        <p>Plazo total:</p>
                                    </td>
                                    <td style="FONT-WEIGHT: bold">
                                        <p>De 2 a 3 días hábiles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_neteller.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></td>
                                    <td colspan="2"><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9840">Más detalles</a></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                                <tr>
                                    <td><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9841">PayPal</a></td>
                                    <td>
                                        <p>Plazo total:</p>
                                    </td>
                                    <td style="FONT-WEIGHT: bold">
                                        <p>De 2 a 3 días hábiles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_paypal.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></td>
                                    <td colspan="2"><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9841">Más detalles</a></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                                <tr>
                                    <td><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9839">Skrill</a></td>
                                    <td>
                                        <p>Plazo total:</p>
                                    </td>
                                    <td style="FONT-WEIGHT: bold">
                                        <p>De 2 a 3 días hábiles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img alt="Image" border="0" src="/rnt/rnw/img/enduser/skrill_image.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></td>
                                    <td colspan="2"><a style="FONT-WEIGHT: bold" target="_new" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9839">Más detalles</a></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr></td>
                                </tr>
                            </tbody>
                        </table>

                        <p>Tus retiros son procesados una (1) día hábiles después de la fecha de la solicitud.</p>

                        <p><span style="FONT-WEIGHT: bold">Nota:</span> Todos los plazos están calculados en días hábiles (de lunes a viernes). Hasta el momento en que tu retiro sea procesado, podrás <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9836">cancelar</a>&nbsp;la solicitud desde el Cajero y devolver el dinero a tu cuenta.</p>

                        <p style="FONT-WEIGHT: bold">Aviso:</p>

                        <p>888.es&nbsp;se reserva el derecho de demorar y/o detener el procesamiento de las solicitudes de retiro hasta que haya recibido la aprobación final para cualquier transacción de depósito pendiente.</p>

                        <p>No se cobran comisiones por ninguno de nuestros servicios de retiro. En caso de que dejemos de ofrecer nuestros servicios en algún país, los pagos quedarán sujetos a los cargos razonables de procesamiento aplicables.</p>

                        <p>Queremos que nuestros socios reciban sus ganancias a la mayor brevedad, por lo que haremos todo lo posible para cumplir con los plazos estipulados más arriba. No obstante, deberás tener en cuenta que algunos métodos de retiro se implementan a través de terceros, por lo que, en casos infrecuentes, ello produce demoras que escapan a nuestro control.</p></div>						<div id="FAQ_Q9767" class="FAQQuestion" onclick="FAQClick(this.id)" open="0" odd="1">
                        <p style="FONT-WEIGHT: bold">¿Qué debo hacer para cerrar mi cuenta?</p>						</div>
                    <div id="FAQ_Q9710" class="FAQQuestion" onclick="FAQClick(this.id)" open="0" odd="0">
                        <p style="FONT-WEIGHT: bold">¿Cuáles son mis métodos de pago?</p>						</div>
                    <div id="FAQ_A9767" class="FAQAnswer" style="display:none"><div class="div888">
                            <p>Haz clic <a style="TEXT-DECORATION: underline; FONT-WEIGHT: bold" href="/app/ask/p/295/p/295">aquí</a> para abrir nuestro formulario de ‘<span style="FONT-WEIGHT: bold">Contáctanos</span>’.</p>
                            <p>Ahora escriba ‘<span style="FONT-WEIGHT: bold">Solicitud de cierre de cuenta</span>’ en el ‘<span style="FONT-WEIGHT: bold">Tema</span>’ e indíquenos también los siguientes datos, tal y como los registraste con <span style="FONT-WEIGHT: bold">888.es</span></p>
                        </div>
                        <div class="Casinodiv">
                            <p>Haz clic <a style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #59b300" href="/app/ask/p/295,296">aquí</a> para abrir nuestro formulario de ‘<span style="FONT-WEIGHT: bold">Contáctanos</span>’.</p>
                            <p>Ahora escriba ‘<span style="FONT-WEIGHT: bold">Solicitud de cierre de cuenta</span>’ en el ‘<span style="FONT-WEIGHT: bold">Tema</span>’ e indíquenos también los siguientes datos, tal y como los registraste con <span style="FONT-WEIGHT: bold; COLOR: #59b300">888casino.es</span>.</p>
                        </div>
                        <div class="Pokerdiv">
                            <p>Haz clic <a style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #0080ff" href="/app/ask/p/295,297">aquí</a> para abrir nuestro formulario de ‘<span style="FONT-WEIGHT: bold">Contáctanos</span>’.</p>
                            <p>Ahora escriba ‘<span style="FONT-WEIGHT: bold">Solicitud de cierre de cuenta</span>’ en el ‘<span style="FONT-WEIGHT: bold">Tema</span>’ e indíquenos también los siguientes datos, tal y como los registraste con <span style="FONT-WEIGHT: bold; COLOR: #0080ff">888poker.es</span>.</p>
                        </div>
                        <div class="Sportdiv">
                            <p>Haz clic <a style="TEXT-DECORATION: underline; FONT-WEIGHT: bold; COLOR: #fa6200" href="/app/ask/p/295,815">aquí</a> para abrir nuestro formulario de ‘<span style="FONT-WEIGHT: bold">Contáctanos</span>’.</p>
                            <p>Ahora escriba ‘<span style="FONT-WEIGHT: bold">Solicitud de cierre de cuenta</span>’ en el ‘<span style="FONT-WEIGHT: bold">Tema</span>’ e indíquenos también los siguientes datos, tal y como los registraste con <span style="FONT-WEIGHT: bold; COLOR: #fa6200">888sport.es</span>.</p>
                        </div>
                        <ul>
                            <li>Tu nombre completo</li>
                            <li>Tu dirección postal completa, incluso la Ciudad y el Código Postal</li>
                            <li>Tu dirección de correo electrónico</li>
                        </ul>
                        <p>En un esfuerzo por mejorar nuestro servicio nos gustaría saber tu opinión. Por favor, indica en el espacio “<span style="FONT-WEIGHT: bold">Pregunta</span>” el motivo por el que has decidido cerrar tu cuenta. Esto nos ayudará a entender mejor tus expectativas y a tratar de satisfacerlas.</p>
                        <p>Una vez enviado el pedido/los datos mencionados arriba, espera hasta <span style="FONT-WEIGHT: bold">48 horas</span> para que se cierre tu cuenta. Una vez finalizado, te enviaremos una confirmación de cierre de cuenta por email.</p>
                        <p><span style="FONT-WEIGHT: bold">Nota</span>: Si deseas pedir un período de Reflexión/Autoexclusión, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/3905">aquí</a>&nbsp;para obtener más detalles.</p></div><div id="FAQ_A9710" class="FAQAnswer" style="display:none"><script type="text/javascript" xml:space="preserve">

                            function elemOn(elem_id) {
                                if (document.getElementById(elem_id))
                                    document.getElementById(elem_id).style.display = "block";
                            }
                            function elemOff(elem_id) {
                                if (document.getElementById(elem_id))
                                    document.getElementById(elem_id).style.display = "none";
                            }
                            function hideAll() {
                                for (var i = 1; i <= 7; i++)
                                    elemOff('div' + i);
                            }
                            function showAll() {
                                for (var i = 1; i <= 7; i++)
                                    elemOn('div' + i);
                            }
                            function showOne(elem_id) {
                                hideAll( );
                                elemOn(elem_id);
                            }

                        </script>
                        <p>A continuación presentamos una lista y una breve descripción de cada método de depósito disponible. Haz clic en cualquiera de estos métodos para consultar todas las instrucciones sobre cómo depositar fondos:</p>

                        <table cellborder="0" cellpadding="0" cellspacing="1" width="100%">
                            <tbody>
                                <tr>
                                    <td align="left" style="FONT-WEIGHT: bold"><a href="javascript:showOne('div1');" style="TEXT-DECORATION: underline">Tarjetas de crédito</a><br>
                                        &nbsp;</td>
                                    <td align="left" style="FONT-WEIGHT: bold"><a href="javascript:showOne('div2');" style="TEXT-DECORATION: underline">Tarjetas de débito</a><br>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" style="FONT-WEIGHT: bold"><a href="javascript:showOne('div3');" style="TEXT-DECORATION: underline">Monederos electrónicos</a><br>
                                        &nbsp;</td>
                                    <td align="left" style="FONT-WEIGHT: bold"><a href="javascript:showOne('div4');" style="TEXT-DECORATION: underline">Tarjetas prepagadas</a><br>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" style="FONT-WEIGHT: bold"><a href="javascript:showOne('div6');" style="TEXT-DECORATION: underline">Cuentas bancarias (on-line)</a><br>
                                        &nbsp;</td>
                                    <td align="left" style="FONT-WEIGHT: bold"><br>
                                        &nbsp;</td>
                                </tr>
                            </tbody>
                        </table>

                        <div id="div1">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="BACKGROUND: #000000; COLOR: #ffffff; align: center">
                                            <p style="FONT-WEIGHT: bold">Tarjetas de crédito</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="HEIGHT: 100%; FONT-WEIGHT: bold; MAX-HEIGHT: 40px"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9857">VisaMastercard</a></td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9857" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_credit_card.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Un método rápido y sencillo para realizar depósitos directamente en tu cuenta. Disponible en todo el mundo.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9857">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de 888.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div id="div2">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="BACKGROUND: #000000; COLOR: #ffffff">
                                            <p style="FONT-WEIGHT: bold; align: center">Tarjetas de débito</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9857">VisaMastercard</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9857" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_debit_card.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Un método rápido y sencillo para realizar depósitos directamente en tu cuenta. Disponible en todo el mundo.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9857">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de 888.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table>
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/12160">Apple Pay</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/12160/p/295" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_apple_pay_-_white.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Apple Pay Pay es una función de pago incluida en los últimos iPhones, iPads y Apple Watches que te permite utilizar tu dispositivo como una cartera al pagar en las tiendas.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/12160">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de 888.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="text-align: center;"><a href="/app/home/p/815/session/L3RpbWUvMTY0NTAxODEzNC9nZW4vMTY0NTAxODEzNC9zaWQvZlU3bVQxYXRSaDJMSUZIQzV6OEUzZFVSdXpid0VodXk1UmNSblFXRGlXenJZbE1fQk9tWVpUMnVKUE1QZmpXblREWGQ5Z21yd3hZRlZHdTRiVnZIYSU3RVl4MHhSZm5WbXBZTGxOdFNBQkZuWlh0SEpJUllqWXBxbGclMjElMjE%3D#top" style="TEXT-DECORATION: underline">Volver arriba</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div id="div3">
                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="BACKGROUND: #000000; COLOR: #ffffff">
                                            <p style="FONT-WEIGHT: bold; align: center">Monederos electrónicos</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/12415">MuchBetter</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/12415" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/muchbetter_logo.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>MuchBetter es un monedero electrónico de pago basado en una aplicación que te permite depositar fondos de forma instantánea y segura en tu cuenta de juego mediante diferentes opciones de pago.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/12415">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de 888.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9847">Neteller</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9847" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_neteller.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Neteller te permite realizar depósitos en tu cuenta de casino usando una tarjeta de crédito Visa o MasterCard.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9847">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de 888.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9853">PayPal</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9853" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_paypal.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>PayPal es uno de los monederos electrónicos más populares del mundo. Es una forma simple y segura de enviar y recibir dinero on-line, y actualmente está disponible para nuestros socios de Alemania, Austria, Finlandia, Irlanda, Italia, España, Suecia y el Reino Unido.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9853">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de apuestasbarbara.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9850">Skrill&nbsp;</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9850" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" height="58" src="/rnt/rnw/img/enduser/skrill_image.png" style="MAX-WIDTH: 108px; WIDTH: 100%" width="108"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Los depósitos mediante&nbsp;Skrill son una manera instantánea, segura y sencilla de depositar fondos en tu cuenta. Disponible para socios de todo el mundo.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9850">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de apuestasbarbara.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="text-align: center;"><a href="/app/home/p/815/session/L3RpbWUvMTY0NTAxODEzNC9nZW4vMTY0NTAxODEzNC9zaWQvZlU3bVQxYXRSaDJMSUZIQzV6OEUzZFVSdXpid0VodXk1UmNSblFXRGlXenJZbE1fQk9tWVpUMnVKUE1QZmpXblREWGQ5Z21yd3hZRlZHdTRiVnZIYSU3RVl4MHhSZm5WbXBZTGxOdFNBQkZuWlh0SEpJUllqWXBxbGclMjElMjE%3D#top" style="TEXT-DECORATION: underline">Volver arriba</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div id="div4">
                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="BACKGROUND: #000000; COLOR: #ffffff">
                                            <p style="FONT-WEIGHT: bold; align: center">Tarjetas prepagadas</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9848">Paysafecard</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9848" style="TEXT-DECORATION: underline" target="_self"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_paysafecard.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Los depósitos con paysafecard son una forma instantánea, segura y fácil de depositar fondos en tu cuenta. Se puede comprar las tarjetas paysafecard en cualquier <a href="http://www.paysafecard.com/pos" target="_blank">distribuidor paysafecard</a>.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9848">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de 888.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table>
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="text-align: center;"><a href="/app/home/p/815/session/L3RpbWUvMTY0NTAxODEzNC9nZW4vMTY0NTAxODEzNC9zaWQvZlU3bVQxYXRSaDJMSUZIQzV6OEUzZFVSdXpid0VodXk1UmNSblFXRGlXenJZbE1fQk9tWVpUMnVKUE1QZmpXblREWGQ5Z21yd3hZRlZHdTRiVnZIYSU3RVl4MHhSZm5WbXBZTGxOdFNBQkZuWlh0SEpJUllqWXBxbGclMjElMjE%3D#top" style="TEXT-DECORATION: underline">Volver arriba</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div id="div6">
                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="BACKGROUND: #000000; COLOR: #ffffff">
                                            <p style="FONT-WEIGHT: bold; align: center">Cuentas bancarias (on-line)</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9854">Sofort</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="MAX-WIDTH: 112px; WIDTH: 30%; VERTICAL-ALIGN: top; align: left">
                                            <p><a href="/app/answers/detail/a_id/9854" style="TEXT-DECORATION: underline"><img alt="Image" border="0" src="/rnt/rnw/img/enduser/logo_sofortuberweisung.png" style="MAX-WIDTH: 108px; WIDTH: 100%"></a></p>
                                        </td>
                                        <td align="left" valign="top">
                                            <p>Los depósitos con este método son una manera instantánea, segura y sencilla de depositar en tu cuenta de 888.es directamente desde su cuenta bancaria.</p>

                                            <p style="FONT-WEIGHT: bold"><a href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9854">Más detalles...</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p>Para averiguar los datos de contacto de apuestasbarbara.es, haz clic <a style="FONT-WEIGHT: bold" href="http://888-external-espana.custhelp.com/app/answers/detail/a_id/9875">aquí</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table cellborder="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td colspan="2" style="WIDTH: 100%; MAX-HEIGHT: 30px" valign="bottom">
                                            <p style="text-align: center;"><a href="/app/home/p/815/session/L3RpbWUvMTY0NTAxODEzNC9nZW4vMTY0NTAxODEzNC9zaWQvZlU3bVQxYXRSaDJMSUZIQzV6OEUzZFVSdXpid0VodXk1UmNSblFXRGlXenJZbE1fQk9tWVpUMnVKUE1QZmpXblREWGQ5Z21yd3hZRlZHdTRiVnZIYSU3RVl4MHhSZm5WbXBZTGxOdFNBQkZuWlh0SEpJUllqWXBxbGclMjElMjE%3D#top" style="TEXT-DECORATION: underline">Volver arriba</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div></div></div>
            </div>
        </section>
        <section class="ContactUs">
            <h3 class="ContactUsMessage">¿Todavía necesitas ayuda?</h3>
            <button class="ContactUsButton" onclick="javascript:window.location = '/app/ask/p/815';">Contáctanos</button>
        </section>
        <footer>
        <p>Autor: Verónica, Javi, Noah, Mark, Patricia y Sandra<br>

        </footer>                


    </body>
</html>
