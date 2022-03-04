<%-- 
    Document   : login
    Created on : 9 feb 2022, 16:37:17
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


body{
    padding: 0px;
    margin: 0px;
    border:none;
    width: 100%;
}


footer {
    text-align: center;
    padding: 3px;
    background-color: #1F3B34;
    color: white;
}

.label{
    margin-left: 10rem;
    color: black;
    text-align: center;
}
.btn-input{
      margin-left: 5rem;
}
   #img{
                padding-top: 5%;
                padding-left: 45%; 
            }
            img{
                display:block;

            }
            
     .search {
    position: relative;
    width: 1.5rem;
    top: 2rem;
    margin-left: 1rem;
}
section article.unocontactar {
  padding: 20px;

}
section article.unocontactar form{

}
section article.unocontactar form ul li {
    padding: 20px
}

/**section */

section {
    position: relative;
        }


section article.uno{
    height: 499px;

        }

section article.uno figure {
    float: right;
}
section article.uno div{
   float: left;
    width: 500px;
    text-align: center;
    padding: 100px;
}
.caja{
margin-right: 30rem;
    margin-left: 28rem;
    background: white;
    border: yellow 5px dotted;
       filter:alpha(opacity=95);

-moz-opacity:.95;opacity:.95;
}
 ul {
	font-family: sans-serif;
	list-style: none;
	
}
.fondo-foto {
    /* background: conic-gradient(lightpink, white, powderblue); */
    background: conic-gradient(#FFBC00, white, #1F3B34);
}
.titulo{
    text-align: center;
    font-family: sans-serif;
    background: black;
    color: white;
       filter:alpha(opacity=80);

-moz-opacity:.80;opacity:.80;
padding: 0.5%;
}
.logo{
        width: 5rem;
    margin: 0.2rem 0.2rem 0.2rem;
}
marquee{
    font-size: 3rem;
    
}
.btninicio{
/*  position: fixed;
    top: 65%;*/
 padding-left: 50%;
  padding-bottom:17.5%;
  transform: translate(-50%, -50%);

}

.btninicio a{
  display: block;
  width: 200px;
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

.btninicio a span{
  position: relative;
  z-index: 2;
}

.btninicio a:after{
  position: absolute;
  content: "";
  top: 0;
  left: 0;
  width: 0;
  height: 100%;
  background: #67F48C ;
  transition: all .35s;
}

.btninicio a:hover{
  color: #fff;
}

.btninicio a:hover:after{
  width: 100%;
}
.btnaceptar{
/*  position: fixed;*/
/*      top: 70%;*/
  padding-left: 95%;
  transform: translate(-50%, -50%);

}

.btnaceptar a{
  display: block;
  width: 200px;
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

.btnaceptar a span{
  position: relative;
  z-index: 2;
}

.btnaceptar a:after{
  position: absolute;
  content: "";
  top: 0;
  left: 0;
  width: 0;
  height: 100%;
  background:  #ff003b;
  transition: all .35s;
}

.btnaceptar a:hover{
  color: #fff;
}

.btnaceptar a:hover:after{
  width: 100%;
}
  .FUTBOL{
BACKGROUND-IMAGE: url(../img/BANNER3_-_1.jpg);
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
        a {
  outline: none;
  text-decoration: none;
  color: black;
}
  .logo {
    width: 6.5rem;
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
                <button class="menu-btn-principal"><center><a style="color:white" href="register.jsp">REGISTRO</a></center></button>
                <button class="menu-btn-principal"><center><a style="color:white" href="iniciar.jsp">Prueba</a></center></button>
                <button class="menu-btn-principal-ayuda"><center><a style ="color:white"href="Ayuda.jsp">?</a></center></button>               
            </nav>
        </header>   
     <marquee   style="margin-left: 36%" direction="right" behavior="alternate"  width="100%"><img width ="15%" height="15%" src="../img/log-bienvenido.png"></marquee>
            <section> 
                <div class="fondo-foto">   
    <article class="unocontactar"> 
           
      <form class="caja">
       <h4 class="titulo">INICIAR SESIÓN</h4>
            <ul>
            <li>
            <label class="label">E-mail:</label>  <br>
                <input  class="btn-input" type="text" placeholder="e-mail" name="uname" required>
            </li>
            <li>
    <label class="label">Contraseña:</label><br>
                <input class="btn-input" type="Contraseña" placeholder="Introduce la contraseña" name="psw" required>
            </li>
            <br><br>
             <div class="btnaceptar">
  <a href="#"><span>Cancelar</span></a>
</div>
                <div class="btninicio">
  <a href="#"><span>Aceptar</span></a>
</div>
       
             
               

            </ul>
          
        </form> </article>
                    
    </div>
                
    </section>
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
