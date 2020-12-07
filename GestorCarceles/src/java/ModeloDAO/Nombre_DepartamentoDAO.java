
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Nombre_DepartamentoDAO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Nombre_Departamento getNombre_Departamento(int idDepartamento) {
        Nombre_Departamento dpt = new Nombre_Departamento();
        String sql = "SELECT * FROM nombre_departamento WHERE id = '"+idDepartamento+"'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dpt.setNombre(rs.getString("nombre"));
            }
            
            conection.close();
        } catch (Exception e) {
        }
        return dpt;

    }
    
    public String getNombreDepartamento(int id){
        Nombre_Departamento tmpo = this.getNombre_Departamento(id);
        return tmpo.getNombre();
    }
}
