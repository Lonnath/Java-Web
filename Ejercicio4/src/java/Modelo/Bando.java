/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Lonnath
 */
public class Bando {

    private int id_bando;
    private int ganador;
    private String nombre;
    private int id_guerra;

    public Bando() {
    }

    public Bando(int id_bando, int ganador, String nombre, int id_guerra) {
        this.id_bando = id_bando;
        this.ganador = ganador;
        this.nombre = nombre;
        this.id_guerra = id_guerra;
    }

    public int getId_bando() {
        return id_bando;
    }

    public void setId_bando(int id_bando) {
        this.id_bando = id_bando;
    }

    public int getGanador() {
        return ganador;
    }

    public void setGanador(int ganador) {
        this.ganador = ganador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId_guerra() {
        return id_guerra;
    }

    public void setId_guerra(int id_guerra) {
        this.id_guerra = id_guerra;
    }
}
