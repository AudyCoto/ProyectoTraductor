package analizadores;

import static analizadores.Tokens.*;

%%
%class Lexer
%type  Tokens
%line
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+

%{
    public String lexeme;
    public Tokens tipo;
    public Tokens traduccion;
  
%}

%%
"\n" {return Linea;}
{espacio} {/*Ignore*/}

//----PRONOMBRES----
"I" | "i" {lexeme=yytext();tipo=Pronombre;traduccion=yo; return I;}
"You" | "you"|"YOU"  {lexeme=yytext();tipo=Pronombre;traduccion=tu; return YOU;}
"He" | "he" |"HE" {lexeme=yytext();tipo=Pronombre;traduccion=el; return HE;}
"She" | "she"|"SHE"  {lexeme=yytext();tipo=Pronombre;traduccion=ella; return SHE;}
"It" | "it"| "IT" | "That" | "that"| "THAT"  {lexeme=yytext();tipo=Pronombre;traduccion=eso; return IT;}
"We" | "we" |"WE" {lexeme=yytext(); tipo=Pronombre;traduccion=nosotros; return WE;}
"They" | "they" |"THEY" {lexeme=yytext();tipo=Pronombre;traduccion=ellos; return THEY;}
"Am" | "am" | "I'm" | "i'm"|"AM"|"I'M" {lexeme=yytext();tipo=Pronombre;traduccion=soy; return AM;}
"Are" | "are" | "ARE" {lexeme=yytext();tipo=Pronombre;traduccion=son; return ARE;}
"Is" | "is" | "IS" {lexeme=yytext(); tipo=Pronombre;traduccion=es; return IS;}


//SUSTANTIVOS
"Dog" | "dog" | "DOG" {lexeme = yytext(); tipo=Sustantivo; traduccion=perro; return DOG;}
"Car" | "car" | "CAR" {lexeme = yytext(); tipo=Sustantivo; traduccion=carro;return CAR;}
"Book" | "book" | "BOOK" {lexeme = yytext(); tipo=Sustantivo; traduccion= libro;return BOOK;}
"House" | "house" | "HOUSE" {lexeme = yytext(); tipo=Sustantivo; traduccion= casa; return HOUSE;}
"Cat" | "cat" | "CAT" {lexeme = yytext(); tipo=Sustantivo; traduccion= gato; return CAT;}
"Chair" | "chair" | "CHAIR" {lexeme = yytext(); tipo=Sustantivo; traduccion= silla; return CHAIR;}
"Tree" | "tree" | "TREE" {lexeme = yytext(); tipo=Sustantivo; traduccion= árbol; return TREE;}
"Flower" | "flower" | "FLOWER" {lexeme = yytext(); tipo=Sustantivo; traduccion= flor; return FLOWER;}
"Table" | "table" | "TABLE" {lexeme = yytext(); tipo=Sustantivo; traduccion= mesa; return TABLE;}
"Pen" | "pen" | "PEN" {lexeme = yytext(); tipo=Sustantivo; traduccion= bolígrafo; return PEN;}
"Computer" | "computer" | "COMPUTER" {lexeme = yytext(); tipo=Sustantivo; traduccion= computadora; return COMPUTER;}
"Phone" | "phone"| "PHONE" {lexeme = yytext(); tipo=Sustantivo; traduccion= teléfono; return PHONE;}
"Sun" | "sun"| "SUN" {lexeme = yytext(); tipo=Sustantivo; traduccion= sol; return SUN;}
"Bookshelf" | "bookshelf" | "BOOKSHELF" {lexeme = yytext();  tipo=Sustantivo; traduccion= estantería;return BOOKSHELF;}



//Posesivos (Adjetivos posesivos):

//My | "my" {lexeme = yytext(); return MY;}
//Your | "your" {lexeme = yytext(); return YOUR;}
//His | "his" {lexeme = yytext(); return HIS;}
//Her | "her" {lexeme = yytext(); return HER;}
//Our | "our" {lexeme = yytext(); return OUR;}
//Their | "their" {lexeme = yytext(); return THEIR;}
//Its | "its" {lexeme = yytext(); return ITS;}
//Theirs | "theirs" {lexeme = yytext(); return THEIRS;}








//----ERROR----
{L}({L}|{D})* {lexeme=yytext(); return Error;}
