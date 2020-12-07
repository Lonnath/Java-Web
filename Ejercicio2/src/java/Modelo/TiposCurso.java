
package Modelo;

public class TiposCurso {
    private int cod_curso;
    private int duracion;
    private String programa;
    private String titulo;
    
    public TiposCurso(){
    
    }
    
     public TiposCurso(int cod_curso, int duracion, String programa, String titulo) {
        this.cod_curso = cod_curso;
        this.duracion = duracion;
        this.programa = programa;
        this.titulo = titulo;
    }
    
    public int getCod_curso() {
        return cod_curso;
    }

    public void setCod_curso(int cod_curso) {
        this.cod_curso = cod_curso;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

   
    
}

