/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

 
import analizadores.Tokens;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.io.Reader;
import java_cup.runtime.Symbol;

/**
 *
 * @author audyc
 */
public class Traductor {
    
    public String Error;
    public String LisToken;
    public String traducir(String textingresado){
        
        System.out.print("\n +++"+textingresado+"+++\n");
        
        //System.out.println("------------"+ textingresado + "-----------");
        int tem=1;
        LisToken= "LINEA 1 \n";
        LisToken += LisToken+"Tipo \t\t Token"+ "\n";
    
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
            
            //LexerCup cup = new LexerCup(lectura);
            //recorremos las lineas escritas en el text area de entrada
            System.out.println();
            while(true){
                //System.out.println(tem +" ");
                Tokens tokens = lexer.yylex();
                
                if(tokens == null){
                    
                   resultado += "";
                   break;
                }
                if(tokens == tokens.Error){
                    LisToken += "NO DEFINIDO"+" \t\t "+lexer.yytext()+ "\n";
                    
                    //Error += lexer.lexeme + "-> Error lexico se desconoce la traducción de la palabra\n";
                    resultado += " --"+lexer.lexeme +"--  ";
                }else if(tokens == tokens.Linea){
                        tem++;
                        resultado += "\n";
                        LisToken += "LINEA " + tem+ "\n";
                        
                }else {
                    System.out.println(lexer.traduccion);
                    LisToken += lexer.tipo+" \t\t "+lexer.yytext()+ "\n";
                    resultado += lexer.traduccion + " ";
                    //cont++;    
                //System.out.println("esto es un "+tokens);
                    //LisToken += tokens2.toString() + cont + "\n";
                }
                
            }
        
        System.out.print("\n"+resultado+"\n");
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return resultado;
    }
    
    
    
        public String remplac2(String cadena){
        String cadena_nueva="";
        cadena_nueva=cadena.replaceAll("como son tu", "como estas");
        cadena_nueva=cadena.replaceAll("mio nombre", "mi nombre");
        cadena_nueva=cadena.replaceAll(" punn","\\. " );
        cadena_nueva=cadena.replaceAll(" comm","\\, " );
        cadena_nueva=cadena.replaceAll(" puncom","\\; " );
        cadena_nueva=cadena.replaceAll(" dospum","\\: " );
        cadena_nueva=cadena.replaceAll(" cerrad","\\! " );
        cadena_nueva=cadena.replaceAll(" cerrin","\\? " );
        cadena_nueva=cadena.replaceAll(" abrpar","\\( " );
        cadena_nueva=cadena.replaceAll(" cerrpar","\\) " );
        cadena_nueva=cadena.replaceAll(" abrllac","\\[ " );
        cadena_nueva=cadena.replaceAll(" cerrlac","\\] " );
        
        System.out.print(cadena_nueva);
        return cadena_nueva;
    }
    
    
}
