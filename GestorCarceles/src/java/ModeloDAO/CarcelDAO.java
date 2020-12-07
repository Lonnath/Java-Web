package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CarcelDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    
     public Carcel getCarcel(int id) {

        Carcel carcel = new Carcel();
        String sql = "SELECT * FROM carcel WHERE id='" + id + "'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                carcel.setId(rs.getInt("id"));
                carcel.setId_municipio(rs.getInt("id_municipio"));
                carcel.setNombre(rs.getString("nombre"));
                carcel.setDireccion(rs.getString("direccion"));
                carcel.setSexo(rs.getString("sexo").charAt(0));
            }
            
            conection.close();
        } catch (Exception e) {

            System.err.println("Carcel: " + e.getMessage());
        }
        if (carcel.getId() > 0) {
            return carcel;
        }

        return null;

    }
}
