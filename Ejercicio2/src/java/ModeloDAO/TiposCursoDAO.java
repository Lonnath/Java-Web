/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ModeloDAO;

import Config.Conexion;
import Interfaces.TipoCursoDTO;
import Modelo.TiposCurso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TiposCursoDAO implements TipoCursoDTO{
     Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    TiposCurso tipoCurso = new TiposCurso();
    @Override
    public List<TiposCurso> listarE() {
         ArrayList<TiposCurso> list = new ArrayList();
        String sql = "select * from tipos_curso";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                TiposCurso tipoCurso = new TiposCurso();
                tipoCurso.setCod_curso(rs.getInt("cod_curso"));
                tipoCurso.setDuracion(rs.getInt("duracion"));
                tipoCurso.setPrograma(rs.getString("programa"));
                tipoCurso.setTitulo(rs.getString("titulo"));
               list.add(tipoCurso);
            }
        }catch (Exception e){
        }
        
        return list;
    
    }

    @Override
    public void addE(TiposCurso tipoCurso) {
          String consult = "insert into tipos_curso(cod_curso, duracion, programa, titulo) values ('"+tipoCurso.getCod_curso()+"', '"+tipoCurso.getDuracion()+"', '"+tipoCurso.getPrograma()+"','"+tipoCurso.getTitulo()+"')";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }
    
    }

    @Override
    public TiposCurso listCurso(long id) {
        String sql = "select * from tipos_curso where cod_curso="+(int)id;
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                tipoCurso.setCod_curso(rs.getInt("cod_curso"));
                tipoCurso.setDuracion(rs.getInt("duracion"));
                tipoCurso.setPrograma(rs.getString("programa"));
                tipoCurso.setTitulo(rs.getString("titulo"));
               
            }
        }catch (Exception e){
        }
        return tipoCurso;
    }
    
}
