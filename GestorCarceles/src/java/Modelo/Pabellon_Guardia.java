
package Modelo;

public class Pabellon_Guardia {
    long cedula_guaria;
    int id_pabellon;
    int id_carcel;
    String fechainicio;
    String fechafin;

    public Pabellon_Guardia() {
    }
    
    public Pabellon_Guardia(long cedula_guaria, int id_pabellon, int id_carcel, String fechainicio, String fechafin) {
        this.cedula_guaria = cedula_guaria;
        this.id_pabellon = id_pabellon;
        this.id_carcel = id_carcel;
        this.fechainicio = fechainicio;
        this.fechafin = fechafin;
    }

    public long getCedula_guaria() {
        return cedula_guaria;
    }

    public void setCedula_guaria(long cedula_guaria) {
        this.cedula_guaria = cedula_guaria;
    }

    public int getId_pabellon() {
        return id_pabellon;
    }

    public void setId_pabellon(int id_pabellon) {
        this.id_pabellon = id_pabellon;
    }

    public int getId_carcel() {
        return id_carcel;
    }

    public void setId_carcel(int id_carcel) {
        this.id_carcel = id_carcel;
    }

    public String getFechainicio() {
        return fechainicio;
    }

    public void setFechainicio(String fechainicio) {
        this.fechainicio = fechainicio;
    }

    public String getFechafin() {
        return fechafin;
    }

    public void setFechafin(String fechafin) {
        this.fechafin = fechafin;
    }
    
    
    
}
