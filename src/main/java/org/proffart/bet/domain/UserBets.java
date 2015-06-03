package org.proffart.bet.domain;

import java.util.Date;

/**
 * Created by Aram on 3/23/2015.
 */
public class UserBets {

    private String gameNameAm;
    private String gameNameRu;
    private String gameNameEng;
    private Date date;
    private String status;
    private double coefficient;
    private double amount;


    public String getGameNameAm() {
        return gameNameAm;
    }

    public void setGameNameAm(String gameNameAm) {
        this.gameNameAm = gameNameAm;
    }

    public String getGameNameRu() {
        return gameNameRu;
    }

    public void setGameNameRu(String gameNameRu) {
        this.gameNameRu = gameNameRu;
    }

    public String getGameNameEng() {
        return gameNameEng;
    }

    public void setGameNameEng(String gameNameEng) {
        this.gameNameEng = gameNameEng;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getCoefficient() {
        return coefficient;
    }

    public void setCoefficient(double coefficient) {
        this.coefficient = coefficient;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}

