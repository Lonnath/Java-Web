
package Modelo;

public class Recluso {
    
    int cod_recluso;
    int telfonofamiliar;
    Persona persona;

    public Recluso() {
    }

    
    public Recluso(int cod_recluso, int telfonofamiliar) {
        this.cod_recluso = cod_recluso;
        this.telfonofamiliar = telfonofamiliar;
    }

    public int getCod_recluso() {
        return cod_recluso;
    }

    public void setCod_recluso(int cod_recluso) {
        this.cod_recluso = cod_recluso;
    }

    public int getTelfonofamiliar() {
        return telfonofamiliar;
    }

    public void setTelfonofamiliar(int telfonofamiliar) {
        this.telfonofamiliar = telfonofamiliar;
    }
    
    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    
    
}
