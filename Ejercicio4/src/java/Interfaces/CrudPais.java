/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Interfaces;
import java.util.List;
import Modelo.*;
/**
 *
 * @author Lonnath
 */
public interface CrudPais {
        public List listarP();
        public Pais listP(int id);
        public boolean addP(Pais pais);
        public boolean editP(Pais p);
        public boolean eliminarP(int id);
        
       
}
