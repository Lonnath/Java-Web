/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudBando;
import Modelo.Bando;
import Modelo.Guerra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lonnath
 */
public class BandoDAO implements CrudBando {

    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Bando bando = new Bando();

    @Override
    public List listarB() {
        ArrayList<Bando> list = new ArrayList();
        String sql = "select * from bandos";
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Bando bando = new Bando();
                bando.setId_bando(rs.getInt("Id_bando"));
                bando.setNombre(rs.getString("Nombre"));
                bando.setGanador(rs.getInt("Ganador"));
                
                bando.setId_guerra(rs.getInt("Id_guerra"));
                list.add(bando);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

        return list;
    }
    
    public List listarBusquedaBandos(int id) {
        ArrayList<Bando> list = new ArrayList();
        String sql = "select * from bandos where id_guerra="+id;
        try {
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Bando bando = new Bando();
                bando.setId_bando(rs.getInt("Id_bando"));
                bando.setNombre(rs.getString("Nombre"));
                bando.setGanador(rs.getInt("Ganador"));
                
                bando.setId_guerra(rs.getInt("Id_guerra"));
                list.add(bando);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

        return list;
    }
    @Override
    public boolean addB(Bando bando) {
        String cadena = "";
        if(bando.getId_guerra()==0){
            cadena = "null";
        }else cadena = "'"+bando.getId_guerra()+"'";
        
        String consult = "insert into bandos(id_bando, nombre, ganador, id_guerra) values (null, '"+bando.getNombre()+"', '"+bando.getGanador()+"', "+cadena+")";
        System.out.print(consult);
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }
        return false;
    
    }

    @Override
    public Bando listB(int id) {
       String sql = "select * from bandos where id_bando="+id;
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                bando.setId_bando(rs.getInt("Id_bando"));
                bando.setNombre(rs.getString("Nombre"));
                bando.setGanador(rs.getInt("ganador"));
                bando.setId_guerra(rs.getInt("id_guerra"));
            }
        }catch (Exception e){
        }
        return bando;
    
    }


}
