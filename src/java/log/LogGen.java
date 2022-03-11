/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package log;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// imports
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.IOException;
// metodos
// java.io.BufferedWriter: Escribe texto en un flujo de salida de caracteres, almacenando en búfer los caracteres para permitir 
// la escritura eficiente de caracteres individuales, matrices y cadenas.
// java.io.File: Una representación abstracta de nombres de rutas de archivos y directorios.
// java.io.FileWriter: Clase de conveniencia para escribir archivos de caracteres. Los constructores de esta clase asumen que la
// codificación de caracteres predeterminada y el tamaño de búfer de bytes predeterminado son aceptables.
// java.io.PrintWriter: Imprime representaciones formateadas de objetos en un flujo de salida de texto.
// java.text.DateFormat: clase abstracta para subclases de formato de fecha/hora que formatea y analiza fechas u horas de forma independiente del idioma.
// java.text.SimpleDateFormat: clase concreta para formatear y analizar fechas de manera sensible a la configuración regional. Permite formatear 
// (fecha -> texto), analizar (texto -> fecha) y normalizar.
// java.util.Date: representa un instante específico en el tiempo, con precisión de milisegundos.
// java.io.IOException: Señala que se ha producido una excepción de E/S de algún tipo. Esta clase es la clase general de excepciones producidas por operaciones
// de E/S fallidas o interrumpidas.
/**
 * La clase LogGen almacena la información.
 * @author Vero, Sandra, Javi, Noah, Mark y Patri
 */

public class LogGen {
private static String line = "-----------------------------------------------------------------------------\n";
private static String name;
private static String header;

public static void start(String msg) {
    // Obtener nombre de usuario
    String s = Cmd.runThr("whoami", "\\");
    
    try {
        // Formato de fecha para el archivo
        DateFormat logName = new SimpleDateFormat ("dd-MM-yyyy");
        name = "log/" + "log" +"("+ logName.format(new Date()) +")"+ ".log";
            
            File f = new File("log");
            f.mkdir();  // crea una carpeta si no existe ninguna
        } catch (Exception ex) {
            ex.printStackTrace();
        }
            writer(line,"\tSession\t\t", msg);
    }

    public static void error(String error){ // comenta errores
            writer("", "\tError\t\t", error);
    }

    public static void info(String info){
            writer("","\tInfo\t\t", info);
    }
    
    // Escribir en el archivo especificado
    public static void writer(String s, String type, String msg){
        try {
            DateFormat session = new SimpleDateFormat ("dd/MM/yyyy kk:mm:ss");
            header = s + session.format(new Date()) + type;

            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(name,true));

            PrintWriter fileWriter = new PrintWriter(bufferedWriter);
            fileWriter.print(header);
            fileWriter.print(msg + "\n");

            fileWriter.close();
            fileWriter.flush();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
