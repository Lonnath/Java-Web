
package ModeloDAO;

import Config.Conexion;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SentenciaDAO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;

    public List<Carcel> getSentencias(int cod) {
        ArrayList<Carcel> carcel = new ArrayList();
        String sql = "SELECT * FROM carcel";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            }
        } catch (Exception e) {
            
        }
        return carcel;

    }
    public int codigoReclusoSentencia(){
        String sql = "SELECT MAX(codrecluso) FROM recluso";
         int var = 0;
       try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
               var = rs.getInt("max");
            }
            conection.close();
            
        }catch(Exception e){
            System.err.print("ERROR CODIGO SENTENCIA: "+e.getMessage());
        }
       
       return var;
    }
    public void insertSentencia(Sentencia sentencia) {
        String sql = "INSERT INTO sentencia (fecha, descripcion, tiempocondena, id_estado, codrecluso) values('"+sentencia.getFecha()+"', '"+sentencia.getDescripcion()+"', '"+sentencia.getTiempocondena()+"', '"+sentencia.getId_estado()+"', '"+sentencia.getCod_recluso()+"')";
        
       try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            ps.executeUpdate();
            conection.close();
        }catch(Exception e){
            System.err.print("ERROR INSERCION SENTENCIA: "+e.getMessage());
        }
    }
}
