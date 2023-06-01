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
         try {  //Reader lectura = new BufferedReader(new FileReader(pathArchivo)); 
                s.parse();
                System.out.println("Analisis realizado correctamente");
                //sintac.setForeground(new Color(25, 111, 61));
            } catch (Exception ex) {
                Symbol sym = s.getS();
                System.out.println("Error de sintaxis. Linea: " + (sym.right + 1) + " Columna: " + (sym.left + 1) + ", Texto: \"" + sym.value + "\"");
                //sintac.setForeground(Color.red);
            }
         
         
    }
    
    public String sintactico2(String input){
        String resultado;
        String TextAnalizar = remplac(input);
        
        Sintax s = new Sintax(new LexerCup(new StringReader(TextAnalizar)));
        try {
            s.parse();
            
           // LexerCup lexer = new LexerCup(new StringReader(input));
            //Sintax parser = new Sintax(lexer);

            //Object result = parser.parse().value;
            resultado="Análisis sintáctico exitoso.";
        } catch (Exception e) {
            
                Symbol sym = s.getS();
                resultado="Error de sintaxis. Linea: " + (sym.right + 1) + " Columna: " + (sym.left + 1) + ", Texto: \"" + sym.value + "\"";

        }
        return resultado;
        
    }
            public String remplac(String cadena){
        String cadena_nueva="";
        cadena_nueva=cadena.replaceAll("\\."," \\. " );
        cadena_nueva=cadena_nueva.replaceAll("\\,"," comii " );
        cadena_nueva=cadena_nueva.replaceAll("\\;"," comipun " );
        cadena_nueva=cadena_nueva.replaceAll("\\:"," dosssp " );
        cadena_nueva=cadena_nueva.replaceAll("\\!"," \\! " );
        cadena_nueva=cadena_nueva.replaceAll("\\?"," \\? " );
        cadena_nueva=cadena_nueva.replaceAll("\\("," \\( " );
        cadena_nueva=cadena_nueva.replaceAll("\\)"," \\) " );
        cadena_nueva=cadena_nueva.replaceAll("\\["," \\[ " );
        cadena_nueva=cadena_nueva.replaceAll("\\]"," \\] " );     
        return cadena_nueva;
        }
    
    
//    public String remplac(String cadena){
//        String cadena_nueva="";
//        cadena_nueva=cadena.replaceAll("\\."," punn " );
//        cadena_nueva=cadena_nueva.replaceAll("\\,"," comm " );
//        cadena_nueva=cadena_nueva.replaceAll("\\;"," puncom " );
//        cadena_nueva=cadena_nueva.replaceAll("\\:"," dospum " );
//        cadena_nueva=cadena_nueva.replaceAll("\\!"," cerrad " );
//        cadena_nueva=cadena_nueva.replaceAll("\\?"," cerrin " );
//        cadena_nueva=cadena_nueva.replaceAll("\\("," abrpar " );
//        cadena_nueva=cadena_nueva.replaceAll("\\)"," cerrpar " );
//        cadena_nueva=cadena_nueva.replaceAll("\\["," abrllac " );
//        cadena_nueva=cadena_nueva.replaceAll("\\]"," cerrlac " );     
//        return cadena_nueva;
//    }
}
