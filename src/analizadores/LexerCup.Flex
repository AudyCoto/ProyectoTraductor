package traductor.lexer;
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

    private Symbol symbol(int type, Object value){
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
"nineteen"|"Nineteen"|"NINETEEN" {return ("on"|"On"|"ON"){return new Symbol(codigo.sym.sobre, yychar, yyline, yytext());}
("about"|"About"|"ABOUT"){return new Symbol(codigo.sym.acercade, yychar, yyline, yytext());}
("around"|"Around"|"AROUND"){return new Symbol(codigo.sym.alrededor, yychar, yyline, yytext());}
("during"|"During"|"DURING"){return new Symbol(codigo.sym.durante, yychar, yyline, yytext());}
("past"|"Past"|"PAST"){return new Symbol(codigo.sym.pasado, yychar, yyline, yytext());}
("since"|"Since"|"SINCE"){return new Symbol(codigo.sym.yaque, yychar, yyline, yytext());}
("to"|"To"|"TO"){return new Symbol(codigo.sym.para, yychar, yyline, yytext());}
("until"|"Until"|"UNTIL"){return new Symbol(codigo.sym.hasta, yychar, yyline, yytext());}
("above"|"Above"|"ABOVE"){return new Symbol(codigo.sym.sobre, yychar, yyline, yytext());}
("after"|"After"|"AFTER"){return new Symbol(codigo.sym.despues, yychar, yyline, yytext());}
("among"|"Among"|"AMONG"){return new Symbol(codigo.sym.entre, yychar, yyline, yytext());}
("before"|"Before"|"BEFORE"){return new Symbol(codigo.sym.antesde, yychar, yyline, yytext());}
("behind"|"Behind"|"BEHIND"){return new Symbol(codigo.sym.detrás, yychar, yyline, yytext());}
("below"|"Below"|"BELOW"){return new Symbol(codigo.sym.abajo, yychar, yyline, yytext());}
("beside"|"Beside"|"BESIDE"){return new Symbol(codigo.sym.alladode, yychar, yyline, yytext());}
("between"|"Between"|"BETWEEN"){return new Symbol(codigo.sym.ente, yychar, yyline, yytext());}
("by"|"By"|"BY"){return new Symbol(codigo.sym.por, yychar, yyline, yytext());}
("away from"|"Away from"|"AWAY FROM"){return new Symbol(codigo.sym.lejosde, yychar, yyline, yytext());}
("down"|"Down"|"DOWN"){return new Symbol(codigo.sym.abajo, yychar, yyline, yytext());}
("from"|"From"|"FROM"){return new Symbol(codigo.sym.desde, yychar, yyline, yytext());}
("off"|"Off"|"OFF"){return new Symbol(codigo.sym.apagado, yychar, yyline, yytext());}
("over"|"Over"|"OVER"){return new Symbol(codigo.sym.terminado, yychar, yyline, yytext());}
("out of"|"Out Of"|"OUT OF"){return new Symbol(codigo.sym.fuerade, yychar, yyline, yytext());}
("onto"|"Onto"|"ONTO"){return new Symbol(codigo.sym.sobre, yychar, yyline, yytext());}
("and"|"And"|"AND"){return new Symbol(codigo.sym.y, yychar, yyline, yytext());}
("but"|"But"|"BUT"){return new Symbol(codigo.sym.pero, yychar, yyline, yytext());}
("however"|"However"|"HOWEVER"){return new Symbol(codigo.sym.sinembargo, yychar, yyline, yytext());}
("only"|"Only"|"ONLY"){return new Symbol(codigo.sym.solamente, yychar, yyline, yytext());}
("or"|"Or"|"OR"){return new Symbol(codigo.sym.o, yychar, yyline, yytext());}
("so"|"So"|"SO"){return new Symbol(codigo.sym.asique, yychar, yyline, yytext());}
("then"|"Then"|"THEN"){return new Symbol(codigo.sym.entonces, yychar, yyline, yytext());}
("or else"|"Or else"|"OR ELSE"){return new Symbol(codigo.sym.sino, yychar, yyline, yytext());}
("otherwise"|"Otherwise"|"OTHERWISE"){return new Symbol(codigo.sym.delocontrario, yychar, yyline, yytext());}
("yet"|"Yet"|"YET"){return new Symbol(codigo.sym.aun, yychar, yyline, yytext());}
("althought"|"Althought"|"ALTHOUGHT"){return new Symbol(codigo.sym.aunque, yychar, yyline, yytext());}
("as"|"As"|"AS"){return new Symbol(codigo.sym.como, yychar, yyline, yytext());}
("after"|"After"|"AFTER"){return new Symbol(codigo.sym.despues, yychar, yyline, yytext());}
("if"|"If"|"IF"){return new Symbol(codigo.sym.si, yychar, yyline, yytext());}
("before"|"Before"|"BEFORE"){return new Symbol(codigo.sym.antesde, yychar, yyline, yytext());}
("since"|"Since"|"SINCE"){return new Symbol(codigo.sym.yaque, yychar, yyline, yytext());}
("so many"|"So Many"|"SO MANY"){return new Symbol(codigo.sym.tantos, yychar, yyline, yytext());}
("such"|"Such"|"SUCH"){return new Symbol(codigo.sym.tal, yychar, yyline, yytext());}
("not as"|"Not As"|"NOT AS"){return new Symbol(codigo.sym.nocomo, yychar, yyline, yytext());}
("less  than"|"Less  than"|"LESS  THAN"){return new Symbol(codigo.sym.menosque, yychar, yyline, yytext());}
("so as to"|"So as to"|"SO AS TO"){return new Symbol(codigo.sym.para, yychar, yyline, yytext());}
("in case"|"In case"|"IN CASE"){return new Symbol(codigo.sym.encaso, yychar, yyline, yytext());}
("so"|"So"|"SO"){return new Symbol(codigo.sym.asique, yychar, yyline, yytext());}
("yay"|"Yay!"|"YAY"){return new Symbol(codigo.sym.Hurra, yychar, yyline, yytext());}
("yippee"|"Yippee! "|"YIPPEE"){return new Symbol(codigo.sym.yippee, yychar, yyline, yytext());}
("hooray"|"Hooray! "|"HOORAY"){return new Symbol(codigo.sym.rudon, yychar, yyline, yytext());}
("bingo"|"Bingo!"|"BINGO"){return new Symbol(codigo.sym.bingo, yychar, yyline, yytext());}
("mmm"|"Mmm"|"MMM"){return new Symbol(codigo.sym.mmm, yychar, yyline, yytext());}
("yum"|"Yum"|"YUM"){return new Symbol(codigo.sym.beque, yychar, yyline, yytext());}
("yuck"|"Yuck"|"YUCK"){return new Symbol(codigo.sym.camiseta, yychar, yyline, yytext());}
("ugh"|"Ugh"|"UGH"){return new Symbol(codigo.sym.puaj, yychar, yyline, yytext());}
("uh"|"Uh"|"UH"){return new Symbol(codigo.sym.oh, yychar, yyline, yytext());}
("yep"|"Yep"|"YEP"){return new Symbol(codigo.sym.si, yychar, yyline, yytext());}
("nope"|"Nope"|"NOPE"){return new Symbol(codigo.sym.no, yychar, yyline, yytext());}
("nah"|"Nah"|"NAH"){return new Symbol(codigo.sym.na, yychar, yyline, yytext());}
("ahem"|"Ahem"|"AHEM"){return new Symbol(codigo.sym.ejem, yychar, yyline, yytext());}
("hey"|"Hey"|"HEY"){return new Symbol(codigo.sym.oye, yychar, yyline, yytext());}
("argh"|"Argh! "|"ARGH"){return new Symbol(codigo.sym.argh, yychar, yyline, yytext());}
("darn"|"Darn"|"DARN"){return new Symbol(codigo.sym.maldito, yychar, yyline, yytext());}
("hmm"|"Hmm"|"HMM"){return new Symbol(codigo.sym.mmm, yychar, yyline, yytext());}
("er"|"Er"|"ER"){return new Symbol(codigo.sym.jerga, yychar, yyline, yytext());}
("jeez"|"Jeez"|"JEEZ"){return new Symbol(codigo.sym.brusco, yychar, yyline, yytext());}
("gosh"|"Gosh"|"GOSH"){return new Symbol(codigo.sym.diosmio, yychar, yyline, yytext());}
("wow"|"Wow"|"WOW"){return new Symbol(codigo.sym.guau, yychar, yyline, yytext());}
("boo"|"Boo"|"BOO"){return new Symbol(codigo.sym.abucheo, yychar, yyline, yytext());}
("meh"|"Meh"|"MEH"){return new Symbol(codigo.sym.meh, yychar, yyline, yytext());}
("shh"|"Shh"|"SHH"){return new Symbol(codigo.sym.shh, yychar, yyline, yytext());}
("hi"|"¡hi!"|"HI"){return new Symbol(codigo.sym.hola, yychar, yyline, yytext());}
("hopefully"|"¡hopefully!"|"HOPEFULLY"){return new Symbol(codigo.sym.ojala, yychar, yyline, yytext());}
("bah"|"¡bah!"|"BAH"){return new Symbol(codigo.sym.ba, yychar, yyline, yytext());}
("of the"|"Of the"|"OF THE"){return new Symbol(codigo.sym.elde, yychar, yyline, yytext());}
("to the"|"To the"|"TO THE"){return new Symbol(codigo.sym.hacia, yychar, yyline, yytext());}
"thirty"|"Thirty"|"THIRTY" {return new Symbol(codigo.sym.treinta, yychar, yyline, yytext());}}
"fourty"|"Fourty"|"FOURTY" {return new Symbol(codigo.sym.Cuarenta, yychar, yyline, yytext());}
"fifty"|"Fifty"|"FIFTY" {return new Symbol(codigo.sym.cincuenta, yychar, yyline, yytext());}
"sixty"|"Sixty"|"SIXTY" {return new Symbol(codigo.sym.sesenta, yychar, yyline, yytext());}
"seventy"|"Seventy"|"SEVENTY" {return new Symbol(codigo.sym.setenta, yychar, yyline, yytext());}
"eighty"|"Eighty"|"EIGHTY" {return new Symbol(codigo.sym.ochenta, yychar, yyline, yytext());}
"ninety"|"Ninety"|"NINETY" {return new Symbol(codigo.sym.noventa, yychar, yyline, yytext());}
"ninetyone"|"Ninetyone"|"NINETYONE" {return noventayuno;}
"ninetytwo"|"Ninetytwo"|"NINETYTWO" {return noventay new Symbol(sym.dos, yychar, yyline, yytext());}
"onehundred"|"Onehundred"|"ONEHUNDRED" {return new Symbol(codigo.sym.cien, yychar, yyline, yytext());}
"twohundred"|"Twohundred"|"TWOHUNDRED" {return new Symbol(codigo.sym.doscientos, yychar, yyline, yytext());}
"onethousand"|"Onethousand"|"ONETHOUSAND" {return mil;}
"tenthousand"|"Tenthousand"|"TENTHOUSAND" {return diezmil;}
"onemillion"|"Onemillion"|"ONEMILLION" {return unmillon;}
"first"|"First"|"FIRST" {return new Symbol(sym.primero, yychar, yyline, yytext());}
"second"|"Second"|"SECOND" {return new Symbol(sym.segundo, yychar, yyline, yytext());}
"third"|"Third"|"THIRD" {return new Symbol(sym.tercera, yychar, yyline, yytext());
"fourth"|"Fourth"|"FOURTH" {return new Symbol(sym.cuatro, yychar, yyline, yytext());}
"fifth"|"Fifth"|"FIFTH" {return new Symbol(sym.quinto, yychar, yyline, yytext());}
"sixth"|"Sixth"|"SIXTH" {return new Symbol(sym.sexto, yychar, yyline, yytext());}
"seventh"|"Seventh"|"SEVENTH" {return new Symbol(sym.septimo, yychar, yyline, yytext());}
"eighth"|"Eighth"|"EIGHTH" {return new Symbol(sym.octavo, yychar, yyline, yytext());}
"ninth"|"Ninth"|"NINTH" {return new Symbol(sym.noveno, yychar, yyline, yytext());}
"tenth"|"Tenth"|"TENTH" {return new Symbol(sym.decimo, yychar, yyline, yytext());}
"eleventh"|"Eleventh"|"ELEVENTH" {return new Symbol(sym.undecimo, yychar, yyline, yytext());}
"twelfth"|"Twelfth"|"TWELFTH" {return new Symbol(sym.duodecimo, yychar, yyline, yytext());}
"thirteenth"|"Thirteenth"|"THIRTEENTH" {return new Symbol(sym.decimotercero, yychar, yyline, yytext());}
"fourteenth"|"Fourteenth"|"FOURTEENTH" {return new Symbol(sym.decimocuarto, yychar, yyline, yytext());}
"fifteenth"|"Fifteenth"|"FIFTEENTH" {return new Symbol(sym.decimoquinto, yychar, yyline, yytext());}
"sixteenth"|"Sixteenth"|"SIXTEENTH" {return new Symbol(sym.decimosexto, yychar, yyline, yytext());}
"seventeenth"|"Seventeenth"|"SEVENTEENTH" {return new Symbol(sym.decimoseptimo, yychar, yyline, yytext());}
"eighteenth"|"Eighteenth"|"EIGHTEENTH" {return new Symbol(sym.decimoctavo, yychar, yyline, yytext());}
"nineteenth"|"Nineteenth"|"NINETEENTH" {return new Symbol(sym.decimonoveno, yychar, yyline, yytext());}
"twentieth"|"Twentieth"|"TWENTIETH" {return new Symbol(sym.vigesimo, yychar, yyline, yytext());}
"thirtieth"|"Thirtieth"|"THIRTIETH" {return new Symbol(sym.trigesimo, yychar, yyline, yytext());}
"fortieth"|"Fortieth"|"FORTIETH" {return new Symbol(sym.cuadragesimo, yychar, yyline, yytext());}
"fiftieth"|"Fiftieth"|"FIFTIETH" {return quincuagesimo;}
"sixtieth"|"Sixtieth"|"SIXTIETH" {return sexagesimo;}
"seventieth"|"Seventieth"|"SEVENTIETH" {return septuagesimo;}
"eightieth"|"Eightieth"|"EIGHTIETH" {return new Symbol(sym.Diecioch, yychar, yyline, yytext());}
"ninetieth"|"Ninetieth"|"NINETIETH" {return new Symbol(codigo.sym.nonagesimo, yychar, yyline, yytext());}
"ninetyfirst"|"Ninetyfirst"|"NINETYFIRST" {return new Symbol(codigo.sym.noventa, yychar, yyline, yytext());}
"ninetysecond"|"Ninetysecond"|"NINETYSECOND" {return ninetisegundo;}
"ninetythird"|"Ninetythird"|"NINETYTHIRD" {return Noventaalaspajaros;}
"ninetyfourth"|"Ninetyfourth"|"NINETYFOURTH" {return noventay new Symbol(sym.cuatro, yychar, yyline, yytext());}
"onehundredth"|"Onehundredth"|"ONEHUNDREDTH" {return new Symbol(codigo.sym.cien, yychar, yyline, yytext());}}
"onethousandth"|"Onethousandth"|"ONETHOUSANDTH" {return unamilesima;}
"onemillionth"|"Onemillionth"|"ONEMILLIONTH" {return onemillonesimo;}
"all"|"All"|"ALL" {return to new Symbol(sym.to, yychar, yyline, yytext());}
"any"|"Any"|"ANY" {return new Symbol(sym.ninguna, yychar, yyline, yytext());}
"both"|"Both"|"BOTH" {return new Symbol(sym.ambascosas, yychar, yyline, yytext());}
"each"|"Each"|"EACH" {return new Symbol(sym.cada, yychar, yyline, yytext());}
"either"|"Either"|"EITHER" {return new Symbol(sym.o, yychar, yyline, yytext());;}
"enough"|"Enough"|"ENOUGH" {return new Symbol(sym.suficiente, yychar, yyline, yytext());}
"few"|"Few"|"FEW" {return new Symbol(sym.pocos, yychar, yyline, yytext());}
"less"|"Less"|"LESS" {return new Symbol(sym.menos, yychar, yyline, yytext());}
"little"|"Little"|"LITTLE" {return new Symbol(sym.pequeo, yychar, yyline, yytext());}
"much"|"Much"|"MUCH" {return new Symbol(sym.mucho, yychar, yyline, yytext());}
"more"|"More"|"MORE" {return new Symbol(sym.mas, yychar, yyline, yytext());}
"many"|"Many"|"MANY" {return new Symbol(sym.muchos, yychar, yyline, yytext());}
"one"|"One"|"ONE" {return new Symbol(sym.uno, yychar, yyline, yytext());}
"other"|"Other"|"OTHER" {return new Symbol(sym.otro, yychar, yyline, yytext());}
"others"|"Others"|"OTHERS" {return new Symbol(sym.otros, yychar, yyline, yytext());}
"several"|"Several"|"SEVERAL" {return new Symbol(sym.varios, yychar, yyline, yytext());}
"some"|"Some"|"SOME" {return new Symbol(sym.algunos, yychar, yyline, yytext());}
"such"|"Such"|"SUCH" {return new Symbol(sym.tal, yychar, yyline, yytext());}

{espacio} {/*Ignore*/}

("on"|"On"|"ON"){return new Symbol(codigo.sym.sobre, yychar, yyline, yytext()));}
("about"|"About"|"ABOUT"){return new Symbol(codigo.sym.acercade, yychar, yyline, yytext()));}
("around"|"Around"|"AROUND"){return new Symbol(codigo.sym.alrededor, yychar, yyline, yytext()));}
("during"|"During"|"DURING"){return new Symbol(codigo.sym.durante, yychar, yyline, yytext()));}
("past"|"Past"|"PAST"){return new Symbol(codigo.sym.pasado, yychar, yyline, yytext()));}
("since"|"Since"|"SINCE"){return new Symbol(codigo.sym.yaque, yychar, yyline, yytext()));}
("to"|"To"|"TO"){return new Symbol(codigo.sym.para, yychar, yyline, yytext()));}
("until"|"Until"|"UNTIL"){return new Symbol(codigo.sym.hasta, yychar, yyline, yytext()));}
("above"|"Above"|"ABOVE"){return new Symbol(codigo.sym.sobre, yychar, yyline, yytext()));}
("after"|"After"|"AFTER"){return new Symbol(codigo.sym.despues, yychar, yyline, yytext()));}
("among"|"Among"|"AMONG"){return new Symbol(codigo.sym.entre, yychar, yyline, yytext()));}
("before"|"Before"|"BEFORE"){return new Symbol(codigo.sym.antesde, yychar, yyline, yytext()));}
("behind"|"Behind"|"BEHIND"){return new Symbol(codigo.sym.detrás, yychar, yyline, yytext()));}
("below"|"Below"|"BELOW"){return new Symbol(codigo.sym.abajo, yychar, yyline, yytext()));}
("beside"|"Beside"|"BESIDE"){return new Symbol(codigo.sym.alladode, yychar, yyline, yytext()));}
("between"|"Between"|"BETWEEN"){return new Symbol(codigo.sym.ente, yychar, yyline, yytext()));}
("by"|"By"|"BY"){return new Symbol(codigo.sym.por, yychar, yyline, yytext()));}
("away from"|"Away from"|"AWAY FROM"){return new Symbol(codigo.sym.lejosde, yychar, yyline, yytext()));}
("down"|"Down"|"DOWN"){return new Symbol(codigo.sym.abajo, yychar, yyline, yytext()));}
("from"|"From"|"FROM"){return new Symbol(codigo.sym.desde, yychar, yyline, yytext()));}
("off"|"Off"|"OFF"){return new Symbol(codigo.sym.apagado, yychar, yyline, yytext()));}
("over"|"Over"|"OVER"){return new Symbol(codigo.sym.terminado, yychar, yyline, yytext()));}
("out of"|"Out Of"|"OUT OF"){return new Symbol(codigo.sym.fuerade, yychar, yyline, yytext()));}
("onto"|"Onto"|"ONTO"){return new Symbol(codigo.sym.sobre, yychar, yyline, yytext()));}
("and"|"And"|"AND"){return new Symbol(codigo.sym.y, yychar, yyline, yytext()));}
("but"|"But"|"BUT"){return new Symbol(codigo.sym.pero, yychar, yyline, yytext()));}
("however"|"However"|"HOWEVER"){return new Symbol(codigo.sym.sinembargo, yychar, yyline, yytext()));}
("only"|"Only"|"ONLY"){return new Symbol(codigo.sym.solamente, yychar, yyline, yytext()));}
("or"|"Or"|"OR"){return new Symbol(codigo.sym.o, yychar, yyline, yytext()));}
("so"|"So"|"SO"){return new Symbol(codigo.sym.asi que, yychar, yyline, yytext()));}
("then"|"Then"|"THEN"){return new Symbol(codigo.sym.entonces, yychar, yyline, yytext()));}
("or else"|"Or else"|"OR ELSE"){return new Symbol(codigo.sym.sino, yychar, yyline, yytext()));}
("otherwise"|"Otherwise"|"OTHERWISE"){return new Symbol(codigo.sym.delocontrario, yychar, yyline, yytext()));}
("yet"|"Yet"|"YET"){return new Symbol(codigo.sym.aun, yychar, yyline, yytext()));}
("althought"|"Althought"|"ALTHOUGHT"){return new Symbol(codigo.sym.aunque, yychar, yyline, yytext()));}
("as"|"As"|"AS"){return new Symbol(codigo.sym.como, yychar, yyline, yytext()));}
("after"|"After"|"AFTER"){return new Symbol(codigo.sym.despues, yychar, yyline, yytext()));}
("if"|"If"|"IF"){return new Symbol(codigo.sym.si, yychar, yyline, yytext()));}
("before"|"Before"|"BEFORE"){return new Symbol(codigo.sym.antesde, yychar, yyline, yytext()));}
("since"|"Since"|"SINCE"){return new Symbol(codigo.sym.yaque, yychar, yyline, yytext()));}
("so many"|"So Many"|"SO MANY"){return new Symbol(codigo.sym.tantos, yychar, yyline, yytext()));}
("such"|"Such"|"SUCH"){return new Symbol(codigo.sym.tal, yychar, yyline, yytext()));}
("not as"|"Not As"|"NOT AS"){return new Symbol(codigo.sym.nocomo, yychar, yyline, yytext()));}
("less  than"|"Less  than"|"LESS  THAN"){return new Symbol(codigo.sym.menosque, yychar, yyline, yytext()));}
("so as to"|"So as to"|"SO AS TO"){return new Symbol(codigo.sym.para, yychar, yyline, yytext()));}
("in case"|"In case"|"IN CASE"){return new Symbol(codigo.sym.encaso, yychar, yyline, yytext()));}
("so"|"So"|"SO"){return new Symbol(codigo.sym.asique, yychar, yyline, yytext()));}
("yay"|"Yay!"|"YAY"){return new Symbol(codigo.sym.Hurra, yychar, yyline, yytext()));}
("yippee"|"Yippee! "|"YIPPEE"){return new Symbol(codigo.sym.yippee, yychar, yyline, yytext()));}
("hooray"|"Hooray! "|"HOORAY"){return new Symbol(codigo.sym.rudon, yychar, yyline, yytext()));}
("bingo"|"Bingo!"|"BINGO"){return new Symbol(codigo.sym.bingo, yychar, yyline, yytext()));}
("mmm"|"Mmm"|"MMM"){return new Symbol(codigo.sym.mmm, yychar, yyline, yytext()));}
("yum"|"Yum"|"YUM"){return new Symbol(codigo.sym.beque, yychar, yyline, yytext()));}
("yuck"|"Yuck"|"YUCK"){return new Symbol(codigo.sym.camiseta, yychar, yyline, yytext()));}
("ugh"|"Ugh"|"UGH"){return new Symbol(codigo.sym.puaj, yychar, yyline, yytext()));}
("uh"|"Uh"|"UH"){return new Symbol(codigo.sym.oh, yychar, yyline, yytext()));}
("yep"|"Yep"|"YEP"){return new Symbol(codigo.sym.si, yychar, yyline, yytext()));}
("nope"|"Nope"|"NOPE"){return new Symbol(codigo.sym.no, yychar, yyline, yytext()));}
("nah"|"Nah"|"NAH"){return new Symbol(codigo.sym.na, yychar, yyline, yytext()));}
("ahem"|"Ahem"|"AHEM"){return new Symbol(codigo.sym.ejem, yychar, yyline, yytext()));}
("hey"|"Hey"|"HEY"){return new Symbol(codigo.sym.oye, yychar, yyline, yytext()));}
("argh"|"Argh! "|"ARGH"){return new Symbol(codigo.sym.argh, yychar, yyline, yytext()));}
("darn"|"Darn"|"DARN"){return new Symbol(codigo.sym.maldito, yychar, yyline, yytext()));}
("hmm"|"Hmm"|"HMM"){return new Symbol(codigo.sym.mmm, yychar, yyline, yytext()));}
("er"|"Er"|"ER"){return new Symbol(codigo.sym.jerga, yychar, yyline, yytext()));}
("jeez"|"Jeez"|"JEEZ"){return new Symbol(codigo.sym.brusco, yychar, yyline, yytext()));}
("gosh"|"Gosh"|"GOSH"){return new Symbol(codigo.sym.diosmio, yychar, yyline, yytext()));}
("wow"|"Wow"|"WOW"){return new Symbol(codigo.sym.guau, yychar, yyline, yytext()));}
("boo"|"Boo"|"BOO"){return new Symbol(codigo.sym.abucheo, yychar, yyline, yytext()));}
("meh"|"Meh"|"MEH"){return new Symbol(codigo.sym.meh, yychar, yyline, yytext()));}
("shh"|"Shh"|"SHH"){return new Symbol(codigo.sym.shh, yychar, yyline, yytext()));}
("hi"|"¡hi!"|"HI"){return new Symbol(codigo.sym.hola, yychar, yyline, yytext()));}
("hopefully"|"¡hopefully!"|"HOPEFULLY"){return new Symbol(codigo.sym.ojala, yychar, yyline, yytext()));}
("bah"|"¡bah!"|"BAH"){return new Symbol(codigo.sym.ba, yychar, yyline, yytext()));}
("of the"|"Of the"|"OF THE"){return new Symbol(codigo.sym.elde, yychar, yyline, yytext()));}
("to the"|"To the"|"TO THE"){return new Symbol(codigo.sym.hacia, yychar, yyline, yytext()));}
