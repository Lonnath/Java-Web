
package ModeloDAO;

import Config.Conexion;
import Interfaces.EmpresaDTO;
import Modelo.Empresas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpresaDAO implements EmpresaDTO {
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Empresas empresa = new Empresas();
    @Override
    public List<Empresas> listarE() {
         ArrayList<Empresas> list = new ArrayList();
        String sql = "select * from empresas";
        
        
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Empresas empresa = new Empresas();
                empresa.setCif(rs.getInt("cif"));
                empresa.setNombre(rs.getString("nombre"));
                empresa.setDireccion(rs.getString("direccion"));
                empresa.setTelefono(rs.getString("telefono"));
                list.add(empresa);
            }
        }catch (Exception e){
        }
        
        return list;
    }

    @Override
    public void addE(Empresas empresa) {
          String consult = "insert into empresas(cif, nombre, direccion, telefono) values ('"+empresa.getCif()+"', '"+empresa.getNombre()+"', '"+empresa.getDireccion()+"','"+empresa.getTelefono()+"')";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }}

    @Override
    public Empresas listEmpresas(int id) {
         String sql = "select * from empresas where cif="+id;
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                empresa.setCif(rs.getInt("cif"));
                empresa.setNombre(rs.getString("nombre"));
                empresa.setDireccion(rs.getString("direccion"));
                empresa.setTelefono(rs.getString("telefono"));
                
            }
        }catch (Exception e){
        }
        return empresa;
    }
    
}
