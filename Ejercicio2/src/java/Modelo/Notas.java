package Modelo;

public class Notas {

    private int id;

    private int nota;
    private long id_alumno;
    private long id_curso;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getId_Alumno() {
        return id_alumno;
    }

    public void setId_Alumno(long id_estudiante) {
        this.id_alumno = id_estudiante;
    }

    public long getId_curso() {
        return id_curso;
    }

    public void setId_curso(long id_curso) {
        this.id_curso = id_curso;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    public Notas(int nota) {
        this.nota = nota;
    }

    public Notas() {
    }
}
