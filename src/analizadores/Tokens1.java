


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
public enum Tokens1 {
    

    //ESPAÑOL
        yo,     tu,     el,     ella,       eso,        nosotros,       ellos,
        soy,    son,    es,     mi,
    
    
   
    //sustantivos
        perro,          carro,          libro,                  casa,               gato,
        silla,          árbol,          flor,                   mesa,               bolígrafo,
        computadora,    teléfono,       sol,                    estantería,         hola,
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
        desconocido,    heroe,          
        
    //adjetivos
        grande,
        hermoso,        feliz,          ingeligente,            pequeño,            viejo,
        divertido,      alto,           gruñon,                 rojo,               frio,
        elegante,       inteligente,    nombre,                 amable,             generoso,
        creativo,       sincero,        apasionado,             paciente,           responsable,
        encantador,     duro,           humilde,                leal,               ocurrente,
        cariñosa,       determinado,    gentil,                 amigable,           honesto,
        aventurero,     tranquilo,      curioso,                energetico,         confiable,
        timido,         admirable,      alegre,                 diligente,          optimista,
        amistoso,       genuino,        agradecido,             inventivo,          relajado,
        sensible,       pensativo,      adaptable,              compasivo,          dinamico,
        entusiasta,     cortes,         innovador,              jovial,             modesto,
        apacible,       fiable,         sociable,               talentoso,          versatil,
        brillante,      

    //adjetivos posesivos
        mio,            suyo,           nuestro,                tuyo,
        suyos,          vuestros,       nuestros,               //no se si dejar estos 3 extras xd
    
    //adjetivos demostrativos
        este,       estos,      aquellos,       semejante,      mismo,
        otro,       diferente,  cierto,         varios,         
        
    
     //adjetivos calificativos
        asombroso,      delicioso,      emocionante,        interesante,        encantadora,
        maravilloso,    excelente,      fantastico,         increible,          bajo,
        triste,         feo,            rapido,             limpio,
        debil,          estupido,       malo,               cobarde,            sucio,
        aburrido,       astuto,         energico,           cansado,            ruidoso,
        blando,         agradable,      educado,            descortes,          repugnante,
        lindo,          torpe,          sabio,              tonto,              deshonesto,
        calmado,        ansioso,        indiferente,        egoista,            impaciente,
        confiado,       inseguro,       cauteloso,          pesimista,          aspero,
        repulsivo,      arrogante,      atletico,           independiente,      dependiente,
        fiero,          cariñoso,       caliente,           hostil,             infiel,
        

     //adjetivos indefinidos
        alguno,     cualquier,    pocos,    todo,      ambos,       cada,       muchos,
     
     //pronombres interrogativos
        quien,      que,        donde,      cual,       como,       dequien,    porque,
        cuando,     aquien,  
        
    //numeral
        uno,    dos,    tres,   cuatro, cinco,  seis,   siete,  ocho,   nueve,  diez,
        once,   doce,   trece,  catorce, quince,    dieciseis,  diecisiete, dieciocho,
        diecinueve, veinte, veintiuno, veintidos, veintitres,   veinticuatro, veinticinco,
        veintiseis, veinticiete, veintiocho, veintinueve, treinta, treintayuno, treintaydos,
        treintaitres, treintaycuatro, treintaycinco, treintayseis, treintaysiete, treintayocho,
        treintaynueve, cuarenta, cuarentayuno, cuarentaydos, cuarentaytres, cuarentaycuatro,
        cuarentaycinco, cuarentayseis, cuarentaysiete, cuarentayocho, cuarentaynueve, cincuenta,
        cincuentayuno, cincuentaydos, cincuentaytres, cincuientaycuatro, cincuientaycinco,
        cincuentayseis, cincuentaysiete, cincuientayocho, cincuentaynueve, sesenta,
        sesentayuno, sesentaydos, sesentaytres, sesentaycuatro, sesentaycinco, sesentayseis,
        sesentaysiete, sesentayocho, sesentaynueve, setenta, setentayuno, setentaydos,
        setentaytres, setentaycuatro, setentaycinco, setentayseis, setentaysiete, setentayocho,
        setentaynueve, ochenta, ochentayuno, ochentaydos, ochentaytres, ochentaycuatro, ochentaycinco,
        ochentayseis, ochentaysiete, ochentayocho, ochentaynueve, noventa, noventayuno,
        noventaydos, noventaytres, noventaycuatro, noventaycinco, noventayseis, noventaysiete,
        noventayocho, noventaynueve, cien,
        
    //numeros cardinales
       primero,     segundo,        tercero,        cuarto,     quinto,     sexto,
       septimo,     octavo,         noveno,         decimo,     undecimo,   duodecimo,
       decimotercero, decimocuarto, decimoquinto, decimosexto, decimoseptimo, decimooctavo,
       decimonoveno, vigesimo, vigesimoprimero, vigesimosegundo, vegesimotercero, vigesimocuarto,
       vigesimoquinto, vigesimosexto, vigesimoseptimo, vigesimooctavo, vigesimonoveno,
       trigesimo, trigesimoprimero, trigesimosegundo, trigesimotercero, trigesimocuarto,
       trigesimoquinto, trigesimosexto, trigesimoseptimo, trigesimooctavo, trigesimonoveno,
       cuadragesimo, cuadragesimoprimero, cuadragesimosegndo, cuadragesimotercero, cuadragesimocuarto,
       cuadragesimoquinto, cuadragesimosexto, cuadragesimoseptimo, cuadragesimooctavo, cuadragesimonoveno,
       quincuagesimo, quincuagesimoprimero, quincuagesimosegundo, quincuagesimotercero, quincuagesimocuarto,
       quincuagesimoquinto, quincuagesimosexto, quincuagesimoseptimo, quincuagesimooctavo, quincuagesimonoveno,
       sextuagesimo, sextuagesimoprimero, sextuagesimosegundo, sextuagesimotercero, sextuagesimocuarto,
       sextuagesimoquinto, sextuagesimosexto, sextuagesimoseptimo, sextuagesimoocatavo, sextuagesimonoveno,
       septuagesimo, septuagesimoprimero, septuagesimosegundo, septuagesimotercero, septuagesimocuarto,
       septuagesimoquinto, septuagesimosexto, septuagesimoseptimo, septuagesimooctavo, septuagesimonoveno,
       octagesimo, octagesimoprimero, octagesimosegundo, octagesimotercero, octagesimocuarto, octagesimoquinto,
       octagesimosextp, octagesimoseptimo, octagesimooctavo, octagesimonoveno, nonagesimo, nonagesimoprimero,
       nonagesimosegundo, nonagesimotercero, nonagesimocuarto, nonagesimoquinto, nonagesimosexto, nonagesimoseptimo,
       nonagesimooctavo, nonagesimonoveno, centesimo,
       
    
    
    //adverbio
        rapidamente,        aqui,           mucho,              lento,      tranquilamente,
        felizmente,         facilmente,     cuidadosamente,     fuerte,     bueno,
        nunca,              siempre,        lentamente,         alegremente, ruidosamente,
        claramente,         audazmente,     suavemente,         ansiosamente, nerviosamente,
        bruscamente,        amablemente,    pacientemente,      constantemente, tristemente,
        cautelosamente,     valientemente,  honestamente,       amorosamente,   seriamente,
        juguetonamente,     graciosamente,  confiadamente,      enojadamente,   eficientemente,
        deliberadamente,    libremente,     tensamente,         educadamente,   
        
    //advervios de tiempo:
        hoy,    ayer,   mañana, ahora,  pronto,
        mastrade,   temprano,   tarde,  amenudo,
        aveces,     frecuentemente, raramente,
        ocasionalmente, periodicamente, regularmente,
        porhoras, diariamente, semanalmente, mensualmente,
        anualmente, porlamañana, porlatarde, porlanoche,
        denoche, losdiasdelasemana, losfinesdesemana, alamanecer,
        alatardecer, duranteeldia,  durantetodalanoche, pordias,
        porsemanas, pormeses, poraños, enelpasado, enelpresente,
        enelfuturo, durantelamañana, durantelatarde, durantelanoche,
        poruntiempo, durantetodoeldia, durantetodalasemana, durantetodoelmes,
        durantetodoelaño, alprincipio, alfinal, duranteelverano, duranteelinvierno,
        durantelaprimavera, duranteelotoño, paraentonces, paraahora, paramañana,
        paraayer, justoahora, haceunrato, ya, aun, hastaahora, hastaentonces, antes,
        despues, durante, hoyendia, elañopasado, elproximomes, todoslosdias, todaslassemanas,
        todoslosmeses, todoslosaños, unavez, dosveces, tresveces, variasveces, enunmomento,
        enuninstante, enunsegundo, enunminuto, enunahora, enundia, enunasemana,
        enunmes, enunaño, previamente, luego, mastarde, 
        
    //advervios de lugar:
        alla, entodoslados, cercano, lejos, afuera,
        superior, abajo, ningunlugar, alli, entodaspartes,
        enningunaparte, cercana, encima, debajo, dentro,
        fuera, arriba, juntoa, alladode, atraveesde, 
        entre, detras, delantede, encimade, debajode,
        alrededor, fuerade, lejosde, porencimade, pordebajode,
        enelinteriorde, enelpisodearriba, enelpisodeabajo, detrasde,
        atravesde, 
        
    //advervios de cantidad:
        suficiente,     muy,        tambien,        infinidad,
        mas,            menos,      lamayoria,      muchas,
        varias,         poco,       casi,           aduraspenas,
        exactamente,    aproximadamente,    completamente,  parcialmente,
        demasiado,      extremandamente,    increiblemente, bastante,
        masbien,        justo,              considerablemente, significativamente,
        ligeramente,    principalmente,     solo,    simplemente,
        precisamente,   practicamente,      casino,  simple,
        substancialmente,   abundantemente, enexceso,   notablemente,
        extraordinariamente,    inusualmente,   horriblemente,  terriblemente,
        intensamente,   perfectamente,  absolutamente,  enteramente,
        extremadamente, excesivamente,  abundante,
        
    //adverbios de modo:
        cuidadoso,      bien,       gravemente,     hermosamente,
    
        
    //adverbios de afirmacion:
        si,     enefecto,       ciertamente,        definitivamente,
        seguramente,    posiblemente,   indudablemente, sin,
        porsupuesto,    descuidadamente,    altamente,  sinesfuerzo,
        firmemente,     elegantemente,      naturalmente,   asperamente,
        voluntariamente,    directamente,   largamente,     prontamente,
        meticulosamente,    locamente,
        
    //adverbios de negacion:
        no,     ni,     enningunlugar,      ninguno,
        nada,   deningunamanera,    nope,   nay,    nah,
        paranada,   nomas,  yano,   ningunaposibilidad,
        ningunasalida,  nodice,     nogracias,   ningunaposibilidadenelinfierno,
        niensueños, nosepuede,      noseñor,     noestaocurriendo,
        nodeningunamanera,  niunaoprtunidad,    sinesperanza,   sinoracion,
        nisiquieraunpoco,   absolutamenteno,    nilamasminima,  nohayoportunidad,
        nonicerca,  nienunmillondeaños, absolutamentedeningunamanera,   sinesperanzaenelinfierno,
        norealmente,  nientuvida,
    
    //adverbios de duda:
        talvez,     dudosamente,    inciertamente,  cuestionablemente,
        ambiguamente,   indecisamente,  titubiantemente,
        quizas,      podraiser,     noestoyseguro,      esposible,
        talvezno,    noestoytotalmenteseguro,   esincierto, hayunaposibilidad,
        noestoycompletamenteconvencido, supongo,    quiensabe,  dificildedecir,
        espocoprobable, noestoycompletamenteseguroparaserhonesto,   talveznoquienpuededecir,
        esinciertonoestoyseguro,    posiblementeperosoyesceptico,
        
    //preposicion:
        por,    con,    de,     en,     sobre,
        cerca,  acercade,       entrevarios,    masallade,
        alolargode, contra, dentrode,   hacia,
        
    //conjuncion:
        y,  pero,   o,  entonces,   todavia,
        para,   deestemodo, porlotanto, asique,
        mientras,   aunque, desde,  amenosque,
        hasta,  siempreque, mientrasque,
        
    //subordinantes:
        amenos, loquesea,   despuesde,  antesde,
        dadoque,    encasodeque,    paraque,
    
    //interjeccion:   
        guau,   vaya,   ay, viva,   bravo,
        ups,    uff,    uf, yupi,   oh,
        aha,    hurra,  eh, oye,    voila,
        salud,  yipee,  yahoo,
    
    //contracciones:
        al, del,    un, a,  estoy,
        nopuedo,    nolohare,   eres,   eles,
        ellaes, somos,  ellosson,   loharas,
        sera,   ellohara,   ellalohara, loharemos,
        ellosloharan,   he, has,    hemos,  elloshan,
        habria, habrias,    seria,  elhabria,   ellahabria,
        habriamos,  elloshabrian,   lohare,
        

    centesima,
        
        
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
