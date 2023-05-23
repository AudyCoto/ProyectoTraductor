/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

import java_cup.parser;
import analizadores.Lexer;
import java.awt.Color;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.Scanner;
import java_cup.runtime.Symbol;
/**
 *
 * @author audyc
 */
public class analizador {;
    
    public void sintactico() {
        String pathArchivo = "src/Traductor/Texto.txt";
        String contenido = "";
        System.out.println("1");
        File archivo = new File(pathArchivo);
        Scanner scanner = new Scanner(pathArchivo);
        // Leer el contenido del archivo línea por línea
        while (scanner.hasNextLine()) {
            contenido += scanner.nextLine() + "\n";
        }
        scanner.close();
        
        System.out.println("2");
       
         
         Sintax s = new Sintax(new LexerCup(new StringReader(contenido)));
         
         
        System.out.println("3");
         try {  Reader lectura = new BufferedReader(new FileReader(pathArchivo)); 
                s.parse();
                System.out.println("Analisis realizado correctamente");
                //sintac.setForeground(new Color(25, 111, 61));
            } catch (Exception ex) {
                Symbol sym = s.getS();
                System.out.println("Error de sintaxis. Linea: " + (sym.right + 1) + " Columna: " + (sym.left + 1) + ", Texto: \"" + sym.value + "\"");
                //sintac.setForeground(Color.red);
            }
         
         
    }
}
