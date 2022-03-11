/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Vero, Javi, Noah, Sandra, Mark y Patri
 */
public class Bet {

    public Bet(){}
    // metodo creado para llamar objetos
    public Bet(int betId, int userId, int gameId, float betPay, int betType, 
            int betAmount, int resultLocal, int resultVisit, int show) {
        this.betId = betId;
        this.userId = userId;
        this.gameId = gameId;
        this.betPay = betPay;
        this.betType = betType;
        this.betAmount = betAmount;
        this.resultLocal = resultLocal;
        this.resultVisit = resultVisit;
        this.show = show;
        this.data = new int[]{betId, userId, gameId, (int)betPay, betType,
            betAmount, resultLocal, resultVisit, show};
    }

    @Override
    public String toString() {
        return "Wager{" + "betId=" + betId + ", userId=" + userId + ", "
            + "gameId=" + gameId + ", betPay=" + betPay + ", betType=" 
            + betType + ", betAmount=" + betAmount + ", resultLocal=" 
            + resultLocal + ", resultVisit=" + resultVisit + '}';
    }

    
// GETTERS & SETTERS __________________________________________________________

    public int[] getData() {
        return data;
    }

    public int getShow() {
        return show;
    }
    
    public int getBetId() {
        return betId;
    }

    public int getUserId() {
        return userId;
    }

    public int getGameId() {
        return gameId;
    }

    public float getBetPay() {
        return betPay;
    }

    public int getBetType() {
        return betType;
    }

    public int getBetAmount() {
        return betAmount;
    }

    public int getResultLocal() {
        return resultLocal;
    }

    public int getResultVisit() {
        return resultVisit;
    }

    public void setBetId(int betId) {
        this.betId = betId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public void setBetPay(float betPay) {
        this.betPay = betPay;
    }

    public void setBetType(int betType) {
        this.betType = betType;
    }

    public void setBetAmount(int betAmount) {
        this.betAmount = betAmount;
    }

    public void setResultLocal(int resultLocal) {
        this.resultLocal = resultLocal;
    }

    public void setResultVisit(int resultVisit) {
        this.resultVisit = resultVisit;
    }
    
    
// VARIABLES __________________________________________________________________
    private int[] data;
    
    private int betId;
    private int userId;
    private int gameId;
    private float betPay;
    private int betType;
    private int betAmount;
    private int resultLocal;
    private int resultVisit;
    private int show;
}
