
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Celda_ReclusoDAO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Celda_Recluso> getCelda_Reclusos(int celdaId) {
        
        ArrayList<Celda_Recluso> celdaRecluso = new ArrayList();
        String sql = "SELECT * FROM celda_recluso WHERE id_celda = '"+celdaId+"'";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Celda_Recluso tmpoCelda_Recluso = new Celda_Recluso();
                tmpoCelda_Recluso.setCod_recluso(rs.getInt("codrecluso"));
                tmpoCelda_Recluso.setId_celda(rs.getInt("id_celda"));
                celdaRecluso.add(tmpoCelda_Recluso);
            }
            
            conection.close();
        } catch (Exception e) {
            System.err.print("Celda_Recluso: "+e.getMessage());
        }
        return celdaRecluso;

    }
    public void insertCelda_Recluso(Celda_Recluso celda) {
        String sql = "INSERT INTO celda_recluso (id_celda, codrecluso) values('"+celda.getId_celda()+"', '"+celda.getCod_recluso()+"')";
        System.out.println(sql);
       try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            ps.executeUpdate();
            conection.close();
        }catch(Exception e){
            System.err.print("ERROR INSERCION CELDA RECLUSO: "+e.getMessage());
        }
    }
}
