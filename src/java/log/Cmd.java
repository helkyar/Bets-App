package log;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author Javier Palacios
 */
class Cmd {
    /**
     * Runs command line commands and returns the response in string format
     * @param comand command to be executed
     * @param i line at witch start "recording" the result
     * @param j line at witch stop "recording" the result
     * @param sep separation between lines
     * @return String with the result of the command execution
     */
    public static String ran(String comand, int i, int j, String sep){
        String s, msg = "";
        try{
            Process p = Runtime.getRuntime().exec(comand);  //IOEx

            // if(comand.contains("powershell")){p.getOutputStream().close();}

            BufferedReader br = new BufferedReader(
            new InputStreamReader(p.getInputStream()));
            
            for(int z = 0; (s = br.readLine()) != null; z++){
                if(z > i && z < j) {msg += s + " ";}
            }

            if(!sep.equals("") && msg.contains(sep)){
                msg = msg.substring(msg.indexOf(sep)+sep.length());
            }

            p.waitFor(); // InterruptedEx
            p.destroy();  
                        
        } catch(IOException e){LogGen.error(e.getMessage());}
          catch(InterruptedException e){LogGen.error(e.getMessage());} 

        return msg;
    }
    
    /**
     * Runs command line commands and returns the response in string format
     * @param comand command to be executed
     * @param i line at witch start "recording" the result
     * @param j line at witch stop "recording" the result
     * @param sep separation between lines
     * @return String with the result of the command execution
     */
    public static String run(String comand, int i, int j, String sep){
        String s, msg = "";
        try{
            Process p = Runtime.getRuntime().exec(comand);  //IOEx

            // if(comand.contains("powershell")){p.getOutputStream().close();}

            BufferedReader br = new BufferedReader(
            new InputStreamReader(p.getInputStream()));
            
            for(int z = 0; (s = br.readLine()) != null; z++){
                if(z > i && z < j) {msg += s + "<br>";}
            }

            if(!sep.equals("") && msg.contains(sep)){
                msg = msg.substring(msg.indexOf(sep)+sep.length());
            }

            p.waitFor(); // InterruptedEx
            p.destroy();  
                        
        } catch(IOException e){LogGen.error(e.getMessage());}
          catch(InterruptedException e){LogGen.error(e.getMessage());} 

        return msg;
    }
    
    /**
     * Runs command line commands passed as array 
     * and returns the response in string format
     * @param comand command to be executed
     * @param i line at witch start "recording" the result
     * @param j line at witch stop "recording" the result
     * @param sep separation between lines
     * @return String with the result of the command execution
     */
    public static String run(String[] comand, int i, int j, String sep){
        String s, msg = "";
        try{
            Process p = Runtime.getRuntime().exec(comand);  //IOEx
            p.waitFor();
            
            BufferedReader br = new BufferedReader(
            new InputStreamReader(p.getInputStream()));
            
            for(int z = 0; (s = br.readLine()) != null; z++){
                if(z > i && z < j) {msg += s + "<br>";}
            }

            if(!sep.equals("") && msg.contains(sep)){
                msg = msg.substring(msg.indexOf(sep)+sep.length());
            }

            p.waitFor(); // InterruptedEx
            p.destroy();  
                        
        } catch(IOException e){LogGen.error(e.getMessage());}
          catch(InterruptedException e){LogGen.error(e.getMessage());} 

        return msg;
    }
    
    /**
     * Runs command line commands in a separate thread
     * and returns the response in string format
     * @param comand command to be executed
     * @param sep separation between lines
     * @return String with the result of the command execution
     */
    public static String runThr(String comand, String sep){
        //Redeclare to implement getResult method
        class ParalelReader extends Thread{public String getResult(){return "";}};
        String msg = "";
        
        try {
            ParalelReader reader = new ParalelReader(){
                private String s, msg = "";
                Process p = Runtime.getRuntime().exec(comand);  //IOEx

                @Override
                public void run(){
                    try {
                        BufferedReader br = new BufferedReader(
                        new InputStreamReader(p.getInputStream()));
                        //IOEx
                        while ((s = br.readLine()) != null){msg += s + "\n";}
                        
                        if(!sep.equals("") && msg.contains(sep)){
                            msg = msg.substring(msg.indexOf(sep)+sep.length());
                        }


                     } catch(IOException e){LogGen.error(e.getMessage());}
                }

                @Override
                public String getResult() {
                    try{
                        p.waitFor(); // InterruptedEx
                        System.out.println ("exit: " + p.exitValue());
                        p.destroy();  
                    } catch(InterruptedException e){LogGen.error(e.getMessage());} 
                    return this.msg;
                }
            };
            
            reader.start();
            msg = reader.getResult();
        } catch(IOException e){LogGen.error(e.getMessage());}
        
        return msg;
    }
}