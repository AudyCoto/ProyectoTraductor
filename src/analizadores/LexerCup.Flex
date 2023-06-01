package analizadores;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{

    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn,value);
        }
    private Symbol symbol(int type){
            return new Symbol(type, yyline, yycolumn);
        }
%}
%%

{espacio} {/*Ignore*/}
/* Error de analisis */
 //. {return new Symbol(sym.ERROR, yychar, yyline, yytext());}

//-------------------------------------------------------

//----PRONOMBRES----

"I" | "i" {return new Symbol(sym.I, yychar, yyline, yytext());}
"You" | "you" {return new Symbol(sym.YOU, yychar, yyline, yytext());}
"He" | "he" {return new Symbol(sym.HE, yychar, yyline, yytext());}
"She" | "she" {return new Symbol(sym.SHE, yychar, yyline, yytext());}
"It" | "it" {return new Symbol(sym.IT, yychar, yyline, yytext());}
"We" | "we" {return new Symbol(sym.WE, yychar, yyline, yytext());}
"They" | "they" {return new Symbol(sym.THEY, yychar, yyline, yytext());}
"Am" | "am" | "I'm" | "i'm" {return new Symbol(sym.AM, yychar, yyline, yytext());}
"Are" | "are" | "ARE" {return new Symbol(sym.ARE, yychar, yyline, yytext());}


                                //SUSTANTIVOS

"Hi" | "hi" | "HI" {return new Symbol(sym.HI, yychar, yyline, yytext());}
"Hello" | "hello" | "HELLO" {return new Symbol(sym.HELLO, yychar, yyline, yytext());}
"Dog" | "dog" | "DOG" {return new Symbol(sym.DOG, yychar, yyline, yytext());}
"Car" | "car" | "CAR" {return new Symbol(sym.CAR, yychar, yyline, yytext());}
"Book" | "book" | "BOOK" {return new Symbol(sym.BOOK, yychar, yyline, yytext());}
"House" | "house" | "HOUSE" {return new Symbol(sym.HOUSE, yychar, yyline, yytext());}
"Cat" | "cat" | "CAT" {return new Symbol(sym.CAT, yychar, yyline, yytext());}
"Chair" | "chair" | "CHAIR" {return new Symbol(sym.CHAIR, yychar, yyline, yytext());}
"Tree" | "tree" | "TREE" {return new Symbol(sym.TREE, yychar, yyline, yytext());}
"Flower" | "flower" | "FLOWER" {return new Symbol(sym.FLOWER, yychar, yyline, yytext());}
"Table" | "table" | "TABLE"  {return new Symbol(sym.TABLE, yychar, yyline, yytext());}
"Pen" | "pen" | "PEN" {return new Symbol(sym.PEN, yychar, yyline, yytext());}
"Computer" | "computer" | "COMPUTER" {return new Symbol(sym.COMPUTER, yychar, yyline, yytext());}
"Phone" | "phone"| "PHONE" {return new Symbol(sym.PHONE, yychar, yyline, yytext());}
"Sun" | "sun"| "SUN" {return new Symbol(sym.SUN, yychar, yyline, yytext());}
"Bookshelf" | "bookshelf" | "BOOKSHELF" {return new Symbol(sym.BOOKSHELF, yychar, yyline, yytext());}



                                //Adjetivo

"Big" | "big" | "BIG" {return new Symbol(sym.BIG, yychar, yyline, yytext());}
"Beautiful" | "beautiful" | "BEAUTIFUL" {return new Symbol(sym.BEAUTIFUL, yychar, yyline, yytext());}
"Happy" | "happy" | "HAPPY" {return new Symbol(sym.HAPPY, yychar, yyline, yytext());}
"Intelligent" | "intelligent" | "INTELLIGENT" {return new Symbol(sym.INTELLIGENT, yychar, yyline, yytext());}
"Small" | "small" | "SMALL" {return new Symbol(sym.SMALL, yychar, yyline, yytext());}
"Old" | "old" | "OLD" {return new Symbol(sym.OLD, yychar, yyline, yytext());}
"Funny" | "funny" | "FUNNY" {return new Symbol(sym.FUNNY, yychar, yyline, yytext());}
"Tall" | "tall" | "TALL" {return new Symbol(sym.TALL, yychar, yyline, yytext());}
"Brave" | "brave" | "BRAVE" {return new Symbol(sym.BRAVE, yychar, yyline, yytext());}
"Red" | "red" | "RED" {return new Symbol(sym.RED, yychar, yyline, yytext());}
"Cold" | "cold" | "COLD" {return new Symbol(sym.COLD, yychar, yyline, yytext());}
"Smart" | "smart" | "SMART" {return new Symbol(sym.SMART, yychar, yyline, yytext());}
"Elegant" | "elegant" | "ELEGANT" {return new Symbol(sym.ELEGANT, yychar, yyline, yytext());}
"Name" | "name" | "NAME" {return new Symbol(sym.NAME, yychar, yyline, yytext());}



                                //Posesivos (Adjetivos posesivos):

"My" | "my" | "MY" {return new Symbol(sym.MY, yychar, yyline, yytext());}
"Your" | "your" "YOUR" {return new Symbol(sym.YOUR, yychar, yyline, yytext());}
"His" | "his" | "HIS" {return new Symbol(sym.HIS, yychar, yyline, yytext());}
"Her" | "her" | "HER" {return new Symbol(sym.HER, yychar, yyline, yytext());}
"Our" | "our" | "OUR" {return new Symbol(sym.OUR, yychar, yyline, yytext());}
"Their" | "their" | "THEIR" {return new Symbol(sym.THEIR, yychar, yyline, yytext());}
"Its" | "its" | "ITS" {return new Symbol(sym.ITS, yychar, yyline, yytext());}
"Theirs" | "theirs" | "THEIRS" {return new Symbol(sym.THEIRS, yychar, yyline, yytext());}
"Yours" | "yours" | "YOURS" {return new Symbol(sym.YOURS, yychar, yyline, yytext());}
"Mine" | "mine" | "MINE" {return new Symbol(sym.MINE, yychar, yyline, yytext());}



                                //Demostrativos (Pro_Demostrativos):
"This" | "this" | "THIS" {return new Symbol(sym.THIS, yychar, yyline, yytext());}
"That"| "that" | "THAT" {return new Symbol(sym.THAT, yychar, yyline, yytext());}
"These" | "these"| "THESE" {return new Symbol(sym.THESE, yychar, yyline, yytext());}
"Those" | "those"| "THOSE" {return new Symbol(sym.THOSE, yychar, yyline, yytext());}
"Such" | "such" | "SUCH" {return new Symbol(sym.SUCH, yychar, yyline, yytext());}
"Same" | "same" |"SAME" {return new Symbol(sym.SAME, yychar, yyline, yytext());}
"Other" | "other" | "OTHER" {return new Symbol(sym.OTHER, yychar, yyline, yytext());}
"Another" | "another"| "ANOTHER" {return new Symbol(sym.ANOTHER, yychar, yyline, yytext());}
"Different" | "different" "DIFFERENT" {return new Symbol(sym.DIFFERENT, yychar, yyline, yytext());}
"Certain" | "certain" | "CERTAIN" {return new Symbol(sym.CERTAIN, yychar, yyline, yytext());}
"Various" | "various" | "VARIOUS" {return new Symbol(sym.VARIOUS, yychar, yyline, yytext());}


                                //adjetivos calificativos

"Amazing" | "amazing" |"AMAZING" {return new Symbol(sym.AMAZING, yychar, yyline, yytext());}
"Delicious" | "delicious" |"DELICIOUS" {return new Symbol(sym.DELICIOUS, yychar, yyline, yytext());}
"Exciting" | "exciting" |"EXCITING" {return new Symbol(sym.EXCITING, yychar, yyline, yytext());}
"Interesting" | "interesting" | "INTERESTING" {return new Symbol(sym.INTERESTING, yychar, yyline, yytext());}
"Lovely" | "lovely" | "LOVELY" {return new Symbol(sym.LOVELY, yychar, yyline, yytext());}
"Charming" | "charming" | "CHARMING" {return new Symbol(sym.CHARMING, yychar, yyline, yytext());}
"Wonderful" | "wonderful" | "WONDERFUL" {return new Symbol(sym.WONDERFUL, yychar, yyline, yytext());}
"Excellent" | "excellent" |"EXCELLENT" {return new Symbol(sym.EXCELLENT, yychar, yyline, yytext());}
"Fantastic" | "fantastic" | "FANTASTIC" {return new Symbol(sym.FANTASTIC, yychar, yyline, yytext());}
"Incredible" | "incredible" | "INCREDIBLE" {return new Symbol(sym.INCREDIBLE, yychar, yyline, yytext());}



                        //Indefinido (Adjetivos indefinidos):

"Some" | "some" |  "SOME" {return new Symbol(sym.SOME, yychar, yyline, yytext());}
"Any" | "any"   | "ANY"  {return new Symbol(sym.ANY, yychar, yyline, yytext());}
"Several" | "several" | "SEVERAL"  {return new Symbol(sym.SEVERAL, yychar, yyline, yytext());}
"Few" | "few" | "FEW"  {return new Symbol(sym.FEW, yychar, yyline, yytext());}
"All " | "all"  | "ALL"   {return new Symbol(sym.ALL, yychar, yyline, yytext());}
"Both" | "both" | "BOTH"  {return new Symbol(sym.BOTH, yychar, yyline, yytext());}
"Every" | "every" |"EVERY"  {return new Symbol(sym.EVERY, yychar, yyline, yytext());}
"Many" | "many" | "MANY" {return new Symbol(sym.MANY, yychar, yyline, yytext());}

                //Interrogativos (Pronombres interrogativos):

"Who" | "who" | "WHO" {return new Symbol(sym.WHO, yychar, yyline, yytext());}
"What" | "what" | "WHAT" {return new Symbol(sym.WHAT, yychar, yyline, yytext());}
"Where" | "where" | "WHERE" {return new Symbol(sym.WHERE, yychar, yyline, yytext());}
"When" | "when" | "WHEN" {return new Symbol(sym.WHEN, yychar, yyline, yytext());}
"Which" | "which" | "WHICH" {return new Symbol(sym.WHICH, yychar, yyline, yytext());}
"Whose" | "whose" | "WHOSE" {return new Symbol(sym.WHOSE, yychar, yyline, yytext());}
"Whom" | "whom" | "WHOM" {return new Symbol(sym.WHOM, yychar, yyline, yytext());}
"Why" | "why" | "WHY" {return new Symbol(sym.WHY, yychar, yyline, yytext());}
"How" | "how" | "HOW" {return new Symbol(sym.HOW, yychar, yyline, yytext());}



                                //Numeral

"One" | "one" | "ONE" {return new Symbol(sym.ONE, yychar, yyline, yytext());}
"Two" | "two" | "TWO" {return new Symbol(sym.TWO, yychar, yyline, yytext());}
"Three" | "three" | "THREE" {return new Symbol(sym.THREE, yychar, yyline, yytext());}
"Four" | "four" | "FOUR" {return new Symbol(sym.FOUR, yychar, yyline, yytext());}
"Five" | "five" | "FIVE" {return new Symbol(sym.FIVE, yychar, yyline, yytext());}
"Six" | "six" | "SIX" {return new Symbol(sym.SIX, yychar, yyline, yytext());}
"Seven" | "seven" | "SEVEN" {return new Symbol(sym.SEVEN, yychar, yyline, yytext());}
"Eight" | "eight" | "EIGHT" {return new Symbol(sym.EIGHT, yychar, yyline, yytext());}
"Nine" | "nine" | "NINE" {return new Symbol(sym.NINE, yychar, yyline, yytext());}
"Ten" | "ten" | "TEN" {return new Symbol(sym.TEN, yychar, yyline, yytext());}
"Eleven" | "eleven" | "ELEVEN" {return new Symbol(sym.ELEVEN, yychar, yyline, yytext());}
"Twelve" | "twelve" | "TWELVE" {return new Symbol(sym.TWELVE, yychar, yyline, yytext());}
"Twenty" | "twenty" | "TWENTY" {return new Symbol(sym.TWENTY, yychar, yyline, yytext());}
"Hundred" | "hundred" | "HUNDRED" {return new Symbol(sym.HUNDRED, yychar, yyline, yytext());}
        


                                //Numeros cardinales

"First" | "first" | "FIRST" {return new Symbol(sym.FIRST, yychar, yyline, yytext());}
"Second" | "second" | "SECOND" {return new Symbol(sym.SECOND, yychar, yyline, yytext());}
"Third" | "third" |"THIRD" {return new Symbol(sym.THIRD, yychar, yyline, yytext());}
"Fourth" | "fourth" | "FOURTH" {return new Symbol(sym.FOURTH, yychar, yyline, yytext());}
"Fifth" | "fifth" | "FIFTH" {return new Symbol(sym.FIFTH, yychar, yyline, yytext());}
"Sixth" | "sixth" | "SIXTH" {return new Symbol(sym.SIXTH, yychar, yyline, yytext());}
"Seventh" | "seventh" | "SEVENTH" {return new Symbol(sym.SEVENTH, yychar, yyline, yytext());}
"Eighth" | "eighth" | "EIGHTH" {return new Symbol(sym.EIGHTH, yychar, yyline, yytext());}
"Ninth" | "ninth" | "NINTH" {return new Symbol(sym.NINTH, yychar, yyline, yytext());}
"Tenth" | "tenth" | "TENTH" {return new Symbol(sym.TENTH, yychar, yyline, yytext());}
"Eleventh" | "eleventh" | "ELEVENTH" {return new Symbol(sym.ELEVENTH, yychar, yyline, yytext());}
"Twelfth" | "twelfth" | "TWELFTH" {return new Symbol(sym.TWELFTH, yychar, yyline, yytext());}
"Twentieth" | "twentieth" |"TWENTIETH" {return new Symbol(sym.TWENTIETH, yychar, yyline, yytext());}
"Hundredth" | "hundredth" | "HUNDREDTH" {return new Symbol(sym.HUNDREDTH, yychar, yyline, yytext());}



//Posesivos (Adjetivos posesivos):


                                //Artículo

"The" | "the" | "THE"  {return new Symbol(sym.THE, yychar, yyline, yytext());}
"A"| "a" | "A"  {return new Symbol(sym.A, yychar, yyline, yytext());}
"An" | "an" | "AN" {return new Symbol(sym.AN, yychar, yyline, yytext());}


Adverbio:
"Quickly"  | "quickly" | "QUICKLY" {return new Symbol(sym.QUICKLY, yychar, yyline, yytext());}
"Here"  | "here" | "HERE" {return new Symbol(sym.HERE, yychar, yyline, yytext());}
"Much"  | "much" | "MUCH" {return new Symbol(sym.MUCH, yychar, yyline, yytext());}
"Slowly"  | "slowly" | "SLOWLY" {return new Symbol(sym.SLOWLY, yychar, yyline, yytext());}
"Quietly"  | "quietly" | "QUIETLY" {return new Symbol(sym.QUIETLY, yychar, yyline, yytext());}
"Happily"  | "happily" | "HAPPILY" {return new Symbol(sym.HAPPILY, yychar, yyline, yytext());}
"Easily"  | "easily" | "EASILY" {return new Symbol(sym.EASILY, yychar, yyline, yytext());}
"Carefully"  | "carefully" | "CAREFULLY" {return new Symbol(sym.CAREFULLY, yychar, yyline, yytext());}
"Loudly"  | "loudly" | "LOUDLY" {return new Symbol(sym.LOUDLY, yychar, yyline, yytext());}
"Well"  | "well" | "WELL" {return new Symbol(sym.WELL, yychar, yyline, yytext());}
"Never"  | "never" | "NEVER" {return new Symbol(sym.NEVER, yychar, yyline, yytext());}
"Always"  | "always" | "ALWAYS" {return new Symbol(sym.ALWAYS, yychar, yyline, yytext());}





                                //Signos de Puntuación:


"." {return new Symbol(sym.punn, yychar, yyline, yytext());}
"comii" {return new Symbol(sym.comm, yychar, yyline, yytext());}
"comipun" {return new Symbol(sym.puncom, yychar, yyline, yytext());}
"dosssp" {return new Symbol(sym.dospum, yychar, yyline, yytext());}
"!" {return new Symbol(sym.cerrad, yychar, yyline, yytext());}
"?" {return new Symbol(sym.cerrin, yychar, yyline, yytext());}
"(" {return new Symbol(sym.abrpar, yychar, yyline, yytext());}
")" {return new Symbol(sym.cerrpar, yychar, yyline, yytext());}
"[" {return new Symbol(sym.abrllac, yychar, yyline, yytext());}
"]" {return new Symbol(sym.cerrllac, yychar, yyline, yytext());}




----ERROR----
{L}({L}|{D})* {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
