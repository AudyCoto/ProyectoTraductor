/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generadores;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 *
 * @author audyc
 */
public class generador {
    
    public static void gen() throws IOException, Exception{
        JFlex.Main.generate(new File("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/analizadores/Lexer.flex"));
        //JFlex.Main.generate(new File("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/analizadores/LexerTranslate.flex"));

        JFlex.Main.generate(new File("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/analizadores/LexerCup.flex"));
        
        String[] path2 = {"-parser", "Sintax","src/analizadores/Sintax.cup"};
        java_cup.Main.main(path2);
        
        Path rutaSym = Paths.get("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/sym.java");
        if (Files.exists(rutaSym)) {
            Files.delete(rutaSym);
        }
        
        Files.move(
                Paths.get("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/sym.java"), 
                Paths.get("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/analizadores/sym.java")
        );
        Path rutaSin = Paths.get("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/analizadores/Sintax.java");
        if (Files.exists(rutaSin)) {
            Files.delete(rutaSin);
        }
        Files.move(
                Paths.get("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/Sintax.java"), 
                Paths.get("C:/Users/audyc/Documents/NetBeansProjects/ProyectoTraductor/src/analizadores/Sintax.java")
        );
       
        
    }
        
}
