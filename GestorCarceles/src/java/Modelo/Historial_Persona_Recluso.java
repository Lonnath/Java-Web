
package Modelo;

public class Historial_Persona_Recluso {
    long cedula;
    String fechaingreso;
    int cod_recluso;

    public Historial_Persona_Recluso() {
    }
    
    public Historial_Persona_Recluso(long cedula, String fechaingreso, int cod_recluso) {
        this.cedula = cedula;
        this.fechaingreso = fechaingreso;
        this.cod_recluso = cod_recluso;
    }

    public long getCedula() {
        return cedula;
    }

    public void setCedula(long cedula) {
        this.cedula = cedula;
    }

    public String getFechaingreso() {
        return fechaingreso;
    }

    public void setFechaingreso(String fechaingreso) {
        this.fechaingreso = fechaingreso;
    }

    public int getCod_recluso() {
        return cod_recluso;
    }

    public void setCod_recluso(int cod_recluso) {
        this.cod_recluso = cod_recluso;
    }
    
    
}
