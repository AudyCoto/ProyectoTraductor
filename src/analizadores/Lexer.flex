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
"It" | "it"| "IT"   {lexeme=yytext();tipo=Pronombre; traduccion=eso; return IT;}
"We" | "we" |"WE" {lexeme=yytext(); tipo=Pronombre;traduccion=nosotros; return WE;}
"They" | "they" |"THEY" {lexeme=yytext();tipo=Pronombre;traduccion=ellos; return THEY;}
"Am" | "am" | "I'm" | "i'm"|"AM"|"I'M" {lexeme=yytext();tipo=Pronombre;traduccion=soy; return AM;}
"Are" | "are" | "ARE" {lexeme=yytext();tipo=Pronombre;traduccion=son; return ARE;}
"Is" | "is" | "IS" {lexeme=yytext(); tipo=Pronombre;traduccion=es; return IS;}
"Us" | "us" | "US"  {lexeme=yytext();tipo=Pronombre;traduccion=nosotros; return US;}
"Them" | "them" | "THEM"  {lexeme=yytext();tipo=Pronombre;traduccion=ellos; return THEM;}
"Me" | "me" | "ME" {lexeme=yytext();tipo=Pronombre;traduccion=mi; return ME;}
"Him" | "him" | "HIM"  {lexeme=yytext();tipo=Pronombre;traduccion=el; return HIM;}
"Myself" | "myself" | "MYSELF"  {lexeme=yytext();tipo=Pronombre;traduccion=mi; return MYSELF;}
"Yourself" | "yourself" | "YOURSELF"  {lexeme=yytext();tipo=Pronombre;traduccion=tu; return YOURSELF;}


                                //SUSTANTIVOS

"Hi" | "hi" | "HI" {lexeme = yytext(); tipo=Sustantivo; traduccion=hola; return HI;}
"Hello" | "hello" | "HELLO" {lexeme = yytext(); tipo=Sustantivo; traduccion=hola; return HELLO;}
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



                                //Adjetivo

"Big" | "big" | "BIG" {lexeme=yytext();tipo=Adjetivo;traduccion=grande; return BIG;}
"Beautiful" | "beautiful" | "BEAUTIFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=hermoso; return BEAUTIFUL;}
"Happy" | "happy" | "HAPPY" {lexeme=yytext();tipo=Adjetivo;traduccion=feliz; return HAPPY;}
"Intelligent" | "intelligent" | "INTELLIGENT" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return INTELLIGENT;}
"Small" | "small" | "SMALL" {lexeme=yytext();tipo=Adjetivo;traduccion=pequeño; return SMALL;}
"Old" | "old" | "OLD" {lexeme=yytext();tipo=Adjetivo;traduccion=viejo; return OLD;}
"Funny" | "funny" | "FUNNY" {lexeme=yytext();tipo=Adjetivo;traduccion=divertido; return FUNNY;}
"Tall" | "tall" | "TALL" {lexeme=yytext();tipo=Adjetivo;traduccion=alto; return TALL;}
"Brave" | "brave" | "BRAVE" {lexeme=yytext();tipo=Adjetivo;traduccion=gruñon; return BRAVE;}
"Red" | "red" | "RED" {lexeme=yytext();tipo=Adjetivo;traduccion=rojo; return RED;}
"Cold" | "cold" | "COLD" {lexeme=yytext();tipo=Adjetivo;traduccion=frio; return COLD;}
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Elegant" | "elegant" | "ELEGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=elegante; return ELEGANT;}
"Name" | "name" | "NAME" {lexeme=yytext();tipo=Adjetivo;traduccion=nombre; return NAME;}



                                //Posesivos (Adjetivos posesivos):

"My" | "my" | "MY" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=mio; return MY ;}
"Your" | "your" "YOUR" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=suyo; return YOUR;}
"His" | "his" | "HIS" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=suyo; return HIS;}
"Her" | "her" | "HER" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=suyo; return HER;}
"Our" | "our" | "OUR" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=nuestro; return OUR;}
"Their" | "their" | "THEIR" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=suyo; return THEIR;}
"Its" | "its" | "ITS" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=es; return ITS;}
"Theirs" | "theirs" | "THEIRS" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=suyo; return THEIRS;}
"Yours" | "yours" | "YOURS" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=tuyo; return YOURS;}
"Mine" | "mine" | "MINE" {lexeme=yytext();tipo=Adj_Posesivos;traduccion=mio; return MINE;}



                                //Demostrativos (Pro_Demostrativos):
"This" | "this" | "THIS" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=este; return THIS;}
"That"| "that" | "THAT" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=eso; return THAT;}
"These" | "these"| "THESE" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=estos; return THESE;}
"Those" | "those"| "THOSE" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=aquellos; return THOSE;}
"Such" | "such" | "SUCH" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=semejante; return SUCH;}
"Same" | "same" |"SAME" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=mismo; return SAME;}
"Other" | "other" | "OTHER" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=otro; return OTHER;}
"Another" | "another"| "ANOTHER" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=otro; return ANOTHER;}
"Different" | "different" "DIFFERENT" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=diferente; return DIFFERENT;}
"Certain" | "certain" | "CERTAIN" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=cierto; return CERTAIN;}
"Various" | "various" | "VARIOUS" {lexeme=yytext();tipo=Pro_demostrativo;traduccion=varios; return VARIOUS;}


                                //adjetivos calificativos

"Amazing" | "amazing" |"AMAZING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=asombroso; return AMAZING;}
"Delicious" | "delicious" |"DELICIOUS" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=delicioso; return DELICIOUS;}
"Exciting" | "exciting" |"EXCITING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=emocionante; return EXCITING;}
"Interesting" | "interesting" | "INTERESTING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=interesante; return INTERESTING;}
"Lovely" | "lovely" | "LOVELY" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=hermoso; return LOVELY;}
"Charming" | "charming" | "CHARMING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=encantadora; return CHARMING;}
"Wonderful" | "wonderful" | "WONDERFUL" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=maravilloso; return WONDERFUL;}
"Excellent" | "excellent" |"EXCELLENT" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=excelente; return EXCELLENT;}
"Fantastic" | "fantastic" | "FANTASTIC" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=fantastico; return FANTASTIC;}
"Incredible" | "incredible" | "INCREDIBLE" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=increible; return INCREDIBLE;}



                        //Indefinido (Adjetivos indefinidos):

"Some" | "some" |  "SOME"  {lexeme=yytext();tipo=Adj_Indefinido;traduccion=alguno; return SOME;}
"Any" | "any"   | "ANY"  {lexeme=yytext();tipo=Adj_Indefinido;traduccion=cualquier; return ANY;}
"Several" | "several" | "SEVERAL"  {lexeme=yytext();tipo=Adj_Indefinido;traduccion=varios; return SEVERAL;}
"Few" | "few" | "FEW"   {lexeme=yytext();tipo=Adj_Indefinido;traduccion=pocos; return FEW;}
"All " | "all"  | "ALL"   {lexeme=yytext();tipo=Adj_Indefinido;traduccion=todo; return ALL;}
"Both" | "both" | "BOTH"  {lexeme=yytext();tipo=Adj_Indefinido;traduccion=ambos; return BOTH;}
"Every" | "every" |"EVERY"  {lexeme=yytext();tipo=Adj_Indefinido;traduccion=cada; return EVERY;}
"Many" | "many" | "MANY"  {lexeme=yytext();tipo=Adj_Indefinido;traduccion=muchos; return MANY;}

                //Interrogativos (Pronombres interrogativos):

"Who" | "who" | "WHO" {lexeme=yytext();tipo= Pro_Interrog;traduccion=quien; return WHO;}
"What" | "what" | "WHAT" {lexeme=yytext();tipo= Pro_Interrog;traduccion=que; return WHAT;}
"Where" | "where" | "WHERE" {lexeme=yytext();tipo= Pro_Interrog;traduccion=donde; return WHERE;}
"When" | "when" | "WHEN" {lexeme=yytext();tipo= Pro_Interrog;traduccion=cuando; return WHEN;}
"Which" | "which" | "WHICH" {lexeme=yytext();tipo= Pro_Interrog;traduccion=cual; return WHICH;}
"Whose" | "whose" | "WHOSE" {lexeme=yytext();tipo= Pro_Interrog;traduccion=dequien; return WHOSE;}
"Whom" | "whom" | "WHOM" {lexeme=yytext();tipo= Pro_Interrog;traduccion=aquien; return WHOM;}
"Why" | "why" | "WHY" {lexeme=yytext();tipo= Pro_Interrog;traduccion=porque; return WHY;}
"How" | "how" | "HOW" {lexeme=yytext();tipo= Pro_Interrog;traduccion=como; return HOW;}



                                //Numeral

"One" | "one" | "ONE" {lexeme=yytext();tipo=Numeral;traduccion=uno; return ONE;}
"Two" | "two" | "TWO" {lexeme=yytext();tipo=Numeral;traduccion=dos; return TWO;}
"Three" | "three" | "THREE" {lexeme=yytext();tipo=Numeral;traduccion=tres; return THREE;}
"Four" | "four" | "FOUR" {lexeme=yytext();tipo=Numeral;traduccion=cuatro; return FOUR;}
"Five" | "five" | "FIVE" {lexeme=yytext();tipo=Numeral;traduccion=cinco; return FIVE;}
"Six" | "six" | "SIX" {lexeme=yytext();tipo=Numeral;traduccion=seis; return SIX;}
"Seven" | "seven" | "SEVEN" {lexeme=yytext();tipo=Numeral;traduccion=siete; return SEVEN;}
"Eight" | "eight" | "EIGHT" {lexeme=yytext();tipo=Numeral;traduccion=ocho; return EIGHT;}
"Nine" | "nine" | "NINE" {lexeme=yytext();tipo=Numeral;traduccion=nueve; return NINE;}
"Ten" | "ten" | "TEN" {lexeme=yytext();tipo=Numeral;traduccion=diez; return TEN;}
"Eleven" | "eleven" | "ELEVEN" {lexeme=yytext();tipo=Numeral;traduccion=once; return ELEVEN;}
"Twelve" | "twelve" | "TWELVE" {lexeme=yytext();tipo=Numeral;traduccion=doce; return TWELVE;}
"Twenty" | "twenty" | "TWENTY" {lexeme=yytext();tipo=Numeral;traduccion=veinte; return TWENTY;}
"Hundred" | "hundred" | "HUNDRED" {lexeme=yytext();tipo=Numeral;traduccion=cien; return HUNDRED;}



                                //Numeros cardinales

"First" | "first" | "FIRST" {lexeme=yytext();tipo= Num_Cardinales;traduccion=primero; return FIRST;}
"Second" | "second" | "SECOND" {lexeme=yytext();tipo= Num_Cardinales;traduccion=segundo; return SECOND;}
"Third" | "third" |"THIRD" {lexeme=yytext();tipo= Num_Cardinales;traduccion=tercero; return THIRD;}
"Fourth" | "fourth" | "FOURTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=cuarto; return FOURTH;}
"Fifth" | "fifth" | "FIFTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=quinto; return FIFTH;}
"Sixth" | "sixth" | "SIXTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=sexto; return SIXTH;}
"Seventh" | "seventh" | "SEVENTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=septimo; return SEVENTH;}
"Eighth" | "eighth" | "EIGHTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=octavo; return EIGHTH;}
"Ninth" | "ninth" | "NINTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=noveno; return NINTH;}
"Tenth" | "tenth" | "TENTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=decimo; return TENTH;}
"Eleventh" | "eleventh" | "ELEVENTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=undecimo; return ELEVENTH;}
"Twelfth" | "twelfth" | "TWELFTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=duodecimo; return TWELFTH;}
"Twentieth" | "twentieth" |"TWENTIETH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=vigesimo; return TWENTIETH;}
"Hundredth" | "hundredth" | "HUNDREDTH" {lexeme=yytext();tipo= Num_Cardinales;traduccion=centesima; return HUNDREDTH;}



//Posesivos (Adjetivos posesivos):


                                //Artículo

"The" | "the" | "THE"  {lexeme=yytext();tipo=Articulo;traduccion=el; return THE;}
"A"| "a" | "A"  {lexeme=yytext();tipo=Articulo;traduccion=un; return A;}
"An" | "an" | "AN" {lexeme=yytext();tipo=Articulo;traduccion=un; return AN;}




Adverbio:
"Quickly"  | "quickly" | "QUICKLY" {lexeme=yytext();tipo=Adverbio;traduccion=rapidamente; return QUICKLY;}
"Here"  | "here" | "HERE" {lexeme=yytext();tipo=Adverbio;traduccion=aqui; return HERE;}
"Much"  | "much" | "MUCH" {lexeme=yytext();tipo=Adverbio;traduccion=mucho; return MUCH;}
"Slowly"  | "slowly" | "SLOWLY" {lexeme=yytext();tipo=Adverbio;traduccion=lento; return SLOWLY;}
"Quietly"  | "quietly" | "QUIETLY" {lexeme=yytext();tipo=Adverbio;traduccion=tranquilamente; return QUIETLY;}
"Happily"  | "happily" | "HAPPILY" {lexeme=yytext();tipo=Adverbio;traduccion=felizmente; return HAPPILY;}
"Easily"  | "easily" | "EASILY" {lexeme=yytext();tipo=Adverbio;traduccion=facilmente; return EASILY;}
"Carefully"  | "carefully" | "CAREFULLY" {lexeme=yytext();tipo=Adverbio;traduccion=cuidadosamente; return CAREFULLY;}
"Loudly"  | "loudly" | "LOUDLY" {lexeme=yytext();tipo=Adverbio;traduccion=fuerte; return LOUDLY;}
"Well"  | "well" | "WELL" {lexeme=yytext();tipo=Adverbio;traduccion=bueno; return WELL;}
"Never"  | "never" | "NEVER" {lexeme=yytext();tipo=Adverbio;traduccion=nunca; return NEVER;}
"Always"  | "always" | "ALWAYS" {lexeme=yytext();tipo=Adverbio;traduccion=siempre; return ALWAYS;}




                                //Signos de Puntuación:


"." {lexeme=yytext();tipo=Puntuacion;traduccion=punn; return nadaa;}
"comii" {lexeme=yytext();tipo=Puntuacion;traduccion=comm; return nadaa;}
"comipun" {lexeme=yytext();tipo=Puntuacion;traduccion=puncom; return nadaa;}
"dosssp" {lexeme=yytext();tipo=Puntuacion;traduccion=dospum; return nadaa;}
"!" {lexeme=yytext();tipo=Puntuacion;traduccion=cerrad; return nadaa;}
"?" {lexeme=yytext();tipo=Puntuacion;traduccion=cerrin; return nadaa;}
"(" {lexeme=yytext();tipo=Puntuacion;traduccion=abrpar; return nadaa;}
")" {lexeme=yytext();tipo=Puntuacion;traduccion=cerrpar; return nadaa;}
"[" {lexeme=yytext();tipo=Puntuacion;traduccion=abrllac; return nadaa;}
"]" {lexeme=yytext();tipo=Puntuacion;traduccion=cerrllac; return nadaa;}












//----ERROR----
{L}({L}|{D})* {lexeme=yytext(); return Error;}
