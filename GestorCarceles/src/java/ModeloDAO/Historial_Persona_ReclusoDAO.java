
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Historial_Persona_ReclusoDAO {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public Historial_Persona_Recluso getReclusoInfo(int cod) {

        Historial_Persona_Recluso historial = new Historial_Persona_Recluso();
        String sql = "SELECT * FROM historial WHERE codrecluso=" + cod;
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                historial.setCedula(rs.getLong("cedula"));
                historial.setCod_recluso(rs.getInt("codrecluso"));
                historial.setFechaingreso(rs.getString("fecha"));
            }
            
            conection.close();
        } catch (Exception e) {
        }
        return historial;
    }
    
    
    public void ingresarHistorial(Historial_Persona_Recluso historial){
        String insert ="INSERT INTO historial (cedula, fechaingreso, codrecluso) values('"+historial.getCedula()+"', '"+historial.getFechaingreso()+"', '"+historial.getCod_recluso()+"')";
        System.out.println(insert);
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(insert);
            ps.executeUpdate();
            
            conection.close();
        } catch (Exception e) {

            System.out.println("ERROR INGRESAR HISTORIAL: " + e.getMessage());
        }
    
    }
}
