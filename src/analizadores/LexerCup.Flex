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
"Is" | "is" | "IS" {return new Symbol(sym.IS, yychar, yyline, yytext());}
"Us" | "us" | "US" {return new Symbol(sym.US, yychar, yyline, yytext());}
"Them" | "them" | "THEM" {return new Symbol(sym.THEM, yychar, yyline, yytext());}
"Me" | "me" | "ME" {return new Symbol(sym.ME, yychar, yyline, yytext());}
"Him" | "him" | "HIM" {return new Symbol(sym.HIM, yychar, yyline, yytext());}
"Myself" | "myself" | "MYSELF"  {return new Symbol(sym.MYSELF, yychar, yyline, yytext());}
"Yourself" | "yourself" | "YOURSELF"  {return new Symbol(sym.YOURSELF, yychar, yyline, yytext());}



                                //SUSTANTIVOS

"Hi" | "hi" | "HI" {return new Symbol(sym.HI, yychar, yyline, yytext());}
"Goodbye" | "goodbye" | "GOODBYE" {return new Symbol(sym.GOODBYE, yychar, yyline, yytext());}
"Hello" | "hello" | "HELLO" {return new Symbol(sym.HELLO, yychar, yyline, yytext());}
"Dog" | "dog" | "DOG" {return new Symbol(sym.DOG, yychar, yyline, yytext());}
"Car" | "car" | "CAR" {return new Symbol(sym.CAR, yychar, yyline, yytext());}
"Book" | "book" | "BOOK" {return new Symbol(sym.BOOK, yychar, yyline, yytext());}
"House" | "house" | "HOUSE" {return new Symbol(sym.HOUSE, yychar, yyline, yytext());}
"Cat" | "cat" | "CAT" {return new Symbol(sym.CAT, yychar, yyline, yytext());} 
"Tree" | "tree" | "TREE" {return new Symbol(sym.TREE, yychar, yyline, yytext());}
"Flower" | "flower" | "FLOWER" {return new Symbol(sym.FLOWER, yychar, yyline, yytext());}
"Table" | "table" | "TABLE"  {return new Symbol(sym.TABLE, yychar, yyline, yytext());} 
"Computer" | "computer" | "COMPUTER" {return new Symbol(sym.COMPUTER, yychar, yyline, yytext());}
"Phone" | "phone"| "PHONE" {return new Symbol(sym.PHONE, yychar, yyline, yytext());}
"Sun" | "sun"| "SUN" {return new Symbol(sym.SUN, yychar, yyline, yytext());}
"Bookshelf" | "bookshelf" | "BOOKSHELF" {return new Symbol(sym.BOOKSHELF, yychar, yyline, yytext());}
"Door" | "puerta" | "DOOR" {return new Symbol(sym.DOOR, yychar, yyline, yytext());}
"Fish" | "pez" | "FISH" {return new Symbol(sym.FISH, yychar, yyline, yytext());}
"Moon" | "luna" | "MOON" {return new Symbol(sym.MOON, yychar, yyline, yytext());}
"River" | "río" | "RIVER" {return new Symbol(sym.RIVER, yychar, yyline, yytext());}
"Lamp" | "lamp" | "LAMP" {return new Symbol(sym.LAMP, yychar, yyline, yytext());}
"Bed" | "bed" | "BED" {return new Symbol(sym.BED, yychar, yyline, yytext());}
"Shirt" | "shirt" | "SHIRT" {return new Symbol(sym.SHIRT, yychar, yyline, yytext());}
"Hat" | "hat" | "HAT" {return new Symbol(sym.HAT, yychar, yyline, yytext());}
"Shoe" | "shoe" | "SHOE" {return new Symbol(sym.SHOE, yychar, yyline, yytext());}
"Ball" | "ball" | "BALL" {return new Symbol(sym.BALL, yychar, yyline, yytext());}
"Chair" | "chair" | "CHAIR" {return new Symbol(sym.CHAIR, yychar, yyline, yytext());}
"Pen" | "pen" | "PEN" {return new Symbol(sym.PEN, yychar, yyline, yytext());}
"Pencil" | "pencil" | "PENCIL" {return new Symbol(sym.PENCIL , yychar, yyline, yytext());}
"Key" | "key" | "KEY" {return new Symbol(sym.KEY, yychar, yyline, yytext());}
"Wallet" | "wallet" | "WALLET" {return new Symbol(sym.COMPUTER, yychar, yyline, yytext());}
"Clock" | "clock" | "CLOCK" {return new Symbol(sym.CLOCK, yychar, yyline, yytext());}
"Television" | "television" | "TELEVISION" {return new Symbol(sym.TELEVISION, yychar, yyline, yytext());}
"Guitar" | "guitar" | "GUITAR" {return new Symbol(sym.GUITAR, yychar, yyline, yytext());}
"Music" | "music" | "MUSIC" {return new Symbol(sym.MUSIC, yychar, yyline, yytext());}
"Picture" | "picture" | "PICTURE" {return new Symbol(sym.PICTURE, yychar, yyline, yytext());}
"Garden" | "garden" | "GARDEN" {return new Symbol(sym.GARDEN, yychar, yyline, yytext());}
"Beach" | "beach" | "BEACH" {return new Symbol(sym.BEACH, yychar, yyline, yytext());}
"Airplane" | "airplane" | "AIRPLANE" {return new Symbol(sym.AIRPLANE, yychar, yyline, yytext());}
"Train" | "train" | "TRAIN" {return new Symbol(sym.TRAIN, yychar, yyline, yytext());}
"Salad" | "salad" | "SALAD" {return new Symbol(sym.SALAD, yychar, yyline, yytext());}
"Pizza" | "pizza" | "PIZZA" {return new Symbol(sym.PIZZA, yychar, yyline, yytext());}
"Icecream" | "icecream" | "ICECREAM" {return new Symbol(sym.ICECREAM, yychar, yyline, yytext());}
"Orange" | "orange" | "ORANGE" {return new Symbol(sym.ORANGE, yychar, yyline, yytext());}
"Apple" | "apple" | "APPLE" {return new Symbol(sym.APPLE, yychar, yyline, yytext());}
"Banana" | "banana" | "BANANA" {return new Symbol(sym.BANANA, yychar, yyline, yytext());}
"Tomato" | "tomato" | "TOMATO" {return new Symbol(sym.TOMATO, yychar, yyline, yytext());}
"Potato" | "potato" | "POTATO" {return new Symbol(sym.POTATO, yychar, yyline, yytext());}
"Chicken" | "chicken" | "CHICKEN" {return new Symbol(sym.CHICKEN, yychar, yyline, yytext());}
"Fish" | "fish" | "FISH" {return new Symbol(sym.FISH, yychar, yyline, yytext());}
"Cow" | "cow" | "COW" {return new Symbol(sym.COW, yychar, yyline, yytext());}
"Horse" | "horse" | "HORSE" {return new Symbol(sym.HORSE, yychar, yyline, yytext());}
"Elephant" | "elephant" | "ELEPHANT" {return new Symbol(sym.ELEPHANT, yychar, yyline, yytext());}
"Tiger" | "tiger" | "TIGER" {return new Symbol(sym.TIGER, yychar, yyline, yytext());}
"Lion" | "lion" | "LION" {return new Symbol(sym.LION, yychar, yyline, yytext());}
"Monkey" | "monkey" | "MONKEY" {return new Symbol(sym.MONKEY, yychar, yyline, yytext());}
"Giraffe" | "giraffe" | "GIRAFFE" {return new Symbol(sym.GIRAFFE, yychar, yyline, yytext());}
"Rabbit" | "rabbit" | "RABBIT" {return new Symbol(sym.RABBIT, yychar, yyline, yytext());}
"Snake" | "snake" | "SNAKE" {return new Symbol(sym.SNAKE, yychar, yyline, yytext());}
"Spider" | "spider" | "SPIDER" {return new Symbol(sym.SPIDER, yychar, yyline, yytext());}
"Ant" | "ant" | "ANT" {return new Symbol(sym.ANT, yychar, yyline, yytext());}
"Elephant" | "elephant" | "ELEPHANT" {return new Symbol(sym.ELEPHANT, yychar, yyline, yytext());}
"Lion" | "lion" | "LION" {return new Symbol(sym.LION, yychar, yyline, yytext());}
"Tiger" | "tiger" | "TIGER" {return new Symbol(sym.TIGER, yychar, yyline, yytext());}
"Monkey" | "monkey" | "MONKEY" {return new Symbol(sym.MONKEY, yychar, yyline, yytext());}
"Giraffe" | "giraffe" | "GIRAFFE" {return new Symbol(sym.GIRAFFE, yychar, yyline, yytext());}
"Rabbit" | "rabbit" | "RABBIT" {return new Symbol(sym.RABBIT, yychar, yyline, yytext());}
"Snake" | "snake" | "SNAKE" {return new Symbol(sym.SNAKE, yychar, yyline, yytext());}
"Bee" | "bee" | "BEE" {return new Symbol(sym.BEE, yychar, yyline, yytext());}
"Butterfly" | "butterfly" | "BUTTERFLY" {return new Symbol(sym.BUTTERFLY, yychar, yyline, yytext());}
"Spider" | "spider" | "SPIDER" {return new Symbol(sym.SPIDER, yychar, yyline, yytext());}
"Ant" | "ant" | "ANT" {return new Symbol(sym.ANT, yychar, yyline, yytext());}
"Elephant" | "elephant" | "ELEPHANT" {return new Symbol(sym.COMPUTER, yychar, yyline, yytext());}
"Lion" | "lion" | "LION" {return new Symbol(sym.LION, yychar, yyline, yytext());}
"Tiger" | "tiger" | "TIGER" {return new Symbol(sym.TIGER, yychar, yyline, yytext());}
"Monkey" | "monkey" | "MONKEY" {return new Symbol(sym.MONKEY, yychar, yyline, yytext());}
"Giraffe" | "giraffe" | "GIRAFFE" {return new Symbol(sym.GIRAFFE, yychar, yyline, yytext());}
"Rabbit" | "rabbit" | "RABBIT" {return new Symbol(sym.RABBIT, yychar, yyline, yytext());}
"Snake" | "snake" | "SNAKE" {return new Symbol(sym.SNAKE, yychar, yyline, yytext());}
"Bee" | "bee" | "BEE" {return new Symbol(sym.BEE, yychar, yyline, yytext());}
"Butterfly" | "butterfly" | "BUTTERFLY" {return new Symbol(sym.BUTTERFLY, yychar, yyline, yytext());}
"Spider" | "spider" | "SPIDER" {return new Symbol(sym.SPIDER, yychar, yyline, yytext());}
"Ant" | "ant" | "ANT" {return new Symbol(sym.ANT, yychar, yyline, yytext());}
"Teacher" | "teacher" | "TEACHER" {return new Symbol(sym.TEACHER, yychar, yyline, yytext());}
"Doctor" | "doctor" | "DOCTOR" {return new Symbol(sym.DOCTOR, yychar, yyline, yytext());}
"Nurse" | "nurse" | "NURSE" {return new Symbol(sym.NURSE, yychar, yyline, yytext());}
"Pilot" | "pilot" | "PILOT" {return new Symbol(sym.PILOT, yychar, yyline, yytext());}
"Actor" | "actor" | "ACTOR" {return new Symbol(sym.ACTOR, yychar, yyline, yytext());}
"Singer" | "singer" | "SINGER" {return new Symbol(sym.SINGER, yychar, yyline, yytext());}
"Artist" | "artist" | "ARTIST" {return new Symbol(sym.ARTIST, yychar, yyline, yytext());}
"Scientist" | "scientist" | "SCIENTIST" {return new Symbol(sym.SCIENTIST, yychar, yyline, yytext());}
"Engineer" | "engineer" | "ENGINEER" {return new Symbol(sym.ENGINEER, yychar, yyline, yytext());}
"Lawyer" | "lawyer" | "LAWYER" {return new Symbol(sym.LAWYER, yychar, yyline, yytext());}
"Student" | "student" | "STUDENT" {return new Symbol(sym.STUDENT, yychar, yyline, yytext());}
"Child" | "child" | "CHILD" {return new Symbol(sym.CHILD, yychar, yyline, yytext());}
"Adult" | "adult" | "ADULT" {return new Symbol(sym.ADULT, yychar, yyline, yytext());}
"Parent" | "parent" | "PARENT" {return new Symbol(sym.PARENT, yychar, yyline, yytext());}
"Friend" | "friend" | "FRIEND" {return new Symbol(sym.FRIEND, yychar, yyline, yytext());}
"Neighbor" | "neighbor" | "NEIGHBOR" {return new Symbol(sym.NEIGHBOR, yychar, yyline, yytext());}
"Stranger" | "stranger" | "STRANGER" {return new Symbol(sym.STRANGER, yychar, yyline, yytext());}
"Hero" | "hero" | "HERO" {return new Symbol(sym.HERO, yychar, yyline, yytext());}





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
"Kind" | "kind" | "KIND" {return new Symbol(sym.KIND, yychar, yyline, yytext());}
"Fun" | "fun" | "FUN" {return new Symbol(sym.FUN, yychar, yyline, yytext());}
"Generous" | "generous" | "GENEROUS" {return new Symbol(sym.GENEROUS, yychar, yyline, yytext());}
"Creative" | "creative" | "CREATIVE" {return new Symbol(sym.CREATIVE, yychar, yyline, yytext());}
"Sincere" | "sincere" | "SINCERE" {return new Symbol(sym.SINCERE, yychar, yyline, yytext());}
"Passionate" | "passionate" | "PASSIONATE" {return new Symbol(sym.PASSIONATE, yychar, yyline, yytext());}
"Patient" | "patient" | "PATIENT" {return new Symbol(sym.PATIENT, yychar, yyline, yytext());}
"Responsible" | "responsible" | "RESPONSIBLE" {return new Symbol(sym.RESPONSIBLE, yychar, yyline, yytext());}
"Welcome" | "welcome" | "WELCOME" {return new Symbol(sym.WELCOME, yychar, yyline, yytext());}


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
"Wonderful" | "wonderful" | "WONDERFUL" {return new Symbol(sym.WONDERFUL, yychar, yyline, yytext());}
"Excellent" | "excellent" |"EXCELLENT" {return new Symbol(sym.EXCELLENT, yychar, yyline, yytext());}
"Fantastic" | "fantastic" | "FANTASTIC" {return new Symbol(sym.FANTASTIC, yychar, yyline, yytext());}
"Incredible" | "incredible" | "INCREDIBLE" {return new Symbol(sym.INCREDIBLE, yychar, yyline, yytext());}
"Small" | "small" | "SMALL" {return new Symbol(sym.SMALL, yychar, yyline, yytext());}
"Tall" | "tall" | "TALL" {return new Symbol(sym.TALL, yychar, yyline, yytext());}
"Short" | "short" | "SHORT" {return new Symbol(sym.SHORT, yychar, yyline, yytext());}
"Happy" | "happy" | "HAPPY" {return new Symbol(sym.HAPPY, yychar, yyline, yytext());}
"Sad" | "sad" | "SAD" {return new Symbol(sym.SAD, yychar, yyline, yytext());}
"Beautiful" | "beautiful" | "BEAUTIFUL" {return new Symbol(sym.BEAUTIFUL, yychar, yyline, yytext());}
"Ugly" | "ugly" | "UGLY" {return new Symbol(sym.UGLY, yychar, yyline, yytext());}
"Fast" | "fast" | "FAST" {return new Symbol(sym.FAST, yychar, yyline, yytext());}
"Slow" | "slow" | "SLOW" {return new Symbol(sym.SLOW, yychar, yyline, yytext());}
"Strong" | "strong" | "STRONG" {return new Symbol(sym.STRONG, yychar, yyline, yytext());}
"Weak" | "weak" | "WEAK" {return new Symbol(sym.WEAK, yychar, yyline, yytext());}
"Smart" | "smart" | "SMART" {return new Symbol(sym.SMART, yychar, yyline, yytext());}
"Stupid" | "stupid" | "STUPID" {return new Symbol(sym.STUPID, yychar, yyline, yytext());}
"Kind" | "kind" | "KIND" {return new Symbol(sym.KIND, yychar, yyline, yytext());}
"Bad" | "bad" | "BAD" {return new Symbol(sym.BAD, yychar, yyline, yytext());}
"Brave" | "brave" | "BRAVE" {return new Symbol(sym.BRAVE, yychar, yyline, yytext());}
"Cowardly" | "cowardly" | "COWARDLY" {return new Symbol(sym.COWARDLY, yychar, yyline, yytext());}
"Funny" | "funny" | "FUNNY" {return new Symbol(sym.FUNNY, yychar, yyline, yytext());}
"Boring" | "boring" | "BORING" {return new Symbol(sym.BORING, yychar, yyline, yytext());}
"Clever" | "clever" | "CLEVER" {return new Symbol(sym.CLEVER, yychar, yyline, yytext());}
"Energetic" | "energetic" | "ENERGETIC" {return new Symbol(sym.ENERGETIC, yychar, yyline, yytext());}
"Tired" | "tired" | "TIRED" {return new Symbol(sym.TIRED, yychar, yyline, yytext());}
"Loud" | "loud" | "LOUD" {return new Symbol(sym.LOUD, yychar, yyline, yytext());}
"Quiet" | "quiet" | "QUIET" {return new Symbol(sym.QUIET, yychar, yyline, yytext());}
"Clean" | "clean" | "CLEAN" {return new Symbol(sym.CLEAN, yychar, yyline, yytext());}
"Dirty" | "dirty" | "DIRTY" {return new Symbol(sym.DIRTY, yychar, yyline, yytext());}
"Hard" | "hard" | "HARD" {return new Symbol(sym.HARD, yychar, yyline, yytext());}
"Soft" | "soft" | "SOFT" {return new Symbol(sym.SOFT, yychar, yyline, yytext());}
"Nice" | "nice" | "NICE" {return new Symbol(sym.NICE, yychar, yyline, yytext());}
"Polite" | "polite" | "POLITE" {return new Symbol(sym.POLITE, yychar, yyline, yytext());}
"Rude" | "rude" | "RUDE" {return new Symbol(sym.RUDE, yychar, yyline, yytext());}
"Shiny" | "shiny" | "SHINY" {return new Symbol(sym.SHINY, yychar, yyline, yytext());}
"Dull" | "dull" | "DULL" {return new Symbol(sym.DULL, yychar, yyline, yytext());}
"Delicious" | "delicious" | "DELICIOUS" {return new Symbol(sym.DELICIOUS, yychar, yyline, yytext());}
"Disgusting" | "disgusting" | "DISGUSTING" {return new Symbol(sym.DISGUSTING, yychar, yyline, yytext());}
"Cute" | "cute" | "CUTE" {return new Symbol(sym.CUTE, yychar, yyline, yytext());} 
"Brilliant" | "brilliant" | "BRILLIANT" {return new Symbol(sym.BRILLIANT, yychar, yyline, yytext());}
"Dull" | "dull" | "DULL" {return new Symbol(sym.DULL, yychar, yyline, yytext());}
"Gorgeous" | "gorgeous" | "GORGEOUS" {return new Symbol(sym.GORGEOUS, yychar, yyline, yytext());} 
"Elegant" | "elegant" | "ELEGANT" {return new Symbol(sym.ELEGANT, yychar, yyline, yytext());}
"Clumsy" | "clumsy" | "CLUMSY" {return new Symbol(sym.CLUMSY, yychar, yyline, yytext());}
"Wise" | "wise" | "WISE" {return new Symbol(sym.WISE, yychar, yyline, yytext());}
"Foolish" | "foolish" | "FOOLISH" {return new Symbol(sym.FOOLISH, yychar, yyline, yytext());}
"Honest" | "honest" | "HONEST" {return new Symbol(sym.HONEST, yychar, yyline, yytext());}
"Dishonest" | "dishonest" | "DISHONEST" {return new Symbol(sym.DISHONEST, yychar, yyline, yytext());}
"Calm" | "calm" | "CALM" {return new Symbol(sym.CALM, yychar, yyline, yytext());}
"Anxious" | "anxious" | "ANXIOUS" {return new Symbol(sym.ANXIOUS, yychar, yyline, yytext());}
"Curious" | "curious" | "CURIOUS" {return new Symbol(sym.CURIOUS, yychar, yyline, yytext());}
"Indifferent" | "indifferent" | "INDIFFERENT" {return new Symbol(sym.INDIFFERENT, yychar, yyline, yytext());}
"Generous" | "generous" | "GENEROUS" {return new Symbol(sym.GENEROUS, yychar, yyline, yytext());}
"Selfish" | "selfish" | "SELFISH" {return new Symbol(sym.SELFISH, yychar, yyline, yytext());}
"Patient" | "patient" | "PATIENT" {return new Symbol(sym.PATIENT, yychar, yyline, yytext());}
"Impatient" | "impatient" | "IMPATIENT" {return new Symbol(sym.IMPATIENT, yychar, yyline, yytext());}
"Confident" | "confident" | "CONFIDENT" {return new Symbol(sym.CONFIDENT, yychar, yyline, yytext());}
"Insecure" | "insecure" | "INSECURE" {return new Symbol(sym.INSECURE, yychar, yyline, yytext());}
"Creative" | "creative" | "CREATIVE" {return new Symbol(sym.CREATIVE, yychar, yyline, yytext());}
"Boring" | "boring" | "BORING" {return new Symbol(sym.BORING, yychar, yyline, yytext());}
"Adventurous" | "adventurous" | "ADVENTUROUS" {return new Symbol(sym.ADVENTUROUS, yychar, yyline, yytext());}
"Cautious" | "cautious" | "CAUTIOUS" {return new Symbol(sym.CAUTIOUS, yychar, yyline, yytext());}
"Optimistic" | "optimistic" | "OPTIMISTIC" {return new Symbol(sym.OPTIMISTIC, yychar, yyline, yytext());}
"Pessimistic" | "pessimistic" | "PESSIMISTIC" {return new Symbol(sym.PESSIMISTIC, yychar, yyline, yytext());}
"Gentle" | "gentle" | "GENTLE" {return new Symbol(sym.GENTLE, yychar, yyline, yytext());}
"Rough" | "rough" | "ROUGH" {return new Symbol(sym.ROUGH, yychar, yyline, yytext());}
"Charming" | "charming" | "CHARMING" {return new Symbol(sym.CHARMING, yychar, yyline, yytext());}
"Repulsive" | "repulsive" | "REPULSIVE" {return new Symbol(sym.REPULSIVE, yychar, yyline, yytext());}
"Modest" | "modest" | "MODEST" {return new Symbol(sym.MODEST, yychar, yyline, yytext());}
"Arrogant" | "arrogant" | "ARROGANT" {return new Symbol(sym.ARROGANT, yychar, yyline, yytext());}
"Athletic" | "athletic" | "ATHLETIC" {return new Symbol(sym.ATHLETIC, yychar, yyline, yytext());}
"Clumsy" | "clumsy" | "CLUMSY" {return new Symbol(sym.CLUMSY, yychar, yyline, yytext());}
"Independent" | "independent" | "INDEPENDENT" {return new Symbol(sym.INDEPENDENT, yychar, yyline, yytext());}
"Dependent" | "dependent" | "DEPENDENT" {return new Symbol(sym.DEPENDENT, yychar, yyline, yytext());}
"Fierce" | "fierce" | "FIERCE" {return new Symbol(sym.FIERCE, yychar, yyline, yytext());}
"Gentle" | "gentle" | "GENTLE" {return new Symbol(sym.GENTLE, yychar, yyline, yytext());}
"Humble" | "humble" | "HUMBLE" {return new Symbol(sym.HUMBLE, yychar, yyline, yytext());}
"Arrogant" | "arrogant" | "ARROGANT" {return new Symbol(sym.ARROGANT, yychar, yyline, yytext());}
"Intelligent" | "intelligent" | "INTELLIGENT" {return new Symbol(sym.INTELLIGENT, yychar, yyline, yytext());}
"Boring" | "boring" | "BORING" {return new Symbol(sym.BORING, yychar, yyline, yytext());}
"Caring" | "caring" | "CARING" {return new Symbol(sym.CARING, yychar, yyline, yytext());}
"Cold" | "cold" | "COLD" {return new Symbol(sym.COLD, yychar, yyline, yytext());}
"Hot" | "hot" | "HOT" {return new Symbol(sym.HOT, yychar, yyline, yytext());}
"Friendly" | "friendly" | "FRIENDLY" {return new Symbol(sym.FRIENDLY, yychar, yyline, yytext());}
"Hostile" | "hostile" | "HOSTILE" {return new Symbol(sym.HOSTILE, yychar, yyline, yytext());}
"Loyal" | "loyal" | "LOYAL" {return new Symbol(sym.LOYAL, yychar, yyline, yytext());}
"Unfaithful" | "unfaithful" | "UNFAITHFUL" {return new Symbol(sym.UNFAITHFUL, yychar, yyline, yytext());}
"Witty" | "witty" | "WITTY" {return new Symbol(sym.WITTY, yychar, yyline, yytext());}
"Dull" | "dull" | "DULL" {return new Symbol(sym.DULL, yychar, yyline, yytext());}
"Silly" | "silly" | "SILLY" {return new Symbol(sym.SILLY, yychar, yyline, yytext());}
"Smart" | "smart" | "SMART" {return new Symbol(sym.SMART, yychar, yyline, yytext());}
"Stupid" | "stupid" | "STUPID" {return new Symbol(sym.STUPID, yychar, yyline, yytext());} 
"Short" | "short" | "SHORT" {return new Symbol(sym.SHORT, yychar, yyline, yytext());}
"Strong" | "strong" | "STRONG" {return new Symbol(sym.STRONG, yychar, yyline, yytext());}
"Weak" | "weak" | "WEAK" {return new Symbol(sym.WEAK, yychar, yyline, yytext());}






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


//Adverbio:
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


//Verbo
"Enjoy" | "enjoy" | "ENJOY" {return new Symbol(sym.ENJOY, yychar, yyline, yytext());}



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

//conjuncion

"And" | "and" | "AND" {return new Symbol(sym.AND, yychar, yyline, yytext());}
"Or" | "or" | "OR" {return new Symbol(sym.OR, yychar, yyline, yytext());}


//----ERROR----
//{L}({L}|{D})* {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
