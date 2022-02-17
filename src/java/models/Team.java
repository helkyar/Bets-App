/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author admin
 */
public class Team {
          
    public Team(){}
    
    public Team(int teamId, String teamName, String tendency, int visitWon,
    int visitLost, int visitGames, int localWon, int localLost, int localGames){
        this.teamId = teamId;
        this.teamName = teamName;
        this.tendency = tendency;
        this.visitWon = visitWon;
        this.visitLost = visitLost;
        this.visitGames = visitGames;
        this.localWon = localWon;
        this.localLost = localLost;
        this.localGames = localGames;
        this.data = new String[]{teamName, String.valueOf(visitWon), 
            String.valueOf(visitLost), String.valueOf(visitGames), 
            String.valueOf(localWon), String.valueOf(localLost),
            String.valueOf(localGames)};
    }
    
    @Override
    public String toString() {
        return "Team{" + "teamId=" + teamId + ", teamName=" + teamName + ", "
            + "tendency=" + tendency + ", visitWon=" + visitWon + ", "
            + "visitLost=" + visitLost + ", visitGames=" + visitGames + ", "
            + "localWon=" + localWon + ", localLost=" + localLost + ", "
            + "localGames=" + localGames + '}';
    }   
    
//GETTERS & SETTERS ___________________________________________________________
    public int getTeamId() {return teamId;}
    public String getTeamName() {return teamName;}
    public String getTendency() {return tendency;}    
    public int getVisitWon() {return visitWon;}
    public int getVisitLost() {return visitLost;}
    public int getVisitGames() {return visitGames;}
    public int getLocalWon() {return localWon;}
    public int getLocalGames() {return localGames;}
    public int getLocalLost() {return localLost;}
    public String[] getData(){return data;} //variables stored in array
    
    public void setTeamId(int teamId) {this.teamId = teamId;}
    public void setTeamName(String teamName) {this.teamName = teamName;}
    public void setTendency(String tendency) {this.tendency = tendency;}    
    public void setVisitWon(int visitWon) {this.visitWon = visitWon;}
    public void setVisitLost(int visitLost) {this.visitLost = visitLost;}
    public void setLocalWon(int localWon) {this.localWon = localWon;}
    public void setVisitGames(int visitGames) {this.visitGames = visitGames;}
    public void setLocalLost(int localLost) {this.localLost = localLost;}
    public void setLocalGames(int localGames) {this.localGames = localGames;}

// VARIABLES __________________________________________________________________     
    private String[] data;
    
    private int teamId;
    private String teamName;
    private String tendency;
    private int visitWon;
    private int visitLost;
    private int visitGames;
    private int localWon;
    private int localLost;
    private int localGames;
}
