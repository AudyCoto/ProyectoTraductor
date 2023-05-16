package traductor.lexer;
import static traductor.lexer.Tokens.*;

%%
%class Lexer
%type Tokens
%line
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+

%{
    public String lexeme;
%}

%%
"\n" {return Linea;}
//PRONOMBRES
"I" | "i" {lexeme=yytext(); return yo;}
"You" | "you" {lexeme=yytext(); return tu;}
"He" | "he" {lexeme=yytext(); return el;}
"She" | "she" {lexeme=yytext(); return ella;}
"It" | "it" {lexeme=yytext(); return ello;}
"We" | "we" {lexeme=yytext(); return nosotros;}
"They" | "they" {lexeme=yytext(); return ellos;}
"Am" | "am" | "I'm" | "i'm" {lexeme=yytext(); return soy;}
"Are" | "are" | "ARE" {lexeme=yytext(); return eres;}
"Is" | "is" | "IS" {lexeme=yytext(); return es;}




//adjetivos
"practical"|"Practical"|"PRACTICAL" {lexeme=yytext(); return practico;}
"proud"|"Proud"|"PROUD" {lexeme=yytext(); return orgulloso;}
"adventurous"|"Adventurous"|"ADVENTUROUS" {lexeme=yytext(); return aventurero;}
"absent"|"Absent"|"ABSENT" {lexeme=yytext(); return ausente;}
"impatient"|"Impatient"|"IMPATIENT" {lexeme=yytext(); return impaciente;}
"generous"|"Generous"|"GENEROUS" {lexeme=yytext(); return generoso;}
"shy"|"Shy"|"SHY" {lexeme=yytext(); return timido;}
"zero"|"Zero"|"ZERO" {lexeme=yytext(); return cero;}
"one"|"One"|"ONE" {lexeme=yytext(); return uno;}
"two"|"Two"|"TWO" {lexeme=yytext(); return dos;}
"three "|"Three "|"THREE " {lexeme=yytext(); return Tres;}
"four "|"Four "|"FOUR " {lexeme=yytext(); return cuatro;}
"five "|"Five "|"FIVE " {lexeme=yytext(); return cinco;}
"six "|"Six "|"SIX " {lexeme=yytext(); return seis;}
"seven "|"Seven "|"SEVEN " {lexeme=yytext(); return Siete;}
"eight "|"Eight "|"EIGHT " {lexeme=yytext(); return ocho;}
"nine "|"Nine "|"NINE " {lexeme=yytext(); return nueve;}
"ten "|"Ten "|"TEN " {lexeme=yytext(); return diez;}
"eleven "|"Eleven "|"ELEVEN " {lexeme=yytext(); return once;}
"twelve "|"Twelve "|"TWELVE " {lexeme=yytext(); return doce;}
"thirteen "|"Thirteen "|"THIRTEEN " {lexeme=yytext(); return trece;}
"fourteen "|"Fourteen "|"FOURTEEN " {lexeme=yytext(); return catorce;}
"fifteen "|"Fifteen "|"FIFTEEN " {lexeme=yytext(); return quince;}
"sixteen "|"Sixteen "|"SIXTEEN " {lexeme=yytext(); return dieciseis;}
"seventeen "|"Seventeen "|"SEVENTEEN " {lexeme=yytext(); return diecisiete;}
"eighteen "|"Eighteen "|"EIGHTEEN " {lexeme=yytext(); return Dieciocho;}
"nineteen "|"Nineteen "|"NINETEEN " {lexeme=yytext(); return diecinueve;}
"thirty "|"Thirty "|"THIRTY " {lexeme=yytext(); return treinta;}
"fourty "|"Fourty "|"FOURTY " {lexeme=yytext(); return Cuarenta;}
"fifty "|"Fifty "|"FIFTY " {lexeme=yytext(); return cincuenta;}
"sixty "|"Sixty "|"SIXTY " {lexeme=yytext(); return sesenta;}
"seventy "|"Seventy "|"SEVENTY " {lexeme=yytext(); return setenta;}
"eighty "|"Eighty "|"EIGHTY " {lexeme=yytext(); return ochenta;}
"ninety "|"Ninety "|"NINETY " {lexeme=yytext(); return noventa;}
"ninetyone"|"Ninetyone"|"NINETYONE" {lexeme=yytext(); return noventayuno;}
"ninetytwo"|"Ninetytwo"|"NINETYTWO" {lexeme=yytext(); return noventaydos;}
"onehundred"|"Onehundred"|"ONEHUNDRED" {lexeme=yytext(); return cien;}
"twohundred"|"Twohundred"|"TWOHUNDRED" {lexeme=yytext(); return doscientos;}
"onethousand"|"Onethousand"|"ONETHOUSAND" {lexeme=yytext(); return mil;}
"tenthousand"|"Tenthousand"|"TENTHOUSAND" {lexeme=yytext(); return diezmil;}
"onemillion"|"Onemillion"|"ONEMILLION" {lexeme=yytext(); return unmillon;}
"first "|"First "|"FIRST " {lexeme=yytext(); return primero;}
"second "|"Second "|"SECOND " {lexeme=yytext(); return segundo;}
"third "|"Third "|"THIRD " {lexeme=yytext(); return tercera;}
"fourth "|"Fourth "|"FOURTH " {lexeme=yytext(); return cuatro;}
"fifth "|"Fifth "|"FIFTH " {lexeme=yytext(); return quinto;}
"sixth "|"Sixth "|"SIXTH " {lexeme=yytext(); return sexto;}
"seventh "|"Seventh "|"SEVENTH" {lexeme=yytext(); return septimo;}
"eighth "|"Eighth "|"EIGHTH " {lexeme=yytext(); return octavo;}
"ninth "|"Ninth "|"NINTH " {lexeme=yytext(); return noveno;}
"tenth "|"Tenth "|"TENTH " {lexeme=yytext(); return decimo;}
"eleventh "|"Eleventh "|"ELEVENTH " {lexeme=yytext(); return undecimo;}
"twelfth "|"Twelfth "|"TWELFTH " {lexeme=yytext(); return duodecimo;}
"thirteenth "|"Thirteenth "|"THIRTEENTH " {lexeme=yytext(); return decimotercero;}
"fourteenth "|"Fourteenth "|"FOURTEENTH " {lexeme=yytext(); return decimocuarto;}
"fifteenth "|"Fifteenth "|"FIFTEENTH " {lexeme=yytext(); return decimoquinto;}
"sixteenth "|"Sixteenth "|"SIXTEENTH " {lexeme=yytext(); return decimosexto;}
"seventeenth "|"Seventeenth "|"SEVENTEENTH " {lexeme=yytext(); return decimoseptimo;}
"eighteenth "|"Eighteenth "|"EIGHTEENTH " {lexeme=yytext(); return decimoctavo;}
"nineteenth "|"Nineteenth "|"NINETEENTH " {lexeme=yytext(); return decimonoveno;}
"twentieth "|"Twentieth "|"TWENTIETH " {lexeme=yytext(); return vigesimo;}
"thirtieth "|"Thirtieth "|"THIRTIETH " {lexeme=yytext(); return trigesimo;}
"fortieth "|"Fortieth "|"FORTIETH " {lexeme=yytext(); return cuadragesimo;}
"fiftieth "|"Fiftieth "|"FIFTIETH " {lexeme=yytext(); return quincuagesimo;}
"sixtieth "|"Sixtieth "|"SIXTIETH " {lexeme=yytext(); return sexagesimo;}
"seventieth "|"Seventieth "|"SEVENTIETH " {lexeme=yytext(); return septuagesimo;}
"eightieth "|"Eightieth "|"EIGHTIETH " {lexeme=yytext(); return dieciocho;}
"ninetieth "|"Ninetieth "|"NINETIETH " {lexeme=yytext(); return nonagesimo;}
"ninetyfirst "|"Ninetyfirst "|"NINETYFIRST " {lexeme=yytext(); return noventa;}
"ninetysecond "|"Ninetysecond "|"NINETYSECOND " {lexeme=yytext(); return ninetisegundo;}
"ninetythird "|"Ninetythird "|"NINETYTHIRD " {lexeme=yytext(); return Noventaalaspajaros;}
"ninetyfourth "|"Ninetyfourth "|"NINETYFOURTH " {lexeme=yytext(); return noventaycuatro;}
"onehundredth "|"Onehundredth "|"ONEHUNDREDTH " {lexeme=yytext(); return cien;}
"onethousandth "|"Onethousandth "|"ONETHOUSANDTH " {lexeme=yytext(); return unamilesima;}
"onemillionth "|"Onemillionth "|"ONEMILLIONTH " {lexeme=yytext(); return onemillonesimo;}
"all"|"All"|"ALL" {lexeme=yytext(); return todos;}
"any"|"Any"|"ANY" {lexeme=yytext(); return ninguna;}
"both"|"Both"|"BOTH" {lexeme=yytext(); return ambascosas;}
"each"|"Each"|"EACH" {lexeme=yytext(); return cada;}
"either"|"Either"|"EITHER" {lexeme=yytext(); return o;}
"enough"|"Enough"|"ENOUGH" {lexeme=yytext(); return suficiente;}
"few"|"Few"|"FEW" {lexeme=yytext(); return pocos;}
"less"|"Less"|"LESS" {lexeme=yytext(); return menos;}
"little"|"Little"|"LITTLE" {lexeme=yytext(); return pequeo;}
"much"|"Much"|"MUCH" {lexeme=yytext(); return mucho;}
"more"|"More"|"MORE" {lexeme=yytext(); return mas;}
"many"|"Many"|"MANY" {lexeme=yytext(); return muchos;}
"one"|"One"|"ONE" {lexeme=yytext(); return uno;}
"other"|"Other"|"OTHER" {lexeme=yytext(); return otro;}
"others"|"Others"|"OTHERS" {lexeme=yytext(); return otros;}
"several"|"Several"|"SEVERAL" {lexeme=yytext(); return varios;}
"some"|"Some"|"SOME" {lexeme=yytext(); return algunos;}
"such"|"Such"|"SUCH" {lexeme=yytext(); return tal;}

{espacio} {/*Ignore*/}

("in"|"In"|"IN") {lexeme=yytext(); return en;}
("on"|"On"|"ON") {lexeme=yytext(); return sobre;}
("about"|"About"|"ABOUT") {lexeme=yytext(); return acercade;}
("around"|"Around"|"AROUND") {lexeme=yytext(); return alrededor;}
("during"|"During"|"DURING") {lexeme=yytext(); return durante;}
("past"|"Past"|"PAST") {lexeme=yytext(); return pasado;}
("since"|"Since"|"SINCE") {lexeme=yytext(); return yaque;}
("to"|"To"|"TO") {lexeme=yytext(); return para;}
("until"|"Until"|"UNTIL") {lexeme=yytext(); return hasta;}
("above"|"Above"|"ABOVE") {lexeme=yytext(); return sobre;}
("after"|"After"|"AFTER") {lexeme=yytext(); return despues;}
("among"|"Among"|"AMONG") {lexeme=yytext(); return entre;}
("before"|"Before"|"BEFORE") {lexeme=yytext(); return antesde;}
("behind"|"Behind"|"BEHIND") {lexeme=yytext(); return detras;}
("below"|"Below"|"BELOW") {lexeme=yytext(); return abajo;}
("beside"|"Beside"|"BESIDE") {lexeme=yytext(); return alladode;}
("between"|"Between"|"BETWEEN") {lexeme=yytext(); return ente;}
("by"|"By"|"BY") {lexeme=yytext(); return por;}
("away from"|"Away from"|"AWAY FROM") {lexeme=yytext(); return lejosde;}
("down"|"Down"|"DOWN") {lexeme=yytext(); return abajo;}
("from"|"From"|"FROM") {lexeme=yytext(); return desde;}
("off"|"Off"|"OFF") {lexeme=yytext(); return apagado;}
("over"|"Over"|"OVER") {lexeme=yytext(); return terminado;}
("out of"|"Out Of"|"OUT OF") {lexeme=yytext(); return fuerade;}
("onto"|"Onto"|"ONTO") {lexeme=yytext(); return sobre;}
("and"|"And"|"AND") {lexeme=yytext(); return y;}
("but"|"But"|"BUT") {lexeme=yytext(); return pero;}
("however"|"However"|"HOWEVER") {lexeme=yytext(); return sinembargo;}
("only"|"Only"|"ONLY") {lexeme=yytext(); return solamente;}
("or"|"Or"|"OR") {lexeme=yytext(); return o;}
("so"|"So"|"SO") {lexeme=yytext(); return asique;}
("then"|"Then"|"THEN") {lexeme=yytext(); return entonces;}
("or else"|"Or else"|"OR ELSE") {lexeme=yytext(); return sino;}
("otherwise"|"Otherwise"|"OTHERWISE") {lexeme=yytext(); return delocontrario;}
("yet"|"Yet"|"YET") {lexeme=yytext(); return aun;}
("althought"|"Althought"|"ALTHOUGHT") {lexeme=yytext(); return aunque;}
("as"|"As"|"AS") {lexeme=yytext(); return como;}
("after"|"After"|"AFTER") {lexeme=yytext(); return despues;}
("if"|"If"|"IF") {lexeme=yytext(); return si;}
("before"|"Before"|"BEFORE") {lexeme=yytext(); return antesde;}
("since"|"Since"|"SINCE") {lexeme=yytext(); return yaque;}
("so many"|"So Many"|"SO MANY") {lexeme=yytext(); return tantos;}
("such"|"Such"|"SUCH") {lexeme=yytext(); return tal;}
("not as"|"Not As"|"NOT AS") {lexeme=yytext(); return nocomo;}
("less  than"|"Less  than"|"LESS  THAN") {lexeme=yytext(); return menosque;}
("so as to"|"So as to"|"SO AS TO") {lexeme=yytext(); return para;}
("in case"|"In case"|"IN CASE") {lexeme=yytext(); return encaso;}
("so"|"So"|"SO") {lexeme=yytext(); return asique;}
("yay"|"Yay!"|"YAY") {lexeme=yytext(); return Hurra;}
("yippee"|"Yippee! "|"YIPPEE") {lexeme=yytext(); return yippee;}
("hooray"|"Hooray! "|"HOORAY") {lexeme=yytext(); return rudon;}
("bingo"|"Bingo!"|"BINGO") {lexeme=yytext(); return bingo;}
("mmm"|"Mmm"|"MMM") {lexeme=yytext(); return mmm;}
("yum"|"Yum"|"YUM") {lexeme=yytext(); return beque;}
("yuck"|"Yuck"|"YUCK") {lexeme=yytext(); return camiseta;}
("ugh"|"Ugh"|"UGH") {lexeme=yytext(); return puaj;}
("uh"|"Uh"|"UH") {lexeme=yytext(); return oh;}
("yep"|"Yep"|"YEP") {lexeme=yytext(); return si;}
("nope"|"Nope"|"NOPE") {lexeme=yytext(); return no;}
("nah"|"Nah"|"NAH") {lexeme=yytext(); return na;}
("ahem"|"Ahem"|"AHEM") {lexeme=yytext(); return ejem;}
("hey"|"Hey"|"HEY") {lexeme=yytext(); return oye;}
("argh"|"Argh! "|"ARGH") {lexeme=yytext(); return argh;}
("darn"|"Darn"|"DARN") {lexeme=yytext(); return maldito;}
("hmm"|"Hmm"|"HMM") {lexeme=yytext(); return mmm;}
("er"|"Er"|"ER") {lexeme=yytext(); return jerga;}
("jeez"|"Jeez"|"JEEZ") {lexeme=yytext(); return brusco;}
("gosh"|"Gosh"|"GOSH") {lexeme=yytext(); return diosmio;}
("wow"|"Wow"|"WOW") {lexeme=yytext(); return guau;}
("boo"|"Boo"|"BOO") {lexeme=yytext(); return abucheo;}
("meh"|"Meh"|"MEH") {lexeme=yytext(); return meh;}
("shh"|"Shh"|"SHH") {lexeme=yytext(); return shh;}
("hi"|"¡hi!"|"HI") {lexeme=yytext(); return hola;}
("hopefully"|"¡hopefully!"|"HOPEFULLY") {lexeme=yytext(); return ojala;}
("bah"|"¡bah!"|"BAH") {lexeme=yytext(); return ba;}
("of the"|"Of the"|"OF THE") {lexeme=yytext(); return elde;}
("to the"|"To the"|"TO THE") {lexeme=yytext(); return hacia;}
{L}({L}|{D})* {lexeme=yytext(); return Error;}
