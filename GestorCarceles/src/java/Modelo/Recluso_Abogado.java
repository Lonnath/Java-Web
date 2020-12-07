
package Modelo;

import java.sql.Date;

public class Recluso_Abogado {
    private int cod_recluso;
    private long cedulaabogado;
    private String fecha;

    public Recluso_Abogado() {
    }
    
    public Recluso_Abogado(int cod_recluso, long cedulaabogado, String fecha) {
        this.cod_recluso = cod_recluso;
        this.cedulaabogado = cedulaabogado;
        this.fecha = fecha;
    }

    public int getCod_recluso() {
        return cod_recluso;
    }

    public void setCod_recluso(int cod_recluso) {
        this.cod_recluso = cod_recluso;
    }

    public long getCedulaabogado() {
        return cedulaabogado;
    }

    public void setCedulaabogado(long cedulaabogado) {
        this.cedulaabogado = cedulaabogado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
}
