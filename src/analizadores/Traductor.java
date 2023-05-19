/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.io.Reader;

/**
 *
 * @author audyc
 */
public class Traductor {
    
    
    
    public String Error;
    public String traducir(String textingresado){
        Error= "";
        String resultado = "";
        //archivo que almacenara la entrada del texto
        String pathArchivo = "src/Traductor/Texto.txt";
        File archivo = new File(pathArchivo);
        PrintWriter escritura;
        try {
            escritura = new PrintWriter(archivo);
            escritura.print(textingresado);
            escritura.close();
        } catch (Exception e) {
            System.out.println("Error al cargar Archivo");
        }
        try {
            Reader lectura = new BufferedReader(new FileReader(pathArchivo));
            Lexer lexer = new Lexer(lectura);
            //recorremos las lineas escritas en el text area de entrada
            while(true){
                Tokens tokens = lexer.yylex();
                if(tokens == null){
                   resultado += "";
                   System.out.println(resultado);
                   break;
                }
                if(tokens == tokens.Error){
                    Error += lexer.lexeme + "-> Error lexico se desconoce la traducción de la palabra\n";
                    resultado += " --"+lexer.lexeme +"--  ";
                }else{
                    resultado += tokens.toString() + " ";
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return resultado;
    }
    
    
}
