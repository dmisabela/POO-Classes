/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author isabela
 */
public class Horario {
    private int hora;
    private int minuto;
    private int segundo;
    /**
     *Construtor que inicializa a hora com 00:00:00
     */
    public Horario(){
        hora = 0;
        minuto = 0;
        segundo = 0;
    }
    /**
     * Construtor que inicializa a data com os parâmetros
     * @param hora
     * @param minuto
     * @param segundo 
     */
    public Horario(int hora, int minuto, int segundo){
        this.setHorario(hora, minuto, segundo);
    }
    
    public void setHorario(int hora, int minuto, int segundo){
        this.setHora(hora);
        this.setMinuto(minuto);
        this.setSegundo(segundo);
    }
    
    public String getHorario(){
        String horario = "";
        
        if(hora < 10) horario += "0";
        horario += hora+":";
        if(minuto < 10) horario += "0";
        horario += minuto+":";
        if(segundo < 10) horario += "0";
        horario += segundo;
        return horario;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        if(hora < 0) this.hora = 0;
        else if(hora > 23) this.hora = 23;
        else this.hora = hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        if(minuto < 0) this.minuto = 0;
        else if(minuto > 60) this.minuto = 60;
        else this.minuto = minuto;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setSegundo(int segundo) {
        this.segundo = segundo;
    }
    
}
