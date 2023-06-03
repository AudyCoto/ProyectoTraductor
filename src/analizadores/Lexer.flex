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
"Goodbye" | "goodbye" | "GOODBYE" {lexeme = yytext(); tipo=Sustantivo; traduccion=adios; return GOODBYE;}
"Hello" | "hello" | "HELLO" {lexeme = yytext(); tipo=Sustantivo; traduccion=hola; return HELLO;}
"Dog" | "dog" | "DOG" {lexeme = yytext(); tipo=Sustantivo; traduccion=perro; return DOG;}
"Car" | "car" | "CAR" {lexeme = yytext(); tipo=Sustantivo; traduccion=carro;return CAR;}
"Book" | "book" | "BOOK" {lexeme = yytext(); tipo=Sustantivo; traduccion= libro;return BOOK;}
"House" | "house" | "HOUSE" {lexeme = yytext(); tipo=Sustantivo; traduccion= casa; return HOUSE;}
"Cat" | "cat" | "CAT" {lexeme = yytext(); tipo=Sustantivo; traduccion= gato; return CAT;}
"Chair" | "chair" | "CHAIR" {lexeme = yytext(); tipo=Sustantivo; traduccion= silla; return CHAIR;}
"Tree" | "tree" | "TREE" {lexeme = yytext(); tipo=Sustantivo; traduccion= arbol; return TREE;}
"Flower" | "flower" | "FLOWER" {lexeme = yytext(); tipo=Sustantivo; traduccion= flor; return FLOWER;}
"Table" | "table" | "TABLE" {lexeme = yytext(); tipo=Sustantivo; traduccion= mesa; return TABLE;}
"Pen" | "pen" | "PEN" {lexeme = yytext(); tipo=Sustantivo; traduccion= boligrafo; return PEN;}
"Computer" | "computer" | "COMPUTER" {lexeme = yytext(); tipo=Sustantivo; traduccion= computadora; return COMPUTER;}
"Phone" | "phone"| "PHONE" {lexeme = yytext(); tipo=Sustantivo; traduccion= telefono; return PHONE;}
"Sun" | "sun"| "SUN" {lexeme = yytext(); tipo=Sustantivo; traduccion= sol; return SUN;}
"Bookshelf" | "bookshelf" | "BOOKSHELF" {lexeme = yytext();  tipo=Sustantivo; traduccion= estanteria;return BOOKSHELF;}

"Door" | "puerta" | "DOOR" {lexeme=yytext();tipo=Sustantivo;traduccion=puerta; return DOOR;}
"Fish" | "pez" | "FISH" {lexeme=yytext();tipo=Sustantivo;traduccion=pez; return FISH;}
"Moon" | "luna" | "MOON" {lexeme=yytext();tipo=Sustantivo;traduccion=luna; return MOON;}
"River" | "river" | "RIVER" {lexeme=yytext();tipo=Sustantivo;traduccion=rio; return RIVER;}
"Lamp" | "lamp" | "LAMP" {lexeme=yytext();tipo=Sustantivo;traduccion=lampara; return LAMP;}
"Bed" | "bed" | "BED" {lexeme=yytext();tipo=Sustantivo;traduccion=cama; return BED;}
"Shirt" | "shirt" | "SHIRT" {lexeme=yytext();tipo=Sustantivo;traduccion=camisa; return SHIRT;}
"Hat" | "hat" | "HAT" {lexeme=yytext();tipo=Sustantivo;traduccion=sombrero; return HAT;}
"Shoe" | "shoe" | "SHOE" {lexeme=yytext();tipo=Sustantivo;traduccion=zapato; return SHOE;}
"Ball" | "ball" | "BALL" {lexeme=yytext();tipo=Sustantivo;traduccion=pelota; return BALL;}
"Pencil" | "pencil" | "PENCIL" {lexeme=yytext();tipo=Sustantivo;traduccion=lapiz; return PENCIL;}
"Key" | "key" | "KEY" {lexeme=yytext();tipo=Sustantivo;traduccion=llave; return KEY;}
"Wallet" | "wallet" | "WALLET" {lexeme=yytext();tipo=Sustantivo;traduccion=billetera; return WALLET;}
"Clock" | "clock" | "CLOCK" {lexeme=yytext();tipo=Sustantivo;traduccion=reloj; return CLOCK;}
"Television" | "television" | "TELEVISION" {lexeme=yytext();tipo=Sustantivo;traduccion=television; return TELEVISION;}
"Guitar" | "guitar" | "GUITAR" {lexeme=yytext();tipo=Sustantivo;traduccion=guitarra; return GUITAR;}
"Music" | "music" | "MUSIC" {lexeme=yytext();tipo=Sustantivo;traduccion=musica; return MUSIC;}
"Picture" | "picture" | "PICTURE" {lexeme=yytext();tipo=Sustantivo;traduccion=imagen; return PICTURE;}
"Garden" | "garden" | "GARDEN" {lexeme=yytext();tipo=Sustantivo;traduccion=jardin; return GARDEN;}
"Beach" | "beach" | "BEACH" {lexeme=yytext();tipo=Sustantivo;traduccion=playa; return BEACH;}
"Airplane" | "airplane" | "AIRPLANE" {lexeme=yytext();tipo=Sustantivo;traduccion=avion; return AIRPLANE;}
"Train" | "train" | "TRAIN" {lexeme=yytext();tipo=Sustantivo;traduccion=tren; return TRAIN;}
"Salad" | "salad" | "SALAD" {lexeme=yytext(); tipo=Sustantivo; traduccion=ensalada; return SALAD;}
"Pizza" | "pizza" | "PIZZA" {lexeme=yytext(); tipo=Sustantivo; traduccion=pizza; return PIZZA;}
"Ice cream" | "ice cream" | "ICE CREAM" {lexeme=yytext(); tipo=Sustantivo; traduccion=helado; return ICECREAM;}
"Orange" | "orange" | "ORANGE" {lexeme=yytext(); tipo=Sustantivo; traduccion=naranja; return ORANGE;}
"Apple" | "apple" | "APPLE" {lexeme=yytext(); tipo=Sustantivo; traduccion=manzana; return APPLE;}
"Banana" | "banana" | "BANANA" {lexeme=yytext(); tipo=Sustantivo; traduccion=platano; return BANANA;}
"Tomato" | "tomato" | "TOMATO" {lexeme=yytext(); tipo=Sustantivo; traduccion=tomate; return TOMATO;}
"Potato" | "potato" | "POTATO" {lexeme=yytext(); tipo=Sustantivo; traduccion=papa; return POTATO;}
"Chicken" | "chicken" | "CHICKEN" {lexeme=yytext(); tipo=Sustantivo; traduccion=pollo; return CHICKEN;}
"Fish" | "fish" | "FISH" {lexeme=yytext(); tipo=Sustantivo; traduccion=pescado; return FISH;}
"Cow" | "cow" | "COW" {lexeme=yytext(); tipo=Sustantivo; traduccion=vaca; return COW;}
"Horse" | "horse" | "HORSE" {lexeme=yytext(); tipo=Sustantivo; traduccion=caballo; return HORSE;}
"Elephant" | "elephant" | "ELEPHANT" {lexeme=yytext(); tipo=Sustantivo; traduccion=elefante; return ELEPHANT;}
"Tiger" | "tiger" | "TIGER" {lexeme=yytext(); tipo=Sustantivo; traduccion=tigre; return TIGER;}
"Lion" | "lion" | "LION" {lexeme=yytext(); tipo=Sustantivo; traduccion=leon; return LION;}
"Monkey" | "monkey" | "MONKEY" {lexeme=yytext(); tipo=Sustantivo; traduccion=mono; return MONKEY;}
"Giraffe" | "giraffe" | "GIRAFFE" {lexeme=yytext(); tipo=Sustantivo; traduccion=jirafa; return GIRAFFE;}
"Rabbit" | "rabbit" | "RABBIT" {lexeme=yytext(); tipo=Sustantivo; traduccion=conejo; return RABBIT;}
"Snake" | "snake" | "SNAKE" {lexeme=yytext(); tipo=Sustantivo; traduccion=serpiente; return SNAKE;}
"Spider" | "spider" | "SPIDER" {lexeme=yytext(); tipo=Sustantivo; traduccion=araña; return SPIDER;}
"Ant" | "ant" | "ANT" {lexeme=yytext(); tipo=Sustantivo; traduccion=hormiga; return ANT;}
"Elephant" | "elephant" | "ELEPHANT" {lexeme=yytext(); tipo=Sustantivo; traduccion=elefante; return ELEPHANT;}
"Lion" | "lion" | "LION" {lexeme=yytext(); tipo=Sustantivo; traduccion=leon; return LION;}
"Tiger" | "tiger" | "TIGER" {lexeme=yytext(); tipo=Sustantivo; traduccion=tigre; return TIGER;}
"Monkey" | "monkey" | "MONKEY" {lexeme=yytext(); tipo=Sustantivo; traduccion=mono; return MONKEY;}
"Giraffe" | "giraffe" | "GIRAFFE" {lexeme=yytext(); tipo=Sustantivo; traduccion=jirafa; return GIRAFFE;}
"Rabbit" | "rabbit" | "RABBIT" {lexeme=yytext(); tipo=Sustantivo; traduccion=conejo; return RABBIT;}
"Snake" | "snake" | "SNAKE" {lexeme=yytext(); tipo=Sustantivo; traduccion=serpiente; return SNAKE;}
"Bee" | "bee" | "BEE" {lexeme=yytext(); tipo=Sustantivo; traduccion=abeja; return BEE;}
"Butterfly" | "butterfly" | "BUTTERFLY" {lexeme=yytext(); tipo=Sustantivo; traduccion=mariposa; return BUTTERFLY;}
"Spider" | "spider" | "SPIDER" {lexeme=yytext(); tipo=Sustantivo; traduccion=araña; return SPIDER;}
"Ant" | "ant" | "ANT" {lexeme=yytext(); tipo=Sustantivo; traduccion=hormiga; return ANT;}
"Elephant" | "elephant" | "ELEPHANT" {lexeme=yytext(); tipo=Sustantivo; traduccion=elefante; return ELEPHANT;}
"Lion" | "lion" | "LION" {lexeme=yytext(); tipo=Sustantivo; traduccion=leon; return LION;}
"Tiger" | "tiger" | "TIGER" {lexeme=yytext(); tipo=Sustantivo; traduccion=tigre; return TIGER;}
"Monkey" | "monkey" | "MONKEY" {lexeme=yytext(); tipo=Sustantivo; traduccion=mono; return MONKEY;}
"Giraffe" | "giraffe" | "GIRAFFE" {lexeme=yytext(); tipo=Sustantivo; traduccion=jirafa; return GIRAFFE;}
"Rabbit" | "rabbit" | "RABBIT" {lexeme=yytext(); tipo=Sustantivo; traduccion=conejo; return RABBIT;}
"Snake" | "snake" | "SNAKE" {lexeme=yytext(); tipo=Sustantivo; traduccion=serpiente; return SNAKE;}
"Bee" | "bee" | "BEE" {lexeme=yytext(); tipo=Sustantivo; traduccion=abeja; return BEE;}
"Butterfly" | "butterfly" | "BUTTERFLY" {lexeme=yytext(); tipo=Sustantivo; traduccion=mariposa; return BUTTERFLY;}
"Spider" | "spider" | "SPIDER" {lexeme=yytext(); tipo=Sustantivo; traduccion=araña; return SPIDER;}
"Ant" | "ant" | "ANT" {lexeme=yytext(); tipo=Sustantivo; traduccion=hormiga; return ANT;}
"Teacher" | "teacher" | "TEACHER" {lexeme=yytext(); tipo=Sustantivo; traduccion=maestro; return TEACHER;}
"Doctor" | "doctor" | "DOCTOR" {lexeme=yytext(); tipo=Sustantivo; traduccion=doctor; return DOCTOR;}
"Nurse" | "nurse" | "NURSE" {lexeme=yytext(); tipo=Sustantivo; traduccion=enfermera; return NURSE;}
"Pilot" | "pilot" | "PILOT" {lexeme=yytext(); tipo=Sustantivo; traduccion=piloto; return PILOT;}
"Actor" | "actor" | "ACTOR" {lexeme=yytext(); tipo=Sustantivo; traduccion=actor; return ACTOR;}
"Singer" | "singer" | "SINGER" {lexeme=yytext(); tipo=Sustantivo; traduccion=cantante; return SINGER;}
"Artist" | "artist" | "ARTIST" {lexeme=yytext(); tipo=Sustantivo; traduccion=artista; return ARTIST;}
"Scientist" | "scientist" | "SCIENTIST" {lexeme=yytext(); tipo=Sustantivo; traduccion=cientifico; return SCIENTIST;}
"Engineer" | "engineer" | "ENGINEER" {lexeme=yytext(); tipo=Sustantivo; traduccion=ingeniero; return ENGINEER;}
"Lawyer" | "lawyer" | "LAWYER" {lexeme=yytext(); tipo=Sustantivo; traduccion=abogado; return LAWYER;}
"Student" | "student" | "STUDENT" {lexeme=yytext(); tipo=Sustantivo; traduccion=estudiante; return STUDENT;}
"Child" | "child" | "CHILD" {lexeme=yytext(); tipo=Sustantivo; traduccion=niño; return CHILD;}
"Adult" | "adult" | "ADULT" {lexeme=yytext(); tipo=Sustantivo; traduccion=adulto; return ADULT;}
"Parent" | "parent" | "PARENT" {lexeme=yytext(); tipo=Sustantivo; traduccion=padres; return PARENT;}
"Friend" | "friend" | "FRIEND" {lexeme=yytext(); tipo=Sustantivo; traduccion=amigo; return FRIEND;}
"Neighbor" | "neighbor" | "NEIGHBOR" {lexeme=yytext(); tipo=Sustantivo; traduccion=vecino; return NEIGHBOR;}
"Stranger" | "stranger" | "STRANGER" {lexeme=yytext(); tipo=Sustantivo; traduccion=desconocido; return STRANGER;}
"Hero" | "hero" | "HERO" {lexeme=yytext(); tipo=Sustantivo; traduccion=heroe; return HERO;}






                                //Adjetivo

"Big" | "big" | "BIG" {lexeme=yytext();tipo=Adjetivo;traduccion=grande; return BIG;}
"Beautiful" | "beautiful" | "BEAUTIFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=hermoso; return BEAUTIFUL;}
"Happy" | "happy" | "HAPPY" {lexeme=yytext();tipo=Adjetivo;traduccion=feliz; return HAPPY;}
"Intelligent" | "intelligent" | "INTELLIGENT" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return INTELLIGENT;}
"Small" | "small" | "SMALL" {lexeme=yytext();tipo=Adjetivo;traduccion=pequeño; return SMALL;}
"Old" | "old" | "OLD" {lexeme=yytext();tipo=Adjetivo;traduccion=viejo; return OLD;}
"Funny" | "funny" | "FUNNY" {lexeme=yytext();tipo=Adjetivo;traduccion=divertido; return FUNNY;}
"Tall" | "tall" | "TALL" {lexeme=yytext();tipo=Adjetivo;traduccion=alto; return TALL;} 
"Red" | "red" | "RED" {lexeme=yytext();tipo=Adjetivo;traduccion=rojo; return RED;} 
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Elegant" | "elegant" | "ELEGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=elegante; return ELEGANT;}
"Name" | "name" | "NAME" {lexeme=yytext();tipo=Adjetivo;traduccion=nombre; return NAME;}
"Kind" | "kind" | "KIND" {lexeme=yytext();tipo=Adjetivo;traduccion=amable; return KIND;}
"Fun" | "fun" | "FUN" {lexeme=yytext();tipo=Adjetivo;traduccion=divertido; return FUN;}
"Brave" | "brave" | "BRAVE" {lexeme=yytext();tipo=Adjetivo;traduccion=valiente; return BRAVE;}
"Generous" | "generous" | "GENEROUS" {lexeme=yytext();tipo=Adjetivo;traduccion=generoso; return GENEROUS;}
"Creative" | "creative" | "CREATIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=creativo; return CREATIVE;}
"Sincere" | "sincere" | "SINCERE" {lexeme=yytext();tipo=Adjetivo;traduccion=sincero; return SINCERE;}
"Happy" | "happy" | "HAPPY" {lexeme=yytext();tipo=Adjetivo;traduccion=feliz; return HAPPY;}
"Passionate" | "passionate" | "PASSIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=apasionado; return PASSIONATE;}
"Patient" | "patient" | "PATIENT" {lexeme=yytext();tipo=Adjetivo;traduccion=paciente; return PATIENT;}
"Responsible" | "responsible" | "RESPONSIBLE" {lexeme=yytext();tipo=Adjetivo;traduccion=responsable; return RESPONSIBLE;}
"Charming" | "charming" | "CHARMING" {lexeme=yytext();tipo=Adjetivo;traduccion=encantador; return CHARMING;}
"Strong" | "strong" | "STRONG" {lexeme=yytext();tipo=Adjetivo;traduccion=fuerte; return STRONG;} 
"Loyal" | "loyal" | "LOYAL" {lexeme=yytext();tipo=Adjetivo;traduccion=leal; return LOYAL;}
"Witty" | "witty" | "WITTY" {lexeme=yytext();tipo=Adjetivo;traduccion=ocurrente; return WITTY;}
"Affectionate" | "affectionate" | "AFFECTIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=cariñoso; return AFFECTIONATE;}
"Determined" | "determined" | "DETERMINED" {lexeme=yytext();tipo=Adjetivo;traduccion=determinado; return DETERMINED;}
"Fun" | "fun" | "FUN" {lexeme=yytext();tipo=Adjetivo;traduccion=divertido; return FUN;} 
"Generous" | "generous" | "GENEROUS" {lexeme=yytext();tipo=Adjetivo;traduccion=generoso; return GENEROUS;}
"Creative" | "creative" | "CREATIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=creativo; return CREATIVE;}
"Sincere" | "sincere" | "SINCERE" {lexeme=yytext();tipo=Adjetivo;traduccion=sincero; return SINCERE;}
"Passionate" | "passionate" | "PASSIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=apasionado; return PASSIONATE;}
"Patient" | "patient" | "PATIENT" {lexeme=yytext();tipo=Adjetivo;traduccion=paciente; return PATIENT;}
"Responsible" | "responsible" | "RESPONSIBLE" {lexeme=yytext();tipo=Adjetivo;traduccion=responsable; return RESPONSIBLE;} 
"Strong" | "strong" | "STRONG" {lexeme=yytext();tipo=Adjetivo;traduccion=fuerte; return STRONG;} 
"Loyal" | "loyal" | "LOYAL" {lexeme=yytext();tipo=Adjetivo;traduccion=leal; return LOYAL;}
"Witty" | "witty" | "WITTY" {lexeme=yytext();tipo=Adjetivo;traduccion=ocurrente; return WITTY;}
"Affectionate" | "affectionate" | "AFFECTIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=cariñoso; return AFFECTIONATE;}
"Determined" | "determined" | "DETERMINED" {lexeme=yytext();tipo=Adjetivo;traduccion=determinado; return DETERMINED;}
"Elegant" | "elegant" | "ELEGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=elegante; return ELEGANT;} 
"Gentle" | "gentle" | "GENTLE" {lexeme=yytext();tipo=Adjetivo;traduccion=gentil; return GENTLE;}
"Honest" | "honest" | "HONEST" {lexeme=yytext();tipo=Adjetivo;traduccion=honesto; return HONEST;}
"Adventurous" | "adventurous" | "ADVENTUROUS" {lexeme=yytext();tipo=Adjetivo;traduccion=aventurero; return ADVENTUROUS;} 
"Curious" | "curious" | "CURIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=curioso; return CURIOUS;}
"Patient" | "patient" | "PATIENT" {lexeme=yytext();tipo=Adjetivo;traduccion=paciente; return PATIENT;}
"Reliable" | "reliable" | "RELIABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=confiable; return RELIABLE;}
"Shy" | "shy" | "SHY" {lexeme=yytext();tipo=Adjetivo;traduccion=timido; return SHY;}
"Talented" | "talented" | "TALENTED" {lexeme=yytext();tipo=Adjetivo;traduccion=talentoso; return TALENTED;}
"Admirable" | "admirable" | "ADMIRABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=admirable; return ADMIRABLE;}
"Cheerful" | "cheerful" | "CHEERFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=alegre; return CHEERFUL;}
"Clever" | "clever" | "CLEVER" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return CLEVER;}
"Diligent" | "diligent" | "DILIGENT" {lexeme=yytext();tipo=Adjetivo;traduccion=diligente; return DILIGENT;}
"Genuine" | "genuine" | "GENUINE" {lexeme=yytext();tipo=Adjetivo;traduccion=genuino; return GENUINE;}
"Grateful" | "grateful" | "GRATEFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=agradecido; return GRATEFUL;}
"Inventive" | "inventive" | "INVENTIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=inventivo; return INVENTIVE;}
"Joyful" | "joyful" | "JOYFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=alegre; return JOYFUL;}
"Optimistic" | "optimistic" | "OPTIMISTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=optimista; return OPTIMISTIC;}
"Relaxed" | "relaxed" | "RELAXED" {lexeme=yytext();tipo=Adjetivo;traduccion=relajado; return RELAXED;}
"Sensitive" | "sensitive" | "SENSITIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=sensible; return SENSITIVE;}
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Thoughtful" | "thoughtful" | "THOUGHTFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=pensativo; return THOUGHTFUL;}
"Adaptable" | "adaptable" | "ADAPTABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=adaptable; return ADAPTABLE;}
"Compassionate" | "compassionate" | "COMPASSIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=compasivo; return COMPASSIONATE;}
"Determined" | "determined" | "DETERMINED" {lexeme=yytext();tipo=Adjetivo;traduccion=determinado; return DETERMINED;} 
"Genuine" | "genuine" | "GENUINE" {lexeme=yytext();tipo=Adjetivo;traduccion=genuino; return GENUINE;}
"Grateful" | "grateful" | "GRATEFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=agradecido; return GRATEFUL;}
"Inventive" | "inventive" | "INVENTIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=inventivo; return INVENTIVE;}
"Joyful" | "joyful" | "JOYFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=alegre; return JOYFUL;}
"Optimistic" | "optimistic" | "OPTIMISTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=optimista; return OPTIMISTIC;}
"Relaxed" | "relaxed" | "RELAXED" {lexeme=yytext();tipo=Adjetivo;traduccion=relajado; return RELAXED;}
"Sensitive" | "sensitive" | "SENSITIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=sensible; return SENSITIVE;}
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Thoughtful" | "thoughtful" | "THOUGHTFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=pensativo; return THOUGHTFUL;}
"Adaptable" | "adaptable" | "ADAPTABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=adaptable; return ADAPTABLE;}
"Calm" | "calm" | "CALM" {lexeme=yytext();tipo=Adjetivo;traduccion=tranquilo; return CALM;}
"Curious" | "curious" | "CURIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=curioso; return CURIOUS;}
"Dynamic" | "dynamic" | "DYNAMIC" {lexeme=yytext();tipo=Adjetivo;traduccion=dinamico; return DYNAMIC;}
"Elegant" | "elegant" | "ELEGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=elegante; return ELEGANT;}
"Enthusiastic" | "enthusiastic" | "ENTHUSIASTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=entusiasta; return ENTHUSIASTIC;}
"Gracious" | "gracious" | "GRACIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=cortes; return GRACIOUS;}
"Humble" | "humble" | "HUMBLE" {lexeme=yytext();tipo=Adjetivo;traduccion=humilde; return HUMBLE;}
"Innovative" | "innovative" | "INNOVATIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=innovador; return INNOVATIVE;}
"Jovial" | "jovial" | "JOVIAL" {lexeme=yytext();tipo=Adjetivo;traduccion=jovial; return JOVIAL;}
"Modest" | "modest" | "MODEST" {lexeme=yytext();tipo=Adjetivo;traduccion=modesto; return MODEST;}
"Optimistic" | "optimistic" | "OPTIMISTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=optimista; return OPTIMISTIC;}
"Peaceful" | "peaceful" | "PEACEFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=apacible; return PEACEFUL;}
"Sociable" | "sociable" | "SOCIABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=sociable; return SOCIABLE;}
"Talented" | "talented" | "TALENTED" {lexeme=yytext();tipo=Adjetivo;traduccion=talentoso; return TALENTED;}
"Versatile" | "versatile" | "VERSATILE" {lexeme=yytext();tipo=Adjetivo;traduccion=versatil; return VERSATILE;}
"Admirable" | "admirable" | "ADMIRABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=admirable; return ADMIRABLE;}
"Brilliant" | "brilliant" | "BRILLIANT" {lexeme=yytext();tipo=Adjetivo;traduccion=brillante; return BRILLIANT;}
"Compassionate" | "compassionate" | "COMPASSIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=compasivo; return COMPASSIONATE;}
"Diligent" | "diligent" | "DILIGENT" {lexeme=yytext();tipo=Adjetivo;traduccion=diligente; return DILIGENT;}
"Energetic" | "energetic" | "ENERGETIC" {lexeme=yytext();tipo=Adjetivo;traduccion=energetico; return ENERGETIC;} 
"Genuine" | "genuine" | "GENUINE" {lexeme=yytext();tipo=Adjetivo;traduccion=genuino; return GENUINE;}
"Grateful" | "grateful" | "GRATEFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=agradecido; return GRATEFUL;}
"Inventive" | "inventive" | "INVENTIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=inventivo; return INVENTIVE;}
"Joyful" | "joyful" | "JOYFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=alegre; return JOYFUL;}
"Optimistic" | "optimistic" | "OPTIMISTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=optimista; return OPTIMISTIC;}
"Relaxed" | "relaxed" | "RELAXED" {lexeme=yytext();tipo=Adjetivo;traduccion=relajado; return RELAXED;}
"Sensitive" | "sensitive" | "SENSITIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=sensible; return SENSITIVE;}
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Thoughtful" | "thoughtful" | "THOUGHTFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=pensativo; return THOUGHTFUL;}
"Adaptable" | "adaptable" | "ADAPTABLE" {lexeme=yytext();tipo=Adjetivo;traduccion=adaptable; return ADAPTABLE;} 
"Compassionate" | "compassionate" | "COMPASSIONATE" {lexeme=yytext();tipo=Adjetivo;traduccion=compasivo; return COMPASSIONATE;}
"Determined" | "determined" | "DETERMINED" {lexeme=yytext();tipo=Adjetivo;traduccion=determinado; return DETERMINED;} 
"Genuine" | "genuine" | "GENUINE" {lexeme=yytext();tipo=Adjetivo;traduccion=genuino; return GENUINE;}
"Welcome" | "welcome" | "WELCOME" {lexeme=yytext();tipo=Adjetivo;traduccion=bienvenido; return WELCOME;}




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
 

"Small" | "small" | "SMALL" {lexeme=yytext();tipo=Adjetivo;traduccion=pequeño; return SMALL;}
"Tall" | "tall" | "TALL" {lexeme=yytext();tipo=Adjetivo;traduccion=alto; return TALL;}
"Short" | "short" | "SHORT" {lexeme=yytext();tipo=Adjetivo;traduccion=bajo; return SHORT;}
"Happy" | "happy" | "HAPPY" {lexeme=yytext();tipo=Adjetivo;traduccion=feliz; return HAPPY;}
"Sad" | "sad" | "SAD" {lexeme=yytext();tipo=Adjetivo;traduccion=triste; return SAD;}
"Beautiful" | "beautiful" | "BEAUTIFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=hermoso; return BEAUTIFUL;}
"Ugly" | "ugly" | "UGLY" {lexeme=yytext();tipo=Adjetivo;traduccion=feo; return UGLY;}
"Fast" | "fast" | "FAST" {lexeme=yytext();tipo=Adjetivo;traduccion=rapido; return FAST;}
"Slow" | "slow" | "SLOW" {lexeme=yytext();tipo=Adjetivo;traduccion=lento; return SLOW;}
"Strong" | "strong" | "STRONG" {lexeme=yytext();tipo=Adjetivo;traduccion=fuerte; return STRONG;}
"Weak" | "weak" | "WEAK" {lexeme=yytext();tipo=Adjetivo;traduccion=debil; return WEAK;}
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Stupid" | "stupid" | "STUPID" {lexeme=yytext();tipo=Adjetivo;traduccion=estupido; return STUPID;}
"Kind" | "kind" | "KIND" {lexeme=yytext();tipo=Adjetivo;traduccion=amable; return KIND;}
"Bad" | "bad" | "BAD" {lexeme=yytext();tipo=Adjetivo;traduccion=malo; return BAD;}
"Cowardly" | "cowardly" | "COWARDLY" {lexeme=yytext();tipo=Adjetivo;traduccion=cobarde; return COWARDLY;}
"Funny" | "funny" | "FUNNY" {lexeme=yytext();tipo=Adjetivo;traduccion=divertido; return FUNNY;}
"Boring" | "boring" | "BORING" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return BORING;} 
"Dull" | "dull" | "DULL" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return DULL;}
"Energetic" | "energetic" | "ENERGETIC" {lexeme=yytext();tipo=Adjetivo;traduccion=energico; return ENERGETIC;}
"Tired" | "tired" | "TIRED" {lexeme=yytext();tipo=Adjetivo;traduccion=cansado; return TIRED;}
"Loud" | "loud" | "LOUD" {lexeme=yytext();tipo=Adjetivo;traduccion=ruidoso; return LOUD;}
"Quiet" | "quiet" | "QUIET" {lexeme=yytext();tipo=Adjetivo;traduccion=tranquilo; return QUIET;}
"Clean" | "clean" | "CLEAN" {lexeme=yytext();tipo=Adjetivo;traduccion=limpio; return CLEAN;}
"Dirty" | "dirty" | "DIRTY" {lexeme=yytext();tipo=Adjetivo;traduccion=sucio; return DIRTY;}
"Hard" | "hard" | "HARD" {lexeme=yytext();tipo=Adjetivo;traduccion=duro; return HARD;}
"Soft" | "soft" | "SOFT" {lexeme=yytext();tipo=Adjetivo;traduccion=blando; return SOFT;}
"Nice" | "nice" | "NICE" {lexeme=yytext();tipo=Adjetivo;traduccion=agradable; return NICE;}
"Polite" | "polite" | "POLITE" {lexeme=yytext();tipo=Adjetivo;traduccion=educado; return POLITE;}
"Rude" | "rude" | "RUDE" {lexeme=yytext();tipo=Adjetivo;traduccion=descortes; return RUDE;}
"Shiny" | "shiny" | "SHINY" {lexeme=yytext();tipo=Adjetivo;traduccion=brillante; return SHINY;}
"Dull" | "dull" | "DULL" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return DULL;}
"Delicious" | "delicious" | "DELICIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=delicioso; return DELICIOUS;}
"Disgusting" | "disgusting" | "DISGUSTING" {lexeme=yytext();tipo=Adjetivo;traduccion=repugnante; return DISGUSTING;}
"Cute" | "cute" | "CUTE" {lexeme=yytext();tipo=Adjetivo;traduccion=lindo; return CUTE;}
"Ugly" | "ugly" | "UGLY" {lexeme=yytext();tipo=Adjetivo;traduccion=feo; return UGLY;}
"Brilliant" | "brilliant" | "BRILLIANT" {lexeme=yytext();tipo=Adjetivo;traduccion=brillante; return BRILLIANT;}
"Dull" | "dull" | "DULL" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return DULL;}
"Gorgeous" | "gorgeous" | "GORGEOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=hermoso; return GORGEOUS;}
"Ugly" | "ugly" | "UGLY" {lexeme=yytext();tipo=Adjetivo;traduccion=feo; return UGLY;}
"Elegant" | "elegant" | "ELEGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=elegante; return ELEGANT;}
"Clumsy" | "clumsy" | "CLUMSY" {lexeme=yytext();tipo=Adjetivo;traduccion=torpe; return CLUMSY;}
"Wise" | "wise" | "WISE" {lexeme=yytext();tipo=Adjetivo;traduccion=sabio; return WISE;}
"Foolish" | "foolish" | "FOOLISH" {lexeme=yytext();tipo=Adjetivo;traduccion=tonto; return FOOLISH;}
"Honest" | "honest" | "HONEST" {lexeme=yytext();tipo=Adjetivo;traduccion=honesto; return HONEST;}
"Dishonest" | "dishonest" | "DISHONEST" {lexeme=yytext();tipo=Adjetivo;traduccion=deshonesto; return DISHONEST;} 
"Anxious" | "anxious" | "ANXIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=ansioso; return ANXIOUS;}
"Curious" | "curious" | "CURIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=curioso; return CURIOUS;}
"Indifferent" | "indifferent" | "INDIFFERENT" {lexeme=yytext();tipo=Adjetivo;traduccion=indiferente; return INDIFFERENT;}
"Generous" | "generous" | "GENEROUS" {lexeme=yytext();tipo=Adjetivo;traduccion=generoso; return GENEROUS;}
"Selfish" | "selfish" | "SELFISH" {lexeme=yytext();tipo=Adjetivo;traduccion=egoista; return SELFISH;}
"Patient" | "patient" | "PATIENT" {lexeme=yytext();tipo=Adjetivo;traduccion=paciente; return PATIENT;}
"Impatient" | "impatient" | "IMPATIENT" {lexeme=yytext();tipo=Adjetivo;traduccion=impaciente; return IMPATIENT;}
"Confident" | "confident" | "CONFIDENT" {lexeme=yytext();tipo=Adjetivo;traduccion=confiado; return CONFIDENT;}
"Insecure" | "insecure" | "INSECURE" {lexeme=yytext();tipo=Adjetivo;traduccion=inseguro; return INSECURE;}
"Creative" | "creative" | "CREATIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=creativo; return CREATIVE;}
"Boring" | "boring" | "BORING" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return BORING;}
"Adventurous" | "adventurous" | "ADVENTUROUS" {lexeme=yytext();tipo=Adjetivo;traduccion=aventurero; return ADVENTUROUS;}
"Cautious" | "cautious" | "CAUTIOUS" {lexeme=yytext();tipo=Adjetivo;traduccion=cauteloso; return CAUTIOUS;}
"Optimistic" | "optimistic" | "OPTIMISTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=optimista; return OPTIMISTIC;}
"Pessimistic" | "pessimistic" | "PESSIMISTIC" {lexeme=yytext();tipo=Adjetivo;traduccion=pesimista; return PESSIMISTIC;}
"Gentle" | "gentle" | "GENTLE" {lexeme=yytext();tipo=Adjetivo;traduccion=gentil; return GENTLE;}
"Rough" | "rough" | "ROUGH" {lexeme=yytext();tipo=Adjetivo;traduccion=aspero; return ROUGH;}
"Repulsive" | "repulsive" | "REPULSIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=repulsivo; return REPULSIVE;}
"Modest" | "modest" | "MODEST" {lexeme=yytext();tipo=Adjetivo;traduccion=modesto; return MODEST;}
"Arrogant" | "arrogant" | "ARROGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=arrogante; return ARROGANT;}
"Athletic" | "athletic" | "ATHLETIC" {lexeme=yytext();tipo=Adjetivo;traduccion=atletico; return ATHLETIC;}
"Clumsy" | "clumsy" | "CLUMSY" {lexeme=yytext();tipo=Adjetivo;traduccion=torpe; return CLUMSY;}
"Independent" | "independent" | "INDEPENDENT" {lexeme=yytext();tipo=Adjetivo;traduccion=independiente; return INDEPENDENT;}
"Dependent" | "dependent" | "DEPENDENT" {lexeme=yytext();tipo=Adjetivo;traduccion=dependiente; return DEPENDENT;}
"Fierce" | "fierce" | "FIERCE" {lexeme=yytext();tipo=Adjetivo;traduccion=fiero; return FIERCE;}
"Gentle" | "gentle" | "GENTLE" {lexeme=yytext();tipo=Adjetivo;traduccion=gentil; return GENTLE;} 
"Arrogant" | "arrogant" | "ARROGANT" {lexeme=yytext();tipo=Adjetivo;traduccion=arrogante; return ARROGANT;}
"Intelligent" | "intelligent" | "INTELLIGENT" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return INTELLIGENT;}
"Stupid" | "stupid" | "STUPID" {lexeme=yytext();tipo=Adjetivo;traduccion=estupido; return STUPID;}
"Creative" | "creative" | "CREATIVE" {lexeme=yytext();tipo=Adjetivo;traduccion=creativo; return CREATIVE;}
"Boring" | "boring" | "BORING" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return BORING;}
"Caring" | "caring" | "CARING" {lexeme=yytext();tipo=Adjetivo;traduccion=cariñoso; return CARING;}
"Cold" | "cold" | "COLD" {lexeme=yytext();tipo=Adjetivo;traduccion=frio; return COLD;}
"Hot" | "hot" | "HOT" {lexeme=yytext();tipo=Adjetivo;traduccion=caliente; return HOT;}
"Friendly" | "friendly" | "FRIENDLY" {lexeme=yytext();tipo=Adjetivo;traduccion=amigable; return FRIENDLY;}
"Hostile" | "hostile" | "HOSTILE" {lexeme=yytext();tipo=Adjetivo;traduccion=hostil; return HOSTILE;}
"Loyal" | "loyal" | "LOYAL" {lexeme=yytext();tipo=Adjetivo;traduccion=leal; return LOYAL;}
"Unfaithful" | "unfaithful" | "UNFAITHFUL" {lexeme=yytext();tipo=Adjetivo;traduccion=infiel; return UNFAITHFUL;}
"Witty" | "witty" | "WITTY" {lexeme=yytext();tipo=Adjetivo;traduccion=ocurrente; return WITTY;}
"Dull" | "dull" | "DULL" {lexeme=yytext();tipo=Adjetivo;traduccion=aburrido; return DULL;}
"Silly" | "silly" | "SILLY" {lexeme=yytext();tipo=Adjetivo;traduccion=tonto; return SILLY;}
"Smart" | "smart" | "SMART" {lexeme=yytext();tipo=Adjetivo;traduccion=inteligente; return SMART;}
"Stupid" | "stupid" | "STUPID" {lexeme=yytext();tipo=Adjetivo;traduccion=estupido; return STUPID;}
"Tall" | "tall" | "TALL" {lexeme=yytext();tipo=Adjetivo;traduccion=alto; return TALL;}
"Short" | "short" | "SHORT" {lexeme=yytext();tipo=Adjetivo;traduccion=bajo; return SHORT;}
"Strong" | "strong" | "STRONG" {lexeme=yytext();tipo=Adjetivo;traduccion=fuerte; return STRONG;}
"Weak" | "weak" | "WEAK" {lexeme=yytext();tipo=Adjetivo;traduccion=debil; return WEAK;}





                        //Indefinido (Adjetivos indefinidos):

"Amazing" | "amazing" |"AMAZING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=asombroso; return AMAZING;} 
"Exciting" | "exciting" |"EXCITING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=emocionante; return EXCITING;}
"Interesting" | "interesting" | "INTERESTING" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=interesante; return INTERESTING;}
"Lovely" | "lovely" | "LOVELY" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=hermoso; return LOVELY;} 
"Wonderful" | "wonderful" | "WONDERFUL" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=maravilloso; return WONDERFUL;}
"Excellent" | "excellent" |"EXCELLENT" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=excelente; return EXCELLENT;}
"Fantastic" | "fantastic" | "FANTASTIC" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=fantastico; return FANTASTIC;}
"Incredible" | "incredible" | "INCREDIBLE" {lexeme=yytext();tipo=Adj_Calificativo;traduccion=increible; return INCREDIBLE;}
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


//verbo
"Enjoy" | "enjoy" | "ENJOY"  {lexeme=yytext();tipo=Verbo;traduccion=disfrutar; return ENJOY;}



//Adverbio:
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



//CONJUNCION

"And" | "and" | "AND" {lexeme=yytext();tipo=Conjuncion;traduccion=y; return AND;}
"Or" | "or" | "OR" {lexeme=yytext();tipo=Conjuncion;traduccion=o; return OR;}









//----ERROR----
{L}({L}|{D})* {lexeme=yytext(); return Error;}
