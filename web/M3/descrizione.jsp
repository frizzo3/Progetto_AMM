<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>NerdBook</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Francesco Rizzo">
        <meta name="keywords" content="nerdbook social network">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    
    <body>
        <header>
            <nav>
                <jsp:include page="header.jsp"/>
            </nav>
        </header>
        
        <!--
        Sommario per l'accesso alle varie Sezioni della pagina di descrizione 
        -->

        <nav id="sommario">
            <h2>Sommario</h2>
            <ol>
                <li><a href="#welcome"><b>Welcome to Nerbook</b></a>
                    <ol>
                        <li><a href="#pres"><b>Presentazione</b></a></li>
                        <li><a href="#internet"><b>internet</b></a></li>
                    </ol>
                </li>
            </ol>
            <ol>
                <li><a href="#intro"><b>Introduzione</b></a>
                    <ol>
                        <li><a href="#accesso"><b>Accesso</b></a></li>
                        <li><a href="#chi_siamo"><b>Chi siamo ?</b></a></li>
                    </ol>
                </li>
            </ol>
            <ol>
                <li><a href="#nerd_world"><b>Il mondo Nerd</b></a>
                    <ol>
                        <li><a href="#significato"><b>Significato</b></a></li>
                    </ol>
                </li>
            </ol>
        </nav>
        
        <!--
        Breve descrizione del social Network
        -->
        
        <div id="info_generali">        
            <br/>
            
            <h2 id="welcome">Welcome to Nerdbook</h2>
            <p>
                Benvenuto su NerdBook ! Questa nuova piattaforma ti permetterà di navigate tra tantissimi contenuti di carattere tecnologico, insieme a una grande community online 
                che attraverso i nostri forum potranno aiutarti e offrire assistenza in caso di eventuali domande o richieste. Potrai trovare i nostri tutorial sempre disponibili per gli 
                iscritti al servizio, inoltre nella sezione "clicca per essere promosso ad AMM" potrai tentare la fortuna e sperare di passare questo fantastico esame !! Ti auguriamo la 
                miglior esperienza di utilizzo possibile, e speriamo che tu ne sia pienamente soddisfatto. Stay online with us !! 
           </p>
            
            <h3 id='pres'>presentazione</h3>
            <p>
                Una rete sociale (in lingua inglese social network) consiste in un qualsiasi gruppo di individui connessi tra loro da diversi legami sociali. 
                Per gli esseri umani i legami vanno dalla conoscenza casuale, ai rapporti di lavoro, ai vincoli familiari. Le reti sociali sono spesso usate come 
                base di studi interculturali in sociologia, in antropologia, in etologia. L'analisi delle reti sociali, ovvero la mappatura e la misurazione delle 
                reti sociali, può essere condotta con un formalismo matematico usando la teoria dei grafi. In generale, il corpus teorico ed i modelli usati per 
                lo studio delle reti sociali sono compresi nella cosiddetta social network analysis.
                La ricerca condotta nell'ambito di diversi approcci disciplinari ha evidenziato come le reti sociali operino a più livelli (dalle famiglie alle 
                comunità nazionali) e svolgano un ruolo cruciale nel determinare le modalità di risoluzione di problemi e i sistemi di gestione delle organizzazioni,
                nonché le possibilità dei singoli individui di raggiungere i propri obiettivi.
            </p>
            
            <h3 id='internet'>internet</h3>
            <p>
                Internet è una rete ad accesso pubblico che connette vari dispositivi in tutto il mondo. 
                Dalla sua nascita rappresenta il principale mezzo di comunicazione di massa, che offre all'utente una vasta serie di contenuti potenzialmente informativi e di servizi.
                Si tratta di un'interconnessione globale tra reti informatiche di natura e di estensione diversa, resa possibile da una suite di protocolli di rete comune chiamata "TCP/IP" 
                dal nome dei due protocolli principali, il TCP e l'IP, che costituiscono la "lingua" comune con cui i computer connessi a Internet (gli host) sono interconnessi e comunicano 
                tra loro a un livello superiore indipendentemente dalla loro sottostante architettura hardware e software, garantendo così l'interoperabilità tra sistemi e sottoreti fisiche 
                diverse. L'avvento e la diffusione di Internet e dei suoi servizi hanno rappresentato una vera e propria rivoluzione tecnologica e socio-culturale dagli inizi degli anni
                novanta (assieme ad altre invenzioni come i telefoni cellulari e il GPS) nonché uno dei motori dello sviluppo economico mondiale nell'ambito 
                dell'Information and Communication Technology (ICT). 
                In quanto rete di telecomunicazione, come diffusione è seconda solo alla rete telefonica generale, anch'essa di diffusione mondiale e ad accesso pubblico, ma ancora più 
                "capillare" di Internet. Quest'ultima condivide largamente la rete telefonica per l'accesso e il trasporto dei suoi utenti ed è destinata, in un futuro non troppo lontano con
                il miglioramento della tecnologia VoIP, a soppiantarla inglobandola in sé, in quanto basata sulla più efficiente tecnica della commutazione di pacchetto.
            </p>
            
            <h2 id="into">Introduzione</h2>
            <p> Nerbook è un portale social realizzato come progetto per il corso di Amministrazione di Sistema, dove vengono introdotte diverse nozioni sulla programmazione web, 
                in questo modo gli studenti potranno accrescere la loro conoscenza di base sulle tecniche e sui mezzi di sviluppo di siti interattivi e dinamici e sfruttare queste nozioni 
                per inserirle nel loro bagaglio di conoscienze iniziali. Per far questo ci siamo avvalsi di un ambiente di sviluppo quale Netbeans. 
            </p>
            
            <br/>
            <br/>
            <h3 id="accesso"> Accesso </h3>
            <p>Per effettuare l'iscrizione al nostro social cliccate sul link "Login" che trovate su questa pagina, in modo da accedere
               alla schermata di accesso dove potrete inserire le vostre credenziali previa registrazione e quindi usufruire dei servizi che vi mettiamo a disposizione
            </p>
        
            <br/>
            <br/>
            <h3 id="chi_siamo"> Chi siamo? </h3>
            <p> Nerdbook è il social network della community virtuale nerd del palazzo delle scienze. Una comunità virtuale o comunità online è, nell'accezione comune del termine, 
                un insieme di persone interessate ad un determinato argomento, o con un approccio comune alla vita di relazione, che corrispondono tra loro attraverso una rete telematica, 
                oggigiorno in prevalenza Internet, e le reti di telefonia, costituendo una rete sociale con caratteristiche peculiari. Infatti tale aggregazione non è necessariamente 
                vincolata al luogo o paese di provenienza; essendo infatti questa una comunità online, chiunque può partecipare ovunque si trovi con un semplice accesso alle reti, 
                lasciando messaggi su forum (Bullettin Board), partecipando a gruppi Usenet (Newsgroups o gruppi di discussione), o attraverso le chat room (Chiacchierate in linea) e 
                programmi di instant messaging (messaggistica istantanea) come ICQ, ebuddy, Pidgin, MSN Messenger, Yahoo! Messenger, e altri. Una comunità virtuale può rimanere unicamente 
                tale, oppure estendersi nel mondo fisico, permettendo l'incontro dei suoi appartenenti.
            </p>
        
            <br/>
            <br/>
            <h2 id="nerd_world"> Il mondo Nerd </h3>
            <p> Il termine nerd ha assunto diversi significati nella società moderna, ma tutti lo ricollegano, per la maggior parte alla passione verso la tecnoglia, insieme ad un gran
                numero di termini e modi di fare ormai tipici di questo particolare stile di vita (perché di questo si parla). Ma possiamo andare ben oltre la sola parola proviamo a scoprire 
                di cosa si tratta effettivamente.
            </p>
            <h3 id="significato">Significato</h3>
            <p> è un termine della lingua inglese con cui viene definito chi ha una certa predisposizione per la tecnologia ed è al contempo tendenzialmente solitario e con una più o 
                meno ridotta propensione alla socializzazione. Il termine è nato come dispregiativo, ma in seguito è stato reclamato in alcuni ambiti per definire una sorta di orgoglio e
                di identità di gruppo.
            </p>
        </div>
    </body>
</html>
