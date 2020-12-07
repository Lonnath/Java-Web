/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Interfaces;

import Modelo.Bando;
import java.util.List;

/**
 *
 * @author Lonnath
 */
public interface CrudBando {
     public List listarB();
     public Bando listB(int id);
     public boolean addB(Bando pais);
}
