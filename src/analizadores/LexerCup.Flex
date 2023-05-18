package analizadores;
import java_cup.runtime.Symbol;

%%
%class LexerCup
%type java_cup.runtime.Symbol
%line
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

//PRONOMBRES
"I" | "i" {return new Symbol(sym.yo, yychar, yyline, yytext());}
"You" | "you" {return new Symbol(sym.tu, yychar, yyline, yytext());}
"He" | "he" {return new Symbol(sym.el, yychar, yyline, yytext());}
"She" | "she" {return new Symbol(sym.ella, yychar, yyline, yytext());}
"It" | "it" {return new Symbol(sym.ello, yychar, yyline, yytext());}
"We" | "we" {return new Symbol(sym.nosotros, yychar, yyline, yytext());}
"They" | "they" {return new Symbol(sym.ellos, yychar, yyline, yytext());}
"Am" | "am" | "I'm" | "i'm" {return new Symbol(sym.soy, yychar, yyline, yytext());}
"Are" | "are" | "ARE" {return new Symbol(sym.eres, yychar, yyline, yytext());}
"Is" | "is" | "IS" {return new Symbol(sym.es, yychar, yyline, yytext());}
//adjetivos
"practical"|"Practical"|"PRACTICAL" {return new Symbol(sym.practico, yychar, yyline, yytext());}
"proud"|"Proud"|"PROUD" {return new Symbol(sym.orgulloso, yychar, yyline, yytext());}
"adventurous"|"Adventurous"|"ADVENTUROUS" {return new Symbol(sym.aventurero, yychar, yyline, yytext());}
"absent"|"Absent"|"ABSENT" {return new Symbol(sym.ausente, yychar, yyline, yytext());}
"impatient"|"Impatient"|"IMPATIENT" {return new Symbol(sym.impaciente, yychar, yyline, yytext());}
"generous"|"Generous"|"GENEROUS" {return new Symbol(sym.generoso, yychar, yyline, yytext());}
"shy"|"Shy"|"SHY" {return new Symbol(sym.timido, yychar, yyline, yytext());}
"zero"|"Zero"|"ZERO" {return new Symbol(sym.cero, yychar, yyline, yytext());}
"one"|"One"|"ONE" {return new Symbol(sym.uno, yychar, yyline, yytext());}
"two"|"Two"|"TWO" {return new Symbol(sym.dos, yychar, yyline, yytext());}
"three"|"Three"|"THREE" {return new Symbol(sym.Tres, yychar, yyline, yytext());}
"four"|"Four"|"FOUR" {return new Symbol(sym.cuatro, yychar, yyline, yytext());}
"five"|"Five"|"FIVE" {return new Symbol(sym.cinco, yychar, yyline, yytext());}
"six"|"Six"|"SIX" {return new Symbol(sym.seis, yychar, yyline, yytext());}
"seven"|"Seven"|"SEVEN" {return new Symbol(sym.Siete, yychar, yyline, yytext());}
"eight"|"Eight"|"EIGHT" {return new Symbol(sym.ocho, yychar, yyline, yytext());}
"nine"|"Nine"|"NINE" {return new Symbol(sym.nueve, yychar, yyline, yytext());}
"ten"|"Ten"|"TEN" {return new Symbol(sym.diez, yychar, yyline, yytext());}
"eleven"|"Eleven"|"ELEVEN" {return new Symbol(sym.once, yychar, yyline, yytext());}
"twelve"|"Twelve"|"TWELVE" {return new Symbol(sym.doce, yychar, yyline, yytext());}
"thirteen"|"Thirteen"|"THIRTEEN" {return new Symbol(sym.trece, yychar, yyline, yytext());}
"fourteen"|"Fourteen"|"FOURTEEN" {return new Symbol(sym.catorce, yychar, yyline, yytext());}
"fifteen"|"Fifteen"|"FIFTEEN" {return new Symbol(sym.quince, yychar, yyline, yytext());}
"sixteen"|"Sixteen"|"SIXTEEN" {return new Symbol(sym.dieciseis, yychar, yyline, yytext());}
"seventeen"|"Seventeen"|"SEVENTEEN" {return new Symbol(sym.diecisiete, yychar, yyline, yytext());}
"eighteen"|"Eighteen"|"EIGHTEEN" {return new Symbol(sym.Dieciocho, yychar, yyline, yytext());}
"nineteen"|"Nineteen"|"NINETEEN" {return new Symbol(sym.diecinueve, yychar, yyline, yytext());}
"among"|"Among"|"AMONG" {return new Symbol(sym.entre, yychar, yyline, yytext());}
"during"|"During"|"DURING" {return new Symbol(sym.durante, yychar, yyline, yytext());}	
"past"|"Past"|"PAST" {return new Symbol(sym.pasado, yychar, yyline, yytext());}
"since"|"Since"|"SINCE" {return new Symbol(sym.yaque, yychar, yyline, yytext());}
"to"|"To"|"TO" {return new Symbol(sym.para, yychar, yyline, yytext());}
"until"|"Until"|"UNTIL" {return new Symbol(sym.hasta, yychar, yyline, yytext());}
"above"|"Above"|"ABOVE" {return new Symbol(sym.sobre, yychar, yyline, yytext());}
"after"|"After"|"AFTER" {return new Symbol(sym.despues, yychar, yyline, yytext());}
"before"|"Before"|"BEFORE" {return new Symbol(sym.antesde, yychar, yyline, yytext());}
"behind"|"Behind"|"BEHIND" {return new Symbol(sym.detras, yychar, yyline, yytext());}
"below"|"Below"|"BELOW" {return new Symbol(sym.abajo, yychar, yyline, yytext());}
"beside"|"Beside"|"BESIDE" {return new Symbol(sym.alladode, yychar, yyline, yytext());}
"between"|"Between"|"BETWEEN" {return new Symbol(sym.ente, yychar, yyline, yytext());}
"around"|"Around"|"AROUND" {return new Symbol(sym.alrededor, yychar, yyline, yytext());}
"by"|"By"|"BY" {return new Symbol(sym.por, yychar, yyline, yytext());}

"away from"|"Away from"|"AWAY FROM" {return new Symbol(sym.lejosde, yychar, yyline, yytext());}
"down"|"Down"|"DOWN" {return new Symbol(sym.abajo, yychar, yyline, yytext());}
"from"|"From"|"FROM" {return new Symbol(sym.desde, yychar, yyline, yytext());}
"off"|"Off"|"OFF" {return new Symbol(sym.apagado, yychar, yyline, yytext());}
"over"|"Over"|"OVER" {return new Symbol(sym.terminado, yychar, yyline, yytext());}
"out of"|"Out Of"|"OUT OF" {return new Symbol(sym.fuerade, yychar, yyline, yytext());}



"onto"|"Onto"|"ONTO" {return new Symbol(sym.sobre, yychar, yyline, yytext());}
"and"|"And"|"AND" {return new Symbol(sym.y, yychar, yyline, yytext());}
"but"|"But"|"BUT" {return new Symbol(sym.pero, yychar, yyline, yytext());}
"however"|"However"|"HOWEVER" {return new Symbol(sym.sinembargo, yychar, yyline, yytext());}
"only"|"Only"|"ONLY" {return new Symbol(sym.solamente, yychar, yyline, yytext());}
"or"|"Or"|"OR" {return new Symbol(sym.o, yychar, yyline, yytext());}
"so"|"So"|"SO" {return new Symbol(sym.asique, yychar, yyline, yytext());}