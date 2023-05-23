/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

/**
 *
 * @author audyc
 */
public enum Tokens {
    

    //ESPAÑOL
        yo,     tu,     el,     ella,       eso,        nosotros,       ellos,
        soy,    son,    es,     mi,
    
    
    //SUSTANTIVOS
        perro,          carro,          libro,                  casa,               gato,
        silla,          árbol,          flor,                   mesa,               bolígrafo,
        computadora,    teléfono,       sol,                    estantería,         hola,         
        
    //Adjetivos
        grande,
        hermoso,        feliz,          ingeligente,            pequeño,            viejo,
        divertido,      alto,           gruñon,                 rojo,               frio,
        elegante,       inteligente,    nombre,

    //ADJETIVOS POSESIVOS
        mio,            suyo,           nuestro,                tuyo,
    
    //ADJETIVOS DEMOSTRATIVOS
        este,       estos,      aquellos,       semejante,      mismo,
        otro,       diferente,  cierto,         varios,
        
    
     //Adjetivos Calificativos
        asombroso,      delicioso,      emocionante,        interesante,        encantadora,
        maravilloso,    excelente,      fantastico,         increible,

     //Adjetivos Indefinidos
        alguno,     cualquier,    pocos,    todo,      ambos,       cada,       muchos,
     
     //Pronombres Interrogativos
        quien,      que,        donde,      cual,       como,       dequien,    porque,
        cuando,     aquien,  
        
    //Numeral
        uno,    dos,    tres,   cuatro, cinco,  seis,   siete,  ocho,   nueve,  diez,
        once,   doce,   veinte, cien,
        
    //Numeros cardinales
       primero,     segundo,        tercero,        cuarto,     quinto,     sexto,
       septimo,     octavo,         noveno,         decimo,     undecimo,   duodecimo,
       vigesimo,    centesima,
       
    
    
    //ADVERBIO
        rapidamente,        aqui,           mucho,              lento,      tranquilamente,
        felizmente,         facilmente,     cuidadosamente,     fuerte,     bueno,
        nunca,              siempre,
    // Articulo
        un,
        
        
        
    //-----ingles-----
    //pronombres
        I,       YOU,       HE,         SHE,       IT,     WE,
        THEY,    AM,        ARE,        IS,        US,      THEM, 
        HIM,     MYSELF,     YOURSELF,  ME,
       
     //SUSTANTIVOS
        DOG,    CAR,        BOOK,       HOUSE,      CAT,        CHAIR,
        TREE,   FLOWER,     TABLE,      PEN,        COMPUTER,   PHONE,
        SUN,    BOOKSHELF,  HELLO,      HI,
       
    //ADJETIVOS 
        BIG,    BEAUTIFUL,      HAPPY,      INTELLIGENT,        SMALL,
        OLD,    FUNNY,          TALL,       BRAVE,              RED,
        COLD,   SMART,          ELEGANT,    NAME,
                
    //ADJETIVOS POSESIVOS
        MY,      YOUR,      HIS,        HER,    OUR,    THEIR,
        ITS,     THEIRS,    YOURS,      MINE,
       
    //ADJETIVOS DEMOSTRATIVOS
        THIS,   THAT,       THESE,      THOSE,      SUCH,   SAME,
        OTHER, ANOTHER,    DIFFERENT,  CERTAIN,    VARIOUS,
        
    //Adjetivos Calificativos
        AMAZING,    DELICIOUS,      EXCITING,       INTERESTING,        LOVELY,
        CHARMING,   WONDERFUL,      EXCELLENT,      FANTASTIC,          INCREDIBLE,
    
    //Adjetivos Indefinidos
        SOME,       ANY,        SEVERAL,    FEW,        ALL,        BOTH,   EVERY,
        MANY,
        
    //Pronombres Interrogativos
        WHO,        WHAT,       WHERE,      WHEN,       WHICH,      WHOSE,
        WHOM,       WHY,        HOW,        
    //Numeral
        ONE,        TWO,        THREE,      FOUR,       FIVE,       SIX,        SEVEN,
        EIGHT,      NINE,       TEN,        ELEVEN,     TWELVE,     TWENTY,     HUNDRED,
        
    //Numeros Cardinales
        FIRST,      SECOND,     THIRD,      FOURTH,     FIFTH,      SIXTH,      SEVENTH,
        EIGHTH,     NINTH,      TENTH,      ELEVENTH,   TWELFTH,    TWENTIETH,  HUNDREDTH,
        
    

    //Articulo
        THE,        A,          AN,
        
    //ADVERBIO
        QUICKLY,            HERE,           MUCH,           SLOWLY,         QUIETLY,
        HAPPILY,            EASILY,         CAREFULLY,      LOUDLY,         WELL,
        NEVER,              ALWAYS,
        //tipo dato,
        Pronombre,          Sustantivo,         Adjetivo,       Adj_Posesivos,
        Pro_demostrativo,   Adj_Calificativo,   Numeral,        Num_Cardinales,
        Adj_Indefinido,     Pro_Interrog,       Adverbio,
        Articulo,
        Puntuacion,
    

//PUNTUACION
        nadaa,      punn,       comm,       puncom,     dospum,     cerrad,
        cerrin,     abrpar,     cerrpar,    abrllac,    cerrllac,
//ERROR
    Error, Linea,  Separador
        
    
    
}
