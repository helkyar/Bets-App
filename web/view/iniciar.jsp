<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@ page import="java.util.*" %>
<% String path = request.getContextPath(); %>

<html>
    <head>
        <title>Apuestas Bárbaras</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/normalizer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%= path %>/css/mainpage.css" media="screen" />
    
        
        <style>
            #a{
              float:left;
    padding-right: 4.2%;
    padding-top: 20.8%;
/*    border: 5px solid #1F3B34;*/
    

            }
            
 table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #DDD;
}

tr:hover {background-color: #D6EEEE;}
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
          




footer {
  text-align: center;
  padding: 3px;
  background-color: #1F3B34;
  color: white;
}
   .pay-method{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
   .t {
        border: 1px gray solid;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 5rem;
        margin: 1rem;
        width: 15%;
        height: 4rem;
    }
    .img1{
        width: 10rem;
        margin: -2.2rem 0;    
    }
    .visa{width: 8rem;}
    .maestro{width: 5rem;}
 .bet{
            width: 5rem;
            margin-left: auto;
            margin-right: 10rem;
            margin-top: 25%;
        }
        .bet div{
            width: 1rem;
            color: azure;
            display: flex;
            justify-content: space-between;
            margin: 0.2rem;
        }
        .bet input{
            width: 5rem;
          
        }
        .logo-user{
            margin-left:27%;
        }
        .texto-nombre-usu{
        
            color:white;
        }
           a {
  outline: none;
  text-decoration: none;
  color: black;
}
.box {
    overflow: hidden;
    margin: 5%;
}

.content {
    font-size: 15px;
    line-height: 20px;
    padding: 0 20px;
    text-align: justify;
   
}

.left {
    float: left;
    width: 80%;
}

/*.left .content {
    border-right: 5px solid #4BB495  ;
}*/

.right {
    float: right;
    width: 20%;
}
btn1 a:after {
    position: absolute;
    content: "";
    top: 0;
    left: 0;
    width: 0;
    height: 100%;
    background: darkgreen;
    transition: all .35s;
}
.btn1{
    padding: 0.2%;
    background-color: black;
}
.btn1 a {
    display: block;
    width: 100px;
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    font-family: sans-serif;
    text-decoration: none;
    color: #333;
    border: 2px solid #333;
    letter-spacing: 2px;
    text-align: center;
    position: relative;
    transition: all .35s;
}
.contenedor {
	width: 90%;
	max-width: 1000px;
	margin: 20px auto;
}

.contenedor article {
	line-height: 28px;
}

.contenedor article h1 {
	font-size: 30px;
	text-align: left;
	padding: 50px 0;
}

.contenedor article p {
	margin-bottom: 20px;
}

.contenedor article .btn-abrir-popup {
	padding: 0 20px;
	margin-bottom: 20px;
	height: 40px;
	line-height: 40px;
	border: none;
	color: #fff;
	background: #5E7DE3;
	border-radius: 3px;
	font-family: 'Montserrat', sans-serif;
	font-size: 16px;
	cursor: pointer;
	transition: .3s ease all;
	cursor: pointer;
}

.contenedor article .btn-abrir-popup:hover {
	background: rgba(94,125,227, .9);
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
    .caja-apuestas1 {
        border: 2px solid black;
        color: green;
        width: 250px;
/*        height: 250px;*/
        text-align: center;
        font-family: Arial Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif, Helvetica, sans-serif;
    }


    /* estilo de conjunto 1 */
    .conjunto-btn1,
    .conjunto-btn2,
    .conjunto-btn3,
    .conjunto-btn4 {

        background-color: white;
        color: black;
        border: 2px solid #4CAF50;
        /* VERDE*/
        padding: 10px;
        margin: 5px;
        transition-duration: 0.4s;

    }

    .conjunto-btn1:hover,
    .conjunto-btn2:hover,
    .conjunto-btn3:hover,
    .conjunto-btn4:hover {
        box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.24), 0 10px 20px 0 rgba(0, 0, 0, 0.19);
        background-color: #4CAF50;
        /* Green */
        color: white;

    }


    .conjunto-input {
        border: 2px solid #4CAF50;
        padding: 10px;
        margin: 5px;
        width: 15%;

    }


    .conjunto-btn5 {

        background-color: white;
        color: black;
        border: 2px solid #4CAF50;
        /* VERDE*/
        margin: 5px;
        padding: 10px;
        transition-duration: 0.4s;


    }

    .conjunto-btn5:hover {

        box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.24), 0 10px 20px 0 rgba(0, 0, 0, 0.19);
        background-color: #4CAF50;
        /* Green */
        color: white;

    }
.logo-user {
    margin-left: 45%;
}
        </style>
    </head>
    <body>
        <header>            
            <div>
                <img class="logo" src="<%= path %>/img/logo.png" alt="alt"/>
            </div>
            <form action="action">
                
               
                <label><%= new Date() %></label>
             
               
                
            </form>
                
                <img  class="logo-user" src="<%= path %>/img/user.png" width="90px" height="60px" alt="alt"/>
            <h4 class="texto-nombre-usu"> NOMBRE DE USUARIO </h4><!-- comment -->
                            <button class="menu-btn-principal"><center><img src="<%= path %>/img/user.png" alt="/" height="25" width="25"/><a  style="color:white" href="main.jsp">INICIO</a></center></button> 
                            <button class="menu-btn-principal"><img src="<%= path %>/img/help.png" alt="/" height="25" width="25"/><center><a  style="color:white" href="Ayuda.jsp">AYUDA</a></center></button> 
            
            
        </header> 
                
                <div class="box">
            <div class="left">
                <div class="content">
                   <section>
                          <div  id="b" >
                      <table>

<tr>
<th>FÚTBOL </th> 
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
  </tr>

<tr>
<th>RESULTADO</th>
<th></th>
<th></th>
<th style = "text-align: left">1</th>
<th style = "text-align: left">x</th>
<th style = "text-align: left">2</th>
</tr>

<tr>
<td>21:00</td>
<td>Elche CF <br> Rayo Vallecano </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>16:00</td>
<td>FC Cartagena <br> Real Valladolid </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>
  
  
<tr>
<td>20:45</td>
<td>Juventus <br>Torino</td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>
  

<tr>
<td>19:00</td>
<td>Sevilla <br> Madrid </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>20:45</td>
<td>FC Barcelona <br> Madrid </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>20:45</td>
<td>FC Talavera de la Reina <br> CD Badajoz </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>17:15</td>
<td>Granada CF <br> Villareal </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>15:55</td>
<td>Osasuna <br> Atlético de Madrid </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>19:45</td>
<td>Cadiz <br> Getafe </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>13:20</td>
<td>Real Zaragoza <br> UD Las Palmas </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>20:00</td>
<td>CD Tenerife <br> UD Ibzia </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>16:45</td>
<td>Real Madrid <br> Deportivo Alaves </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>20:10</td>
<td>Real Sociedad B <br> Málaga </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>15:55</td>
<td>Algeciras <br> Alcoyano </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>16:25</td>
<td>Sevilla Atletico <br> Girona </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>18:33</td>
<td>Extremadura UD <br> Cultura Leonesa </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>16:00</td>
<td>Real Union <br> Celta de Vigo B </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>22:00</td>
<td>FC Barcelona <br> Extremadura </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>20:45</td>
<td>Atletico Sanluqueno <br> Sevilla Atletico </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>21:00</td>
<td>Malaga <br> FC Barcelona </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

<tr>
<td>14:25</td>
<td>CD Tenerife <br> Girona </td>
<td></td>
<td><button>x</button></td>
<td><button>x</button></td>
<td><button>x</button></td>
</tr>

</table>  
                        </div>
                    

</section>
                </div>
            </div>
            <div class="right">
                <div class="content">
         <div class="caja-apuestas1">


            <!--cajas individuales-->

            <div class="caja-apuestas-titulo">
                <!--titulo-->
                Apuestas
            </div>

            <div class="caja-apuestas-conjunto">
                <button class="conjunto-btn1">+5</button>
                <button class="conjunto-btn2">+10</button>
                <button class="conjunto-btn3">+50</button>
                <input class="conjunto-input" type="number">
                <button class="conjunto-btn5">Aceptar</button>

            </div>
            <!--fin del conjunto1 -->

            <!--cajas contenedora 2-->
        </div>
                </div>
            </div>
        </div>
       

    
     <div class="pay-method">
         <a class="t" href="info-pagos.jsp"><img class="paypal img1" src="<%= path %>/img/paypal.png" alt=""></a>
        <a  class="t" href="info-pagos.jsp"><img class="visa img1" src=" <%= path %>/img/visa.png" alt=""></a>
        <a class="a-maestro t" href="info-pagos.jsp"><img class="maestro img1" src=" <%= path %>/img/maestro.png" alt=""></a>
    </div>
                <br>
    <footer>
        <p>Autor: Verónica, Javi, Noah, Mark, Patricia y Sandra<br>

        </footer>                

            
</body>
</html>