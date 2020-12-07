package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonaDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Persona getPersonaE(long cod) {

        Persona persona = new Persona();
        String sql = "SELECT * FROM Persona WHERE cedula=" + cod;
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                persona.setCedula(rs.getLong("cedula"));
                persona.setNombre(rs.getString("nombre"));
                persona.setApellido(rs.getString("apellido"));
                persona.setCorreo(rs.getString("correo"));
                persona.setTelefono(rs.getInt("telefono"));
            }

            conection.close();
        } catch (Exception e) {
            System.err.print("ERROR OBTENER PERSONA-E: "+e.getMessage());
        }
        return persona;

    }
    
     public void ingresarPersona(Persona persona) {
        String insert = "INSERT INTO persona values('"+persona.getCedula()+"', '"+persona.getNombre()+"', '"+persona.getApellido()+"', '"+persona.getDireccion()+"','"+persona.getTelefono()+"', '"+persona.getCorreo()+"')";
         System.out.println(insert);
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(insert);
            ps.executeUpdate();
            
            conection.close();
        } catch (Exception e) {

            System.out.println("ERROR INGRESAR PERSONA: " + e.getMessage());
        }
    }
}
