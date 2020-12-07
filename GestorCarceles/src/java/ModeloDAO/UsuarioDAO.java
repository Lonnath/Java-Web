package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Usuario> getUsuarios(int idcarcel) {
        ArrayList<Usuario> list = new ArrayList();
        String sql = "SELECT * FROM usuarios WHERE idcarcel=" + idcarcel + " and tipousuario = 1";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario user = new Usuario();
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("password"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setTelefono(rs.getLong("telefono"));
                user.setUrl(rs.getString("url"));
                user.setTipoUsuario(rs.getInt("tipousuario"));
                user.setIdcarcel(rs.getInt("idcarcel"));
                user.setCedula(rs.getInt("cedula"));
                list.add(user);
                
            }
            conection.close();
        } catch (Exception e) {
        }
        return list;

    }
    
    public Usuario getInicioSesion(String usuario, String password) {

        Usuario user = null;
        String sql = "SELECT * FROM usuarios WHERE usuario='" + usuario + "' and " + "password='" + password + "'";
        System.out.println(sql);
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                user = new Usuario();
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("password"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setTelefono(rs.getLong("telefono"));
                user.setUrl(rs.getString("url"));
                user.setTipoUsuario(rs.getInt("tipousuario"));
                user.setIdcarcel(rs.getInt("idcarcel"));
                user.setCedula(rs.getInt("cedula"));
            }
            
            conection.close();
        } catch (Exception e) {

            System.out.println("ERROR " + e.getMessage());
        }
        
        if (user != null) {
            return user;
        }

        return null;

    }

    public Usuario validarUser(String usuario) {
        
        Usuario user = new Usuario();
        String sql = "SELECT * FROM usuarios WHERE usuario='" + usuario + "'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("password"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setTelefono(rs.getLong("telefono"));
                user.setUrl(rs.getString("url"));
                user.setTipoUsuario(rs.getInt("tipousuario"));
                user.setIdcarcel(rs.getInt("idcarcel"));
                user.setCedula(rs.getInt("cedula"));
            }
            
            conection.close();
        } catch (Exception e) {

            System.out.println("ERROR " + e.getMessage());
        }
        if (user.getUsuario()!=null) {
            return user;
        }

        return null;

    }


    public void eliminateUser(String parameter) {
        Usuario validacion = validarUser(parameter);
        if (validacion != null) {

            String delete = "DELETE FROM usuarios WHERE usuario = '" + parameter + "' and tipousuario = 1";
            try {
                conection = conect.getConnection();
                ps = conection.prepareStatement(delete);
                rs = ps.executeQuery();
                
                
            conection.close();
            } catch (Exception e) {

                System.out.println("ERROR " + e.getMessage());
            }
        }else System.out.print("NO ELIMINÓ");
    }

    public String ingresarUsuario(Usuario user) {
        Usuario validacion = validarUser(user.getUsuario());
        System.out.println(user.getUsuario()+" - "+user.getPassword());
        if (validacion == null) {
           String insert = "INSERT INTO usuarios values('"+user.getUsuario()+"','"+user.getPassword()+"', '"+user.getNombre()+"','"+user.getApellido()+"', '"+user.getCedula()+"', '"+user.getTelefono()+"','"+user.getUrl()+"','"+user.getTipoUsuario()+"','"+user.getIdcarcel()+"')";
            try {
                conection = conect.getConnection();
                ps = conection.prepareStatement(insert);
                rs = ps.executeQuery();
                
            conection.close();
            } catch (Exception e) {

                System.out.println("ERROR " + e.getMessage());
            }
        } else {
            System.out.println("CUENTA EXISTENTE");
        
        }
        return "usuarioAdmin.jsp";
    }
    
    public Usuario consultarUsuario(String usuario){
        
        Usuario user = new Usuario();
        String sql = "SELECT * FROM usuarios WHERE usuario='" + usuario + "' and tipousuario = 1";
             
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("password"));
                user.setNombre(rs.getString("nombre"));
                user.setApellido(rs.getString("apellido"));
                user.setTelefono(rs.getLong("telefono"));
                user.setUrl(rs.getString("url"));
                user.setTipoUsuario(rs.getInt("tipousuario"));
                user.setIdcarcel(rs.getInt("idcarcel"));
                user.setCedula(rs.getInt("cedula"));
            }
            
            conection.close();
        } catch (Exception e) {

            System.out.println("ERROR: " + e.getMessage());
        }
        
        if (user.getUsuario().length()>0) {
            return user;
        }

        return null;

    
    }
}
