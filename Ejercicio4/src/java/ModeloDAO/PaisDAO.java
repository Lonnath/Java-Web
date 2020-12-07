/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;
import Config.Conexion;
import Interfaces.CrudPais;
import Modelo.Bando;
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
public class PaisDAO implements CrudPais{
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Pais pais = new Pais();

    @Override
    public List listarP() {
        ArrayList<Pais> list = new ArrayList();
        String sql = "select * from paises";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Pais paiz = new Pais();
                paiz.setId_pais(rs.getInt("Id_pais"));
                paiz.setNombre(rs.getString("Nombre"));
                paiz.setId_bando(rs.getInt("Id_bando"));
                paiz.setAnio_salida(rs.getInt("anio_salida"));
                paiz.setAnio_entrada(rs.getInt("anio_entrada"));
                list.add(paiz);
            }
        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        
        return list;
    }

    @Override
    public Pais listP(int id) {
        String sql = "select * from paises where id_pais="+id;
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                pais.setId_pais(rs.getInt("Id_pais"));
                pais.setNombre(rs.getString("Nombre"));
                pais.setId_bando(rs.getInt("Id_bando"));
                pais.setAnio_salida(rs.getInt("anio_salida"));
                pais.setAnio_entrada(rs.getInt("anio_entrada"));
              
            }
        }catch (Exception e){
        }
        return pais;
    
    }

    @Override
    public boolean addP(Pais pais) {
        String tmpo = "";
        if(pais.getId_bando()==0){
            tmpo = "null";
        }else tmpo = "'"+pais.getId_bando()+"'";
        String tmpo1 = "";
        if(pais.getAnio_entrada()!=0){
            tmpo1 ="'"+pais.getAnio_entrada()+"'";
        }else tmpo1 = "null";
        String tmpo2 = "";
        if(pais.getAnio_salida()!=0){
            tmpo2 ="'"+pais.getAnio_salida()+"'";
        }else tmpo2 = "null";
        String consult = "insert into paises(id_pais, nombre, id_bando, anio_salida, anio_entrada) values (null, '"+pais.getNombre()+"', "+tmpo+","+tmpo1+","+tmpo2+")";
        
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }
        return false;
    }

    @Override
    public boolean editP(Pais p) {
       String consult = "update paises set id_bando="+p.getId_bando()+" where id_pais="+p.getId_pais();
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }
    return false;
    }

    @Override
    public boolean eliminarP(int id) {
        String consulta = "delete from paises where id_pais ="+id;
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(consulta);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false; 
    }

   
}
