
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Nombre_MunicipioDAO {
   Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Nombre_Municipio getNombre_Municipio(int nombreMunicipio) {
       Nombre_Municipio municipio = new Nombre_Municipio();
        String sql = "SELECT * FROM nombre_municipio WHERE id = '"+nombreMunicipio+"'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                municipio.setNombre(rs.getString("nombre"));
            }
            
            conection.close();
        } catch (Exception e) {
        }
        return municipio;

    }
    
    
    
}
