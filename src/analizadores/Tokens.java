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
        silla,          arbol,          flor,                   mesa,               boligrafo,
        computadora,    telefono,       sol,                    estanteria,         hola,
        puerta,         pez,            luna,                   rio,                lampara,
        cama,           camisa,         sombrero,               zapato,             pelota,
        tigre,          lapicero,       llave,                  billetera,          reloj,
        television,     guitarra,       musica,                 imagen,             jardin,
        playa,          aeroplano,      tren,                   ensalada,           pizza,
        helado,         naranja,        manzana,                banano,             tomate,
        papa,           pollo,          vaca,                   caballo,            elefante,
        leon,           mono,           jirafa,                 conejo,             culebra,
        araña,          hormiga,        abeja,                  mariposa,           maestro,
        doctor,         enfermera,      piloto,                 actor,              cantante,
        artista,        cientifico,     ingeniero,              abogado,            estudiante,
        niño,           adulto,         padre,                  amigo,              vecino,
        desconocido,    heroe,          lapiz,                  serpiente,
        platano,        pescado,        padres,                 avion,
        
    //Adjetivos
        grande,
        hermoso,        feliz,          ingeligente,            pequeño,            viejo,
        divertido,      alto,           gruñon,                 rojo,               frio,
        elegante,       inteligente,    nombre,                 amable,             generoso,
        creativo,       sincero,        apasionado,             paciente,           responsable,
        encantador,     duro,           humilde,                leal,               ocurrente,
        cariñoso,       determinado,    gentil,                 amigable,           honesto,
        aventurero,     tranquilo,      curioso,                energetico,         confiable,
        timido,         admirable,      alegre,                 diligente,          optimista,
        amistoso,       genuino,        agradecido,             inventivo,          relajado,
        sensible,       pensativo,      adaptable,              compasivo,          dinamico,
        entusiasta,     cortes,         innovador,              jovial,             modesto,
        apacible,       fiable,         sociable,               talentoso,          versatil,
        brillante,      

        
    //ADJETIVOS POSESIVOS
        mio,            suyo,           nuestro,                tuyo,
    
    //ADJETIVOS DEMOSTRATIVOS
        este,       estos,      aquellos,       semejante,      mismo,
        otro,       diferente,  cierto,         varios,
        
    
     //Adjetivos Calificativos
        asombroso,      delicioso,      emocionante,        interesante,        encantadora,
        maravilloso,    excelente,      fantastico,         increible,         bajo,
        triste,         feo,            rapido,             limpio,
        debil,          estupido,       malo,               cobarde,            sucio,
        aburrido,       astuto,         energico,           cansado,            ruidoso,
        blando,         agradable,      educado,            descortes,          repugnante,
        lindo,          torpe,          sabio,              tonto,              deshonesto,
        calmado,        ansioso,        indiferente,        egoista,            impaciente,
        confiado,       inseguro,       cauteloso,          pesimista,          aspero,
        repulsivo,      arrogante,      atletico,           independiente,      dependiente,
        fiero,          caliente,       hostil,             infiel,             esplendido,
        valiente,

        
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
        adios,
        
    //Verbo
        disfrutar,
    //-----ingles-----
    //pronombres
        I,       YOU,       HE,         SHE,       IT,     WE,
        THEY,    AM,        ARE,        IS,        US,      THEM, 
        HIM,     MYSELF,     YOURSELF,  ME,
       
     //SUSTANTIVOS
        DOG,        CAR,        BOOK,       HOUSE,      CAT,        CHAIR,
        TREE,       FLOWER,     TABLE,      PEN,        COMPUTER,   PHONE,
        SUN,        BOOKSHELF,  HELLO,      HI,         CLOCK,      PENCIL,
        DOOR,       FISH,       MOON,       RIVER,      LAMP,       STRANGER,
        BED,        SHIRT,      HAT,        SHOE,       BALL,       GOODBYE,
        TIGER,      KEY,        WALLET,     WATCH,      PICTURE,
        TELEVISION, GUITAR,     MUSIC,      IMAGE,      GARDEN,
        BEACH,      AIRPLANE,   TRAIN,      SALAD,      PIZZA,
        ICECREAM,   ORANGE,     APPLE,      BANANA,     TOMATO,
        POTATO,     CHICKEN,    COW,        HORSE,      ELEPHANT,
        LION,       MONKEY,     GIRAFFE,    RABBIT,     SNAKE,
        SPIDER,     ANT,        BEE,        BUTTERFLY,  TEACHER,
        DOCTOR,     NURSE,      PILOT,      ACTOR,      SINGER,
        ARTIST,     SCIENTIST,  ENGINEER,   LAWYER,     STUDENT,
        CHILD,      ADULT,      PARENT,     FRIEND,     NEIGHBOR,
        UNKNOWN,    HERO,

       
    //ADJETIVOS 
        BIG,            BEAUTIFUL,      HAPPY,      INTELLIGENT,    SMALL,
        OLD,            FUNNY,          TALL,       BRAVE,          RED,
        COLD,           SMART,          ELEGANT,    NAME,           FUN,
        KIND,           GENEROUS,       CREATIVE,   SINCERE,        PASSIONATE, 
        PATIENT,        RESPONSIBLE,    JOYFUL,     JOVIAL,         STRONG,
        TOUGH,          HUMBLE,         LOYAL,      WITTY,          GRACIOUS,
        AFFECTIONATE,   DETERMINED,     GENTLE,     FRIENDLY,       HONEST,
        ADVENTUROUS,    QUIET,          CURIOUS,    ENERGETIC,      RELIABLE,
        SHY,            ADMIRABLE,      CHEERFUL,   DILIGENT,       OPTIMISTIC,
        GENUINE,        GRATEFUL,       INVENTIVE,  RELAXED,        PEACEFUL,
        SENSITIVE,      THOUGHTFUL,     ADAPTABLE,  COMPASSIONATE,  DYNAMIC,
        ENTHUSIASTIC,   COURTEOUS,      INNOVATIVE, MODEST,         CLEVER,
        SOCIABLE,       TALENTED,       VERSATILE,  CALM,
        BRILLIANT,

                
    //ADJETIVOS POSESIVOS
        MY,      YOUR,      HIS,        HER,    OUR,    THEIR,
        ITS,     THEIRS,    YOURS,      MINE,
       
    //ADJETIVOS DEMOSTRATIVOS
        THIS,   THAT,       THESE,      THOSE,      SUCH,   SAME,
        OTHER, ANOTHER,    DIFFERENT,  CERTAIN,    VARIOUS,
        
    //Adjetivos Calificativos
        AMAZING,    DELICIOUS,      EXCITING,       INTERESTING,        LOVELY,
        CHARMING,   WONDERFUL,      EXCELLENT,      FANTASTIC,          INCREDIBLE,
        LOW,        SAD,            UGLY,           FAST,               CLEAN,
        WEAK,       STUPID,         BAD,            COWARDLY,           DIRTY,
        BORING,     CUNNING,        TIRED,          NOISY,              SHORT,
        SOFT,       PLEASANT,       POLITE,         DISCOURTEOUS,       DISGUSTING,
        CUTE,       CLUMSY,         WISE,           FOOLISH,            DISHONEST,
        ANXIOUS,    INDIFFERENT,    SELFISH,        IMPATIENT,          SLOW,
        CONFIDENT,  INSECURE,       CAUTIOUS,       PESSIMISTIC,        HARSH,
        REPULSIVE,  ARROGANT,       ATHLETIC,       INDEPENDENT,        DEPENDENT,
        FIERCE,     HOT,            HOSTILE,        UNFAITHFUL,         CARING,
        LOUD,       RUDE,           ROUGH,          SHINY,              HARD,
        SILLY,      DULL,           NICE,           GORGEOUS,         

    
        
        
    //Adjetivos Indefinidos
        SOME,       ANY,        SEVERAL,    FEW,        ALL,        BOTH,   EVERY,
        MANY,
        
         //INTERROGATIVOS
     
    //Pronombres Interrogativos
        WHO,        WHAT,       WHERE,      WHEN,       WHICH,      WHOSE,
        WHOM,       WHY,        HOW,        BECAUSE,
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
        Adj_Indefinido,     Pro_Interrog,       Adverbio,       Verbo,
        Articulo,
        Puntuacion,

    //VERBO
        ENJOY,

//PUNTUACION
        nadaa,      punn,       comm,       puncom,     dospum,     cerrad,
        cerrin,     abrpar,     cerrpar,    abrllac,    cerrllac,
//ERROR
    Error, Linea,  Separador
        
    
    
}
