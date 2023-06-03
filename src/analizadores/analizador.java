/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

import Ventana.Principal;
import java_cup.parser;
import analizadores.Lexer;
import java.awt.Color;
import java.awt.Desktop;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringReader;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import java_cup.runtime.Symbol;
import javax.swing.JOptionPane;
/**
 *
 * @author audyc
 */
public class analizador {;
    
        public java_cup.Lexer lexer;
    public Sintax parser;
    
        
    public void graficador(String Entrada){
         try {
            //new parser(new Lexer(new BufferedReader(new StringReader(Entrada)))).parse();
            Sintax s = new Sintax(new LexerCup(new StringReader(Entrada)));
            //parser = new Sintax(new LexerCup(new StringReader(Entrada)));
        } catch (Exception ex) {
            Logger.getLogger(Principal.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            
            Nodo raiz = parser.padre; //VARIABLE raiz DEL TIPO NODO PADRE QUE SE ENCUENTRA EN EL PARSER
             
            String resultado5 = recorrido(raiz);
            System.out.println("Resultados: " + resultado5);
            
           
            graficar(raiz); //LLAMAR AL TRADUCTOR DE GRAPHVIZ
        } catch (Exception e) {
            System.out.println("NO SE HA PODIDO GENERAR EL ARBOL " + e);
        }
        
        //LA IMAGEN ES LLAMADA CON EL VISOR POR DEFECTO DEL SISTEMA
//        try{
//            Desktop.getDesktop().open(new File("src/Salida/arbol.png"));            
//        }catch (IOException e){
//            JOptionPane.showMessageDialog(null, "Error al intentar abrir la imagen " + e);
//        }
        
    }
    
        //TRADUCIR A GRAPHVIZ
        public void graficar(Nodo raiz){
        System.out.println("hola   "+ raiz);
        FileWriter archivo = null;
        PrintWriter pw = null;
        String cadena = recorrido(raiz);
        
        try{
            archivo = new FileWriter("src/salida/arbol.dot");
            pw = new PrintWriter(archivo);
            
            pw.println("digraph G {node[shape=octagon, style=filled, color=blanchedalmond]; edge[color=chocolate3];rankdir=UD \n");
            pw.println(cadena);
            pw.println("\n}");
            archivo.close();
            System.out.println("Arbol Generado con exito");
        }catch (Exception e) {
            System.out.println(e +" 1");
        }
        
        try {
            String dotPath = "c:\\Program Files (x86)\\Graphviz2.38\\bin\\dot.exe"; //RUTA DE GRAPHVIZ
            String cmd = dotPath + " -Tpng src/salida/arbol.dot -o src/salida/arbol.png";
            Runtime.getRuntime().exec(cmd);
        } catch (IOException ioe) {
            System.out.println(ioe +" 2");
        }
        
    }
        
       //RECORRER ARBOL
    public static String recorrido(Nodo raiz){
        String cuerpo="";
        System.out.println(" --aaa-- 2"+ raiz.Etiqueta);
        for (Nodo hijos : raiz.getHijos()) {
            try {
            
            //System.out.println("\"" + raiz.getIdNod() + "." + raiz.getEtiqueta() + "=" + raiz.getValor() + "\"->\"" + hijos.getIdNod() + "." + hijos.getEtiqueta() + "=" + hijos.getValor() + "\"");
            cuerpo += "\"" + raiz.getIdNod() + "." + raiz.getEtiqueta() + "=" + raiz.getValor() + "\"->\"" + hijos.getIdNod() + "." + hijos.getEtiqueta() + "=" + hijos.getValor() + "\"";
            //System.out.println("Cuerpo: " + cuerpo);
            cuerpo += recorrido(hijos);    
            //System.out.println(cuerpo);
            } catch (Exception e) {
                // System.out.println(e);
            }
        }
        return cuerpo;
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

    
    
    
    private  void printTree(Symbol symbol, int indent) {
        
        
//        Lexer lexer = new Lexer(new InputStreamReader(new FileInputStream("input.txt")));
//        Parser parser = new Parser(lexer);

       
        for (int i = 0; i < indent; i++) {
            System.out.print("  ");
        }

        System.out.println(symbol);

        if (symbol.value instanceof Symbol) {
            printTree((Symbol) symbol.value, indent + 1);
        } else if (symbol.value instanceof java.util.ArrayList) {
            for (Symbol child : (java.util.ArrayList<Symbol>) symbol.value) {
                printTree(child, indent + 1);
            }
        }
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
