/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;
//Define el comportamiento básico de las conexiones de base de datos y proporciona una clase base para las conexiones específicas de base de datos.
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import log.LogGen;
/**
 *
 * @author JAVIER, VERONICA, NOAH, SANDRA, MARK, PATRICIA
 */
// CONECTA A LA BASE DE DATOS YA CREADA EN MYSQL
// PUSIMOS TRY/CATCH PARA MANEJAR CUALQUIER TIPO DE ERROR 

//IMPORT JAVA.SQL.*; = ES UNA PAQUETERIA IMPORTADA POR JAVA PARA HACER CONSULTAS EN BD,ENTONCES PODEMOS REALIZAR 
//UNA CONEXION BASICA.CONTIENE SU PROPIA ARQUITECTURA  Y  HACE LLAMADO DE SUS PROPIAS CLASES.

// IMPORT JAVA.UTIL.LOGGING.LEVEL;  =  La clase Level define un conjunto de niveles de registro estándar
//que se pueden usar para controlar la salida del registro. Los objetos de nivel de registro están ordenados
//y especificados por enteros ordenados. Habilitar el registro en un nivel determinado también habilita el registro
//en todos los niveles superiores.

//import java.util.logging.Logger;  = se utiliza para registrar mensajes para un componente de aplicación o sistema específico. 
//Los registradores normalmente se nombran utilizando un espacio de nombres jerárquico separado por puntos.

//import log.LogGen; = HACE REGISTROS 

public class Connect {
    public Connect(){  
        //Lo primero que se debe realizar para poder conectarse a una base de datos es cargar el driver encargado de ésta función. 
        //Para ello es utilizada la llamada Class.forName.
        try{ Class.forName(driver);}
        // NoClassDefFoundError se produce cuando la Jvm o el ClassLoader intenta cargar la definición de una clase y no es capaz de encontrarla
        catch(ClassNotFoundException e){e.printStackTrace();} 
        //Una vez cargado el driver es necesario crear un objeto del tipo Connection, para administrar la conexión. Una aplicación puede utilizar DriverManager
        //para obtener un objeto de tipo conexión, Connection.
        try {conn = DriverManager.getConnection(url, user, pwd);}
        //La clase SQLException y sus subtipos proporcionan información acerca de los errores y avisos que se producen mientras se está accediendo a un origen de datos.
        catch (SQLException e){LogGen.error(e.getMessage());}
    }
    
    public void connect(){
        //Lo primero que se debe realizar para poder conectarse a una base de datos es cargar el driver encargado de ésta función. 
        //Para ello es utilizada la llamada Class.forName.
        try{ Class.forName(driver);}
        // NoClassDefFoundError se produce cuando la Jvm o el ClassLoader intenta cargar la definición de una clase y no es capaz de encontrarla
        catch(ClassNotFoundException e){LogGen.error(e.getMessage());} 
        //Una vez cargado el driver es necesario crear un objeto del tipo Connection, para administrar la conexión. Una aplicación puede utilizar DriverManager
        //para obtener un objeto de tipo conexión, Connection.
        try {conn = DriverManager.getConnection(url, user, pwd);}
        //La clase SQLException y sus subtipos proporcionan información acerca de los errores y avisos que se producen mientras se está accediendo a un origen de datos.
        catch (SQLException e){LogGen.error(e.getMessage());}
    }
    
// VARIABLES __________________________________________________________________
    //DRIVER : PERMITE CONECTARSE A UNA BASE DE DATOS: CADA GESTOR DE BASE DE DATOS REQUIERE UN DRIVER DISTINTO
    private String driver = "com.mysql.jdbc.Driver";
    //VERIFICA SI LA URL ES VALIDA
    private String url = "jdbc:mysql://localhost:3306/bets";
    //VERIFICA EL USUARIO QUE SERIA ROOT
    private String user = "root";
    //VERIFICA LA CONTRASEÑA
    private String pwd = "";    
    //PERMITE EJECUTAR SENTENCIAS SQL CON PARAMETROS DE ENTRADA
    protected static PreparedStatement ps = null;
    //REPRESENTA UNA CONEXION CON UNA BASE DE DATOS. UNA APLICACION PUEDE TENER MAS DE UNA CONEXION A MAS DE UNA BASE DE DATOS
    protected static Connection conn = null;
    //PERMITE EJECUTAR SENTECIAS SQL SIN PARAMETROS
    protected static Statement st = null;
      //CONTIENE LAS FILAS O REGISTROS OBTENIDOS AL EJECUTAR UN SELECT.
    protected static ResultSet rs = null;
    
}
