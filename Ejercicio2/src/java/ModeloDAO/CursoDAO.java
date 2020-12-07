
package ModeloDAO;

import Config.Conexion;
import Interfaces.CursoDTO;
import Modelo.Curso;
import Modelo.TiposCurso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CursoDAO implements CursoDTO{
    Conexion conect = new Conexion();
    Connection conection;
    PreparedStatement ps;
    ResultSet rs;
    Curso curso = new Curso();
    @Override
    public List<Curso> listarC() {
            ArrayList<Curso> list = new ArrayList();
        String sql = "select * from cursos";
        
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Curso curso = new Curso();
                curso.setN_concreto(rs.getInt("n_concreto"));
                curso.setFecha_fin(rs.getString("fecha_fin"));
                curso.setFecha_inicio(rs.getString("fecha_inicio"));
                curso.setId_tipos_curso(rs.getInt("id_tipos_curso"));
                TiposCursoDAO tmpo2 = new TiposCursoDAO();
                TiposCurso tmpo3 = tmpo2.listCurso(rs.getInt("id_tipos_curso"));
                curso.setTipoCurso(tmpo3);
                list.add(curso);
            }
        }catch (Exception e){
        }
        
        return list;
    
        
    }
    
    @Override
    public void addC(Curso curso) {
        String consult = "insert into cursos(n_concreto, fecha_fin, fecha_inicio, id_tipos_curso) values (null, '"+curso.getFecha_fin() +"', '"+curso.getFecha_inicio()+"', '"+curso.getId_tipos_curso()+"')";
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(consult);
            ps.executeUpdate();
            
        }catch(Exception e){
        }}

    @Override
    public Curso listCurso(long id) {
        String sql = "select * from cursos where n_concreto="+(int)id;
        try{
            conection = conect.getConnection();
            ps = conection.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                curso.setN_concreto(rs.getInt("n_concreto"));
                curso.setFecha_fin(rs.getString("fecha_fin"));
                curso.setFecha_inicio(rs.getString("fecha_inicio"));
                curso.setId_tipos_curso(rs.getInt("id_tipos_curso"));
                
            }
        }catch (Exception e){
        }
        return curso;
    
    
    }

}
