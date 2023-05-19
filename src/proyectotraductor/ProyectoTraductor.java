/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectotraductor;

import Generadores.generador;
import Ventana.Principal;
import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author audyc
 */
public class ProyectoTraductor {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        try { 
        generador generar = new generador();
        
        generar.gen();
                  
        } catch (Exception ex) {
            Logger.getLogger(ProyectoTraductor.class.getName()).log(Level.SEVERE, null, ex);
        }
        

        new Principal().setVisible(true);
    }
    
}
