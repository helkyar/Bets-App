/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbconnection;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import log.LogGen;
import models.User;

/**
 *
 * @author javier
 */

// Clase creada para acceder a la base de datos y añadir los datos de la tabla de "usuario"
public class DBUser  extends Connect{

  
    public DBUser(String s){}
    
    public DBUser(){        
        super();//call to parent to access database and set connection

        users = new ArrayList<>();

        try{initUsers();} 
        catch (SQLException e){LogGen.error(e.getMessage());}
        catch(Exception e){LogGen.error(e.getMessage());}    
        finally{try{conn.close();}catch(Exception e){LogGen.error(e.getMessage());}}
    }

    /**
    * Stores all table data inside ArrayList variable. Each model instance
    * correlates to a table row.
    * @throws SQLException
    * @throws Exception 
    */
    
    // Método creado para añadir datos de la tabla de "usuarios", concretamente "nombre, contraseña, saldo, apuestas" 
    private void initUsers() throws SQLException, Exception{ 
        String query = "SELECT `user_id`, `username`, `password`, `money`, "
            + "`bets_id` FROM users";

        st = conn.createStatement();
        rs = st.executeQuery(query);

        while(rs.next()) {
            users.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3),
                rs.getInt(4), rs.getInt(5)));
        }
    }
    
    // Método creado para acceder a los datos de la tabla de "login" del usuario, concretamente "nombre, saldo y contraseña"
    public User loginUser(String username, String password) {
        User user = new User(-1);
        String query = "SELECT `user_id`, `money`  FROM users WHERE "
            + "username = '"+username+"' AND password = '"+password+"'";
            
        connect();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(query);
            
            if (rs.next()) {
                user.setUsername(username);
                user.setUserid(rs.getInt(1));
                user.setMoney(rs.getInt(2));
                return user;
            }
            return user;
            
        } catch (SQLException e){e.printStackTrace(); return user;}
        catch(Exception e){e.printStackTrace(); return user;}    
        finally{try{conn.close();} catch(Exception e){return user;}}
    }

    // Método creado para acceder a los datos de la tabla de "registro" de usuarios, concretamente "nombre, contraseña y saldo"
    public int registerUser(String username, String password) {
        String query = "INSERT INTO users (`username`, `password`, `money`)"
            + " VALUES ('"+username+"','"+password+"','1000')";
        
        connect();
        try{
            ps = conn.prepareStatement(query);      
            ps.executeUpdate();
            return 1;
            
        } catch (SQLException e){e.printStackTrace(); return -1;}
        catch(Exception e){e.printStackTrace(); return -1;}    
        finally{try{conn.close();} catch(Exception e){return -1;}}
    }
    
    // Método creado para acceder a la tabla de "cuenta de usuario" 
    public void setUserAmount(int id, int amount) {
        String money = "SELECT money FROM users WHERE  user_id='"+id+"'";
        //Pass user_id

        connect();
        try{
            st = conn.createStatement();
            rs = st.executeQuery(money);
            
            if (rs.next()) {amount += rs.getInt(1);}
            
            String resolve = "UPDATE users SET money = '"+amount+"'+ "
                + "WHERE user_id='"+id+"'";
            
            ps = conn.prepareStatement(resolve);      
            ps.executeUpdate();

        } catch (SQLException e){LogGen.error(e.getMessage());}
        catch(Exception e){LogGen.error(e.getMessage());}    
        finally{try{conn.close();} catch(Exception e){LogGen.error(e.getMessage());}}
    }
    
    // GETTERS & SETTERS _________________________________________________________
    /**
    * This variable holds the value of each row of the table User 
    * (one instance of User class per row).
    * @return users ArrayList with all the users in the database
    */
    public List<User> getUsers() {return users;}
  
// VARIABLES _________________________________________________________________
    private ArrayList<User> users;

}
