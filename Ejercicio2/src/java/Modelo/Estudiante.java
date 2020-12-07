
package Modelo;
public class Estudiante {
    private String dni;
    private String direccion;
    private String nombre;
    private String apellidos;
    private String telefono;
    private int edad;
    private Empresas empresa;
            
    public Estudiante(){
    
    }
    
    public Estudiante(String dni, String direccion, String nombre, String apellidos, String telefono, int edad, Empresas empresa) {
        this.dni = dni;
        this.direccion = direccion;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.telefono = telefono;
        this.edad = edad;
        this.empresa = empresa;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Empresas getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresas empresa) {
        this.empresa = empresa;
    }
    
    
    
}
