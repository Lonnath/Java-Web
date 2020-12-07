
package Modelo;

public class Usuario {
    String usuario;
    String password;
    String nombre;
    String apellido;
    long telefono;
    String url;
    int tipoUsuario;
    int idcarcel;
    int cedula;

    public Usuario() {
    }

    public Usuario(String usuario, String password, String nombre, String apellido, long telefono, String url, int tipoUsuario, int idcarcel, int cedula) {
        this.usuario = usuario;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.url = url;
        this.tipoUsuario = tipoUsuario;
        this.idcarcel = idcarcel;
        this.cedula = cedula;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(int tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public int getIdcarcel() {
        return idcarcel;
    }

    public void setIdcarcel(int idcarcel) {
        this.idcarcel = idcarcel;
    }
    
    
}
