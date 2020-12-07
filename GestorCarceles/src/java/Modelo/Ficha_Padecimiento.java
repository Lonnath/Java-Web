
package Modelo;

public class Ficha_Padecimiento {
    int id_ficha;
    int id_padecimiento;
    String fecha;

    public Ficha_Padecimiento() {
    }
    
    public Ficha_Padecimiento(int id_ficha, int id_padecimiento, String fecha) {
        this.id_ficha = id_ficha;
        this.id_padecimiento = id_padecimiento;
        this.fecha = fecha;
    }

    public int getId_ficha() {
        return id_ficha;
    }

    public void setId_ficha(int id_ficha) {
        this.id_ficha = id_ficha;
    }

    public int getId_padecimiento() {
        return id_padecimiento;
    }

    public void setId_padecimiento(int id_padecimiento) {
        this.id_padecimiento = id_padecimiento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
    
}
