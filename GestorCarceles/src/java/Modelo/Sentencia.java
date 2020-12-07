
package Modelo;

public class Sentencia {
    String fecha;
    String descripcion;
    String tiempocondena;
    int id_estado;
    int cod_recluso;

    public Sentencia() {
    }
    
    public Sentencia(String fecha, String descripcion, String tiempocondena, int id_estado, int cod_recluso) {
        this.fecha = fecha;
        this.descripcion = descripcion;
        this.tiempocondena = tiempocondena;
        this.id_estado = id_estado;
        this.cod_recluso = cod_recluso;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTiempocondena() {
        return tiempocondena;
    }

    public void setTiempocondena(String tiempocondena) {
        this.tiempocondena = tiempocondena;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public int getCod_recluso() {
        return cod_recluso;
    }

    public void setCod_recluso(int cod_recluso) {
        this.cod_recluso = cod_recluso;
    }
    
    
    
}
