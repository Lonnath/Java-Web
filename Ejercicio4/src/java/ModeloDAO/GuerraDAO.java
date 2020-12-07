/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ModeloDAO;
import Config.Conexion;
import Interfaces.CrudGuerra;
import Modelo.Guerra;
import Modelo.Pais;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Lonnath
 */
public class GuerraDAO implements CrudGuerra {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Guerra guerra= new Guerra();

    @Override
    public List listarG() {
        ArrayList<Guerra> list = new ArrayList();
        String sql = "select * from guerra";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Guerra guera = new Guerra();
                guera.setId_guerra(rs.getInt("Id_guerra"));
                guera.setNombre(rs.getString("Nombre"));
                guera.setAnio_inicio(rs.getInt("anio_inicio"));
                guera.setAnio_fin(rs.getInt("anio_fin"));
                list.add(guera);
            }
        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        
        return list;
    }

    @Override
    public boolean addG(Guerra guerra) {
        String consult = "insert into guerra(id_guerra, nombre, anio_inicio, anio_fin) values (null, '"+guerra.getNombre()+"','"+guerra.getAnio_inicio()+"', '"+guerra.getAnio_fin()+"')";
        
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }
        return false;
    }

   
}
