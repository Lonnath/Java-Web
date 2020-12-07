package Modelo;

public class Celda_Recluso {

    int id_celda;
    int cod_recluso;

    public Celda_Recluso() {
    }

    public Celda_Recluso(int id_celda, int cod_recluso) {
        this.id_celda = id_celda;
        this.cod_recluso = cod_recluso;
    }

    public int getId_celda() {
        return id_celda;
    }

    public void setId_celda(int id_celda) {
        this.id_celda = id_celda;
    }

    public int getCod_recluso() {
        return cod_recluso;
    }

    public void setCod_recluso(int cod_recluso) {
        this.cod_recluso = cod_recluso;
    }

}
