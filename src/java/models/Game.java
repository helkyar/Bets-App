/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 * Esta clase se utiliza para dar informacion sobre los partidos, lugar, equipo, fecha,
 * resultado del visitante, resultando del local, etc. 
 * @author Vero, Javi, Noah, Sandra, Mark y Patri
 */
public class Game {

    public Game(){}
    //creacion de objetos 
    public Game(int gameId, String local, String visitor, String date, int visitorResult, int localResult, int scraperId) {
        this.gameId = gameId;
        this.local = local;
        this.visitor = visitor;
        this.date = date;
        this.visitorResult = visitorResult;
        this.localResult = localResult;
        this.scraperId = scraperId;
        this.data = new String[]{String.valueOf(gameId), local, visitor, date, 
            String.valueOf(visitorResult), String.valueOf(localResult),
            String.valueOf(scraperId)};
    }
    
// GETTERS & SETTERS __________________________________________________________

    public String[] getData() {
        return data;
    }

    public int getGameId() {
        return gameId;
    }

    public String getLocal() {
        return local;
    }

    public String getVisitor() {
        return visitor;
    }

    public String getDate() {
        return date;
    }

    public int getVisitorResult() {
        return visitorResult;
    }

    public int getLocalResult() {
        return localResult;
    }

    public int getScraperId() {
        return scraperId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public void setVisitor(String visitor) {
        this.visitor = visitor;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setVisitorResult(int visitorResult) {
        this.visitorResult = visitorResult;
    }

    public void setLocalResult(int localResult) {
        this.localResult = localResult;
    }

    public void setScraperId(int scraperId) {
        this.scraperId = scraperId;
    }
    
    
// VARIABLES __________________________________________________________________
    private String[] data;
    
    private int gameId;
    private String local;
    private String visitor;
    private String date;
    private int visitorResult;
    private int localResult;    
    private int scraperId;
}
