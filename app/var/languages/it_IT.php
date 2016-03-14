<?php

    /**
     * Need to keep this as array() vs. [] for Transilex
     */
    $messages = array(
        'language_text'                   => 'Inglese',
        'download'                        => 'Download',
        'documentation'                   => 'Documentazione',
        'forum'                           => 'Forum',
        'blog'                            => 'Blog',
        'support'                         => 'Supporto',
        'donate'                          => 'Donazioni',
        'store'                           => 'Store',
        'github'                          => 'GitHub',
        'phalcon_description'             => "<strong>Phalcon</strong> è un web framework implementato come estenesione C che offre <a href=\":1:\">alte prestazioni</a> e basso consumo di risorse",
        'the_fastest_php_framework'       => 'Il Framework PHP <br /> più veloce',
        'try_online'                      => 'Provalo Online',
        'see_screencasts'                 => 'Guarda gli Screencast',
        'everything_you_need_upper'       => 'TUTTO QUELLO CHE SERVE',
        'full_mvc_applications'           => "Applicazioni <a href=\":1:\">MVC</a> complete",
        'single_module'                   => 'Mono-Modulari',
        'multi_module'                    => 'Multi-Modulari',
        'micro_applications'              => 'Micro Applicazioni',
        'orm'                             => 'ORM',
        'transactions'                    => 'Transazioni',
        'behaviors'                       => 'Comportamenti',
        'relations'                       => 'Relazioni',
        'phql'                            => 'PHQL',
        'events'                          => 'Eventi',
        'validations'                     => 'Validazione',
        'hydration'                       => 'Idratazione',
        'logging'                         => 'Logging',
        'profiling'                       => 'Profiling',
        'sharding'                        => 'Sharding',
        'odm_for_mongo'                   => 'ODM per Mongo',
        'template_engine_volt'            => 'Template Engine (Volt)',
        'di_ioc'                          => 'DI/IOC',
        'events_management'               => 'Gestione degli Eventi',
        'encryption'                      => 'Crittografia',
        'http_request'                    => 'Richieste HTTP',
        'http_response'                   => 'Risposte',
        'http_cookies'                    => 'Cookies',
        'escaping'                        => 'Escaping',
        'filtering'                       => 'Filtraggio',
        'forms_builder'                   => 'Form Builder',
        'forms_validation'                => 'Validazione',
        'flash_messages'                  => 'Messaggi Flash',
        'cache'                           => 'Cache',
        'pagination'                      => 'Paginazione',
        'annotations'                     => 'Annotazioni',
        'security'                        => 'Sicurezza',
        'translations'                    => 'Traduzioni',
        'assets_management'               => 'Gestione degli Asset',
        'universal_auto_loader'           => 'Auto-Loader Universale',
        'cli'                             => 'CLI',
        'phalcon_forum_upper'             => 'FORUM DI PHALCON',
        'stack_overflow_upper'            => 'STACK OVERFLOW',
        'github_upper'                    => 'GITHUB',
        'email_us_upper'                  => 'SCRIVICI UN\'EMAIL',
        'services_upper'                  => 'SERVIZI',
        'consulting_upper'                => 'CONSULENZE',
        'requirements_analysis'           => 'Analisi dei Requisiti',
        'implementation'                  => 'Implementazione',
        'ongoing_support'                 => 'Supporto Continuo',
        'read_more'                       => 'Leggi ancora',
        'hosting_upper'                   => 'HOSTING',
        'phalcon_can_be_installed'        => 'Phalcon può essere installato su',
        'main_upper'                      => 'PRINCIPALE',
        'consulting'                      => 'Consulenza',
        'hosting'                         => 'Hosting',
        'support_upper'                   => 'SUPPORTO',
        'forum_community'                 => 'Forum / Community',
        'stack_overflow'                  => 'Stack Overflow',
        'issue_tracker'                   => 'Issue Tracker',
        'get_involved_upper'              => 'CONTRIBUISCI',
        'team'                            => 'Team',
        'about'                           => 'About',
        'roadmap'                         => 'Roadmap',
        'donate_to_phalcon'               => 'Donare a Phalcon:',
        'or'                              => 'oppure',
        'twitter'                         => 'Twitter',
        'facebook'                        => 'Facebook',
        'google_plus'                     => 'Google Plus',
        'vimeo'                           => 'Vimeo',
        'amazing_contributors'            => 'I nostri fantastici contributors',

        'download_phalcon'                => 'Scarica Phalcon',
        'download_linux'                  => 'Linux/Unix/Mac',
        'download_windows'                => 'DLL di Windows',
        'download_developer_tools'        => 'Developer Tools',
        'download_ide_stubs'              => 'Integrazioni per IDE',
        'download_ubuntu'                 => 'To install Phalcon on Ubuntu you need to follow these steps:',
        'download_ubuntu_1'               => 'If you are missing apt-add-repository run the following command:',
        'download_note'                   => 'Phalcon è un estensione in C, per questo motivo ti sarà necessario scaricare il binario per la tua piattaforma o compilarlo a partire dal codice sorgente.',
        'download_compilation'            => 'Compilazione',
        'download_compilation_1'          => 'Su Linux puoi facilmente compilare ed installare l\'estensione partendo dal codice sorgente.',
        'download_requirements'           => 'Requisiti',
        'download_requirements_1'         => 'E\' necessario che alcuni pacchetti risultino già installati:',
        'download_requirements_2'         => 'Risorse PHP 5.x per lo sviluppo',
        'download_requirements_3'         => 'Compilatore GCC',
        'download_compilation_11'         => '1. Per creare l\'estensione partendo dal codice sorgente in C segui i seguenti passi:',
        'download_compilation_12'         => '2. Aggiungi l\'estensione al file php.ini:',
        'download_compilation_13'         => '3. Infine riavvia il server web',
        'download_debian'                 => 'Debian',
        'download_debian_1'               => "Puoi trovare un repo gentilmente offerto da <a href=':1:'>FortRabbit</a> <a href=':2:'>qui</a>",
        'download_debian_2'               => 'Il nome del package è php5-phalcon',
        'download_arch'                   => 'Arch Linux',
        'download_arch_1'                 => "C'è una distribuzione PKGBUILD per Archilinux, disponibile <a href=':1:'>qui</a>",
        'download_opensuse'               => 'OpenSUSE',
        'download_opensuse_1'             => "C'è un package disponibile <a href=':1:'>qui</a> (grazie a <a href=':2:'>Mariusz Laczak</a>)",
        'download_freebsd'                => 'FreeBSD',
        'download_freebsd_1'              => 'E\' disponibile un port per FREEBSD. Dovrai eseguire solo pochi comandi per installarlo:',
        'download_dependencies'           => 'Dipendenze',
        'download_dependencies_1'         => 'Nonostante Phalcon non abbia link binari verso altre estensioni ne usa alcune per offrire delle funzionalità. Le estensioni usate sono:',
        'download_dependencies_2'         => 'Non è necessario che tutte le estensioni elencate siano presenti sul sistema dove Phalcon è installato. Puoi semplicemente installare quelle necessarie. Ad esempio se usi un database MySQL, ti basta caricare PDO e PDO/MySQL tralasciando Oracle, SQlite, Postgresql e Mongo.',
        'download_need_help'              => 'Serve aiuto?',
        'download_need_help_1'            => "Dai un'occhiata alla nostra <a href=':1:'>pagina di supporto</a> per scoprire come ricevere assistenza. Faremo del nostro meglio per aiutarti.",

        'download_windows_note'           => 'Raccomandiamo vivamente di usare l\'ultima estensione di PHP corrispondente alle nostre DLLs, in modo da poter sfruttare il vantaggio dell\'intero set di funzionalità Phalcon.',
        'download_windows_stable'         => 'Versioni Stabili/Master',
        'download_windows_installation'   => 'Installazione',
        'download_windows_installation_1' => "Per usare phalcon su Windows puoi scaricare una libreria DLL. Modifica il tuo php.ini, inseriscila alla fine e riavvia il tuo webserver per caricare l'estensione. <a href=':1:'>More</a>",
        'download_windows_guides'         => 'Guide Correlate',
        'download_windows_guides_xampp'   => 'Installazione su XAMPP',
        'download_windows_guides_wamp'    => 'Installazione su WAMP',
        'download_windows_alpha'          => 'Versioni Alpha/Beta',
        'download_source_code'            => "Codice Sorgente: <a href=':1:' target='_download' title='Repository GitHub'>github</a>",
        'download_source_code_switch'     => "Codice Sorgente (si prega di passare al branch corrente): <a href=':1:' target='_download' title='Repository GitHub'>github</a>",
        'download_no_alpha_beta'          => 'Nessuna versione alpha/beta disponibile al momento.',
        'download_windows_older'          => 'Versioni precedenti',

        'download_devtools_1'             => 'Questi strumenti sono una collezione di script utili per la generazione di un\'impalcatura di codice. I componenti di base della tua applicazione possono essere generati con un semplice comando, permettendoti di sviluppare facilmente applicazioni che sfruttano Phalcon.',
        'download_devtools_docs'          => "Documentazione: <a href=':1:'>Phalcon Developer Tools</a>",
        'download_devtools_composer'      => 'Installazione tramite Composer',
        'download_devtools_composer_1'    => 'Installare composer globalmente o all\'interno di un progetto:',
        'download_devtools_composer_2'    => 'Crea il file composer.json nella seguente maniera:',
        'download_devtools_composer_3'    => 'Lancia l\'installer di composer:',
        'download_devtools_composer_4'    => 'Crea un link simbolico allo script phalcon.php:',
        'download_devtools_download'      => 'Puoi scaricare o clonare un package cross platform contenente il developer tools da <a href=\':1:\'>Github</a>',

        'download_vagrant'                => 'Vagrant',
        'download_vagrant_boxes'          => 'Vagrant Boxes',
        'download_vagrant_1'              => "<a href=':1:'>Vagrant</a> è un eccellente strumento per creare e configurare ambienti portatili, riproducibili e leggeri.",
        'download_vagrant_2'              => "Usa una di queste box per testare o sviluppare con Phalcon su un ambiente pre-configurato.",
        'download_box_1'                  => "Box #1",
        'download_box_2'                  => "Box #2",
        'download_box_user_pass'          => "MySQL User: :1: Password: :2:",
        'download_box_doc_root'           => "Document Root :1:",
        'download_examples'               => "Esempi pre-installati",
        'download_examples_1'             => "I seguenti esempi sono preinstallati su ciascuna Vagrant box:",

        'consulting_header'               => "We have partnered with <a href=':1:'>LEZGRO</a>, a company that specializes in web and mobile application development and is very adept in delivering Phalcon powered applications to their clientele.",
        'consulting_lezgro_1'             => "<a href=':1:'>LEZGRO</a> congratulates you with the your choice of making Phalcon central in your technology stack!",
        'consulting_lezgro_2'             => "Since our company first saw the light of the day in 2003, we have tried various technologies and approaches in software development.",
        'consulting_lezgro_3'             => "Product managers, CTOs, and non-technical founders involve <a href=':1:'>LEZGRO</a> to build products that stand out, quickly and with a high quality.",
        'consulting_lezgro_4'             => "Now that we have acquired positive experience with Phalcon, we are open to advise you on making the decision to develop on Phalcon, and help you bring your Phalcon-based product to market.",
        'consulting_lezgro_5'             => "Contact LEZGRO through their <a href=':1:'>website</a>, where you can also see samples and testimonials of their work.",
        
        'consulting_mctekk_header'        => 'MCTekK has already delivered various high end PhalconPHP projects, with their main strengths being web and mobile development.',
        'consulting_mctekk_1'             => 'MCTekK jumped on the PhalconPHP wagon since day one. From its conception we saw the great advantages that PhalconPHP was offering and could offer in the future.',
        'consulting_mctekk_2'             => 'We have ample experience with PhalconPHP and have developed a myriad of project with it as the core. We are here to advise you on anything you need concerning PhalconPHP to help you improve your readiness, quickness and quality.',
        'consulting_mctekk_3'             => 'Contact us thourgh our <a href=":1:">website</a>, where you can take a look at the projects we have been involved in.',
        
        'requirements_analysis_1'         => 'Uno dei problemi più grandi che gli sviluppatori si trovano ad affrontare è il fatto che molti progetti non hanno dei requsiti adeguatamente definiti. Per questo motivo, molto spesso il desiderio del cliente è totalmente differente da ciò che lo sviluppatore riesce a capire e conseguenzialmente consegnare.',
        'requirements_analysis_2'         => 'Offriamo il servizio di analisi dei requisiti, discutendo con i clienti e trascrivendo le loro idee in precise specifiche per gli sviluppatori.',
        'implementation_1'                => 'Se sei interessato ad ingaggiarci per sviluppare la tua applicazione, saremo più che felici di farlo. Usando le ultime tecnologie possiamo offrire una soluzione robusta per le esigenze del tuo progetto, corredata di test e documentazione.',
        'ongoing_support_1'               => 'Per i clienti che sono interessati ad un contratto di supporto continuativo possiamo offrire supporto sui progetti su base continuativa. I clienti possono comprare pacchetti orari di supporto (minimo 2 ore) per 50 Dollari americani all\'ora.',
        'ongoing_support_2'               => 'Le ore di supporto non scadono e posson essere spese in qualsiasi momento ve ne sia bisogno, Per clienti che desiderano un servizio di supporto continuativo, offriamo piani flessibili che possono essere più consoni alle loro esigenze.',
        'sponsors'                        => 'Sponsors',
        'sponsors_1'                      => 'Per coloro che desiderano sponsorizzare il nostro lavoro e lo sviluppo futuro di Phalcon, offriamo varie opzioni di sponsorizzazione pensate per qualsiasi budget.',
        'sponsors_2'                      => 'Inoltre, alcuni clienti potrebbero desiderare che siano implementate determinate funzionalità che normalmente potrebbero richiedere lunghi tempi di sviluppo a causa della loro popolarità o complessità. Possiamo certamente venire incontro a certi tipi di richieste a tariffe nella norma.',
        'contact'                         => 'Contattaci',
        'contact_1'                       => "Sentiti libero di <a href=':1:'>contattarci</a> per discutere le tue richieste e permetterci di offrirti una soluzione che si adatti al meglio alle tue esigenze e al tuo budget. Nessun progetto è troppo grande o troppo piccolo.",

        'phalcon_team'                    => 'Il Team di Phalcon',
        'team_andres_1'                   => 'Andres non è nuovo ai progetti open source. Negli ultimi nove anni, ha disegnato e rilasciato frameworks per PHP ed è stato coinvolto nello sviluppo web - la sua principale passione.',
        'team_andres_2'                   => "Vincitore TR35, l'obiettivo principale di Andres è di scegliere e implementare o usare il giusto strumento per il giusto lavoro, con particolare attenzione riguardo le prestazioni. Per questo nel 2011 una nuova idea entrò in cantiere; creare un nuovo tipo di framework per gli sviluppatori PHP, focalizzato sull'usabilità, le funzionalità e molto performante.",
        'team_andres_3'                   => 'Nell\'ottica di questo approccio innovativo è nato Phalcon. Un framework PHP scritto in C che può offrire un ricco insieme di funzionalità agli sviluppatori massimizzando al tempo stesso le performance e mantenedo il consumo di risorse basso.',
        'team_andres_4'                   => 'Andres è uno dei principali artefici di Phalcon e della sua ideazione.',
        'team_nikos_1'                    => 'Nikos è nell\'industria IT da più di 20 anni. E\' stato introdotto al mondo del PHP nel 2000 e ha iniziato ad usarlo prima su progetti personali come poi sui progetti dei suoi committenti.',
        'team_nikos_2'                    => 'Lui ama scorpire nuove tecnologie e i metodi per integrarli nelle applicazioni esistenti sfruttando quindi i vantaggi che queste offrono.',
        'team_nikos_3'                    => 'Lui è un sostenitore sfegatato del Test Driven Development (TDD) e cerca sempre di raggiungere la copertura completa del suo codice.',
        'team_nikos_4'                    => "L'interesse spropositato e continuo di Nikos per le tecnologie innovative lo ha condotto verso Phalcon. E' entrato nel team del core ed i suoi compiti comprendono la coordinazione dell' NFRs ed il bug fixing, contribuisce con i testi, la documentazione ed incubator. Nikos è anche responsabile del mantenimento delle DLL Windows ed offre tutto il supporto possibile.",
        'team_nikolay_1'                  => 'Nikolay sviluppa applicazioni web da più di 10 anni. Si è occupato di alte prestazioni così come di complessi siti web e di design.',
        'team_nikolay_2'                  => 'Nikolay lavora su progetti Open Source da molto tempo, utilizzandoli in base ai requisiti. Per questo ha cominciato ad usare il suo tempo per restituire valore alla comunità, forkando progetti, offrendo cambi e suggerimenti architetturali e di performance. E\' stato determinante per il miglioramento di progetti di CMS Open Source ricevendo un feedback positivo dalla community.',
        'team_nikolay_3'                  => 'll suo continuo coinvolgimento in progetti open source lo ha aiutato a maturare la propria conoscenza tecnica e al tempo stesso restituire valore alla comunità.',
        'team_nikolay_4'                  => 'Nikolay è un supporter sfegatato della massimizzazione delle prestazioni nelleapplicazioni web. Dopo essere stato introdotto a Phalcon,ha deciso di cominciare a usare il progetto e diventarne un Evanglista. Lui sta guuidando lo sforzo attraverso la comunità russa e offre risorse per gli speaker Russi.',
        'team_nikolay_5'                  => "I suoi contributi includono: Un mirror del sito web principale in Russo (<a href=':1:'>http://www.phalconphp.ru</a>), un mirror del repository della documentazione in Russo (<a href=':2:'>http://docs.phalconphp.ru</a>), modifiche in fase di sviluppo e correzioni alla documentazione in Inglese, un gruppo sul social network Vkontakte (<a href=':3:'>http://vk.com/phalconphp</a>).",

        'get_involved'                    => 'Partecipa',
        'about_description_1'             => "Progetti fantastici richiedono persone fantastiche. Potremmo non conoscerti ancora, ma pensiamo che tu possa essere un tassello importante per la costruzione di un web migliore. Insieme, siamo pronti a cambiare il mondo! Qui in Phalcon, stiamo costruendo un framework PHP di nuova generazione; vogliamo darti delle prestazioni incredibili e aiutarti a sviluppare in una maniera più semplice e divertente.",
        'about_description_2'             => "We hope that you enjoy Phalcon as much as we do. We always welcome your collaboration and help! <strong>You don't have to be a C developer to help Phalcon!</strong> There are many other areas that you can contribute:",
        'about_translations_1'            => "Stiamo provando a raggiungere più sviluppatori possibile, tirando giù le barriere linguistiche. Stiamo usando <a href=':1:'>:2:</a>, per gestire le parole o le frasi che necessitano di essere tradotte per questo sito. Il repositori del progetto è <a href=':3:'>qui</a> e qui sotto puoi vedere lo stato corrente degli sforzi di traduzione.",
        'documentation_upper'             => 'DOCUMENTAZIONE',
        'about_documentation_1'           => "The repository of this website is available on <a href=':1:'>github</a>. We are using <a href=':2:'>readthedocs</a> to manage our documentation.<br /><br />We always appreciate corrections, additions and enhancements in our documentation, so all you have to do is clone the repository and issue a pull request!<br /><br />If you can help non English speaking developers by translating some of the content to another language, that would be great!",
        'screencasts'                     => 'Screencasts',
        'about_screencasts_1'             => "Tutti noi amiamo gli screencast. Se hai un po' di tempo in più e vuoi supportare la community con qualche bel video che spieghi una qualsiasi delle funzionalità del framework sei realmente il benvenuto. Controlla il nostro <a href=':1:'>Canale Vimeo</a> come una guida.",
        'tests'                           => 'Test',
        'about_tests_1'                   => "Nessun software è privo di bug, se ne trovi qualcuno, perfavore non esitare a dircelo. Abbiamo una suite di test con più di <a href=':1:'>8000</a> test. In ogni caso,  i test unitari non sono mai abbastanza. Aiutaci a migliorare la nostra suite di test aggiungendo nuovi test o migliorando quelli esistenti. Ogni test aggiunto renderà il framework più stabile.",
        'sample_applications'             => 'Applicazioni d\'esempio',
        'about_sample_apps_1'             => 'Grandi esempi aiutano gli altri a capire meglio come grandi cose possano essere create con Phalcon. Sentiti libero di condividere repository di applicazioni d\'esempio, aiutando gli altri con il loro lavoro e permettendogli di darti un feedback sul tuo.',
        'evangelism'                      => 'Evangelismo',
        'about_evangelism_1'              => "Ci sono molte persone che ancora non sono a conoscenza dell'esistenza di Phalcon o che funzioni davvero. Siamo certi che molti sviluppatori trarrebbero beneficio dal sentir parlare di Phalcon e di come potrebbe aiutarli. Se conosci degli eventi/incontri PHP e desideri fare un talk sul progetto, hai tutto il nostro supporto. Chi non vorrebbe sapere qualcosa riguardo lo strumento che rivoluzionerà lo sviluppo PHP?",
        'share_your_experiences'          => 'Condividi le tue esperienze',
        'about_share_experiences_1'       => "Non essere timido, sentiti libero di condividere con la comunità il modo in cui Phalcon ti ha aiutato. Se Phalcon è un caso di successo per te, lasciaci condividerlo con la comunità. Inoltre, discuti dei componenti che richiedono ritocchi, cosa semplificheresti, che benefici hai ottenuto utilizzando Phalcon. Anche se non tutto può essere implementato immediatamente, i tuoi suggerimenti riguardo nuove feature possono essere di grande aiuto per noi nel disegnare il futuro del progetto. Il tuo feedback è di aiuto per tutti noi.",
        'about_blog_1'                    => "Se ti piae scrivere, ricorda che il <a href=':1:'>nostro blog</a> è aperto e puoi postarci i tuoi tutorial. Se hai un tuo blog e hai scritto qualcosa su Phalcon, possiamo anche pubblicarlo sulle nostre pagine social di modo da raggiungere la massima visibilità. Se il tuo post è in un linguaggio diverso dall'Inglese, vorremmo condividerlo e probabilmente tradurlo se possibile. Se sei a conoscenza di blog relativi al PHP e sei interessato a presentare il progetto al suo pubblico perfavore faccelo sapere.",
        'donations_sponsoring'            => 'Donazioni / Sponsorizzazioni',
        'about_sponsoring_1'              => "Noi siamo un team di core developers piccolo ma efficientemente impegnato nel portare avanti il proprio lavoro. Cerchiamo di spendere più tempo possibile sul progetto. La nostra passione per questo progetto ci induce a volerci migliorare ogni giorno. Phalcon è un software open-source e l'aiuto di volontari è richiesto per la sua evoluzione costante, Ci puoi aiutare a sviluppare a mantenerne lo sviliuppo attivo donando al progetto o sponsorizzandone lo sviluppo. Molto tempo e molte risorse dedicate al progetto significano molta attività, continuo miglioramento, miglior supporto, maggior numero di funzionalità, etc.",
        'social_networks'                 => 'Social Networks',
        'about_social_networks_1'         => "Phalcon evolve quotidianamente, attraverso il nostro desiderio di miglioraro. I social network sono parte delle nostre vite adesso, e noi interagiamo con gli altri attraverso di essi. Condividere la tua esperienza su Phalcon nelle tue cerchie sarebbe un grande miglioramento di visibilità per il progetto. Più persone entreranno nella nostra comunity, rendendola più folta, più diventera ricco di feature e popolare. Mi piace, '+1', condivisione dei post che costantemente pubblichiamo su ogni social network, partecipazione alle discussioni riguardanti i post. Le persone che scopriranno Phalcon attraverso le tue interazioni ti ringrazieranno!",
        'about_social_networks_2'         => "Siamo presneti sulla maggior parte dei social network più popolari. Seguendoci, ci aiuterai ad aumentare la visibilità dei nostri progetti:",
        'follow_on_twitter'               => 'Seguici su Twitter',
        'facebook_page'                   => 'Pagina Facebook',
        'google_plus_page'                => 'Pagina Google+',
        'official_blog'                   => 'Blog ufficiale',
        'star_on_github'                  => 'Dai una stella al progetto su Github',
        'thank_you'                       => 'Grazie!',
        'about_thank_you_1'               => 'Vorremmo ringraziare tutti coloro che hanno dato il loro contributo e i membri della comunità per l\'aiuto checi danno a rendere Phalcon il miglior framework nel suo genere. Le vostre parole di incoraggiamento ed il coinvolgimento è quello che ci sprona a dare il meglio di noi. Speriamo di raggiungere e superare le aspettative che state riponendo in Phalcon.',
        'flying_with_phalcon'             => 'Grazie per aver scelto di volare con Phalcon! &lt;3',

        'hosting_description'             => 'Phalcon può essere installato su qualsiasi macchina sul quale il provider offra un accesso SSH di root (o sudo). Segue una lista di compagnie affidabili che offrono questi servizi:',
        'hosting_fortrabbit_title'        => 'Fortrabbit',
        'hosting_fortrabbit_1'            => 'Fortrabbit offre molti piani di hosting (ce n\'è uno per sviluppatori ed è gratis - con alcune limitazioni) questo dovrebbe soddisfare il bisogno della maggior parte degli sviluppatori che vogliano anche solo provare Phalcon o deployare le applicazioni che lo usano.',
        'hosting_fortrabbit_2'            => "Offrono diverse <a href=':1:'>estensioni</a> che dovrebbero soddisfare anche i progetti più esigenti.",
        'hosting_fortrabbit_3'            => 'Versioni stabili di Phalcon vengono pre-installate, puoi attivarle dal tuo pannello di amministrazione.',
        'hosting_webfaction_title'        => 'WebFaction',
        'hosting_webfaction_1'            => 'WebFaction Hosting per sviluppatori. Accesso completo alla shell a server veloci con tutti i tuoi tools preferiti pre installati e mantenuti per gli utenti.',
        'hosting_webfaction_2'            => "Per installare PhalconPHP su WebFaction, segui le istruzioni indicate <a href=':1:'>qui</a>",
        'hosting_amazon_ec2_title'        => 'Amazon EC2',
        'hosting_amazon_ec2_1'            => 'Amazon Elastic Compute Cloud offre capacità computazionale cloud, scalabile e che paghi per l\'effettivo utilizzo.',
        'hosting_amazon_ec2_2'            => "Seleziona un template pre configurato di Amazon Machine Image (AMI) per inziare immediatamente. O crea una AMI contenente le tue applicazioni, librerie, dati e relative configurazioni. <a href=':1:'>Scopri di più</a>",
        'hosting_linode_title'            => "Linode",
        'hosting_linode_1'                => "Esegui il deploy e gestisci Virtual Server Linux nel Cloud di Linode. Tira su un server in pochi secondi con la distribuzione Linux che hai scelto, risorse e collocazione del nodo. <a href=':1:'>Scopri di più</a>",
        'hosting_digital_ocean_title'     => 'Digital Ocean',
        'hosting_digital_ocean_1'         => "Blazing Fast Cloud Technology. Fatto per gli sviluppatori. Esegui il deploy di un cloud server SSD in 55 secondi. <a href=':1:'>Scopri di più</a>",
        'hosting_digital_ocean_2'         => "<p>Follow this <a href=':1:'>tutorial</a> to get started</p>",
        'hosting_rackspace_title'         => "Rackspace",
        'hosting_rackspace_1'             => "I Cluod Server sono macchine virtuali su cui gira Linux o Windows&reg; Server nel Rackspace Cloud. Puoi scalare risorse comela CPU, la memoria, lo storage, aumentandole o diminuendole in base alle tue esigenze. Soprattutto, puoi pagare per quello che effettivamente utilizzi. <a href=':1:'>Scopri di più</a>",
        'hosting_install_instructions'    => 'Puoi installare Phalcon usando le istruzioni d\'installazione standard.',
        'hosting_azure_title'             => "Windows Azure",
        'hosting_azure_1'                 => "Il <a href=':1:'>Cloud di Windows Azure</a> fornisce un hosting Window altamente scalabile e gestibileper le tue applicazioni web. Usa Phalcon per contenere i costi della tua istanza.",
        'hosting_azure_2'                 => "Per installare Phalcon, segui passo dopo passo la procedura in <a href=':1:'>questo articolo SitePoint</a>.",
        'hosting_aspnix_1'                => 'ASPnix provides superior Windows web hosting services. Our customers have rated our service as outstanding. We offer economical plans for shared Windows web hosting, Virtual private servers and dedicated servers!  <a href=":1:">See more</a>',
        'hosting_aspnix_2'                => '<p>Phalcon is supported on all Windows shared web hosting packages and plans, no configuration or installation required! They offer a variety of PHP versions from 5.2 – 5.6 as well as many <a href=":1:" target="_blank">additional extensions</a>!</p>',
        'hosting_layershift_title'        => 'Layershift',
        'hosting_layershift_1'            => "You bring the code, we'll sort the servers. Next generation, auto-sizing PaaS for PHP",
        'hosting_layershift_2'            => "<p>Follow this <a href=':1'>tutorial</a> to get started</p>",

        'testimonials'                    => 'Testimoni',
        'testimonials_description'        => "DI seguito c'è una collezione di testimoni e storie di successo, portateda voi, gli sviluppatori e gli utenti di Phalcon PHP. Le email contenenti storie di successo sono sempre benvenute e le pubblicheremo sul nostro blog. Se vuoi inviarici la tua storia di successo ed entrare in contatto con noi sentiti libero di scriverci a <a href=\"mailto::1:'>:2:</a>.",
        'testimonials_1'                  => "Saluti team di Phalcon! Ho un progetto, sviluppato con il Phalcon framework. E un Guitarama (<a href=':1:'>:2:</a>) - tablature per chitarra e catalogo di accordi. Il sito è rivolto ad un pubblico Russo, e usa la lingua Russa, ma spero che non ci sia problema a comprendere la maggior parte delle pagine. Il sito è stato rilanciato su una nuova piattaforma ad inizio Gennaio 2013 e da allora è cresciuto molto. Conteggio delle visite giornaliere: ~1500 visitatori unici, ~5000 visiualizzazioni di pagina. Il sito gira su un vecchio server fisico 1xP4-3Ghz, 4GB RAM. Ancora unavolta, grazie per lo sforzo e tuttoquello che state facendo :) Michael.",
        'testimonials_2'                  => "Ciao team di Phalcon. Volevo giusto condividere con voi la mia storia di successo usando Phalcon sui progetti <a href=':1:'>:2:</a> and <a href=':3:'>:4:</a>, i siti più visitati e con maggior traffico del Kazakhstan, classificati nella TOP-10 dei siti della CSI. Entrambe i siti si basano su una singola API simil-RESTfull scritta con Phalcon\Mvc\Micro. Su carichi elevati l'API processa qualcosa come 400 richieste per secondo e non è un limite. Passare a Phalcon ci ha permesso di ridurre il tempo di generazione delle risposte ed il consumo di CPU e RAM, come di ridurre il tempo del processo di sviluppo. Continueremo ad usare Phalcon sui nostri nuovi progetti. Grazie per l'ottimo lavoro che state facendo. I migliori auguri, Nikita Vershinin, Capo Sviluppatore, Koelsa.kz e krisha.kz",
        'testimonials_3'                  => "Team di Phalcon, il framework che voi ragazzi avede creato è semplciemente fantastico. Non ho mai usato un framework che combini velocità, efficienza, brevità e naturalezza in un solo package. Intendo sstenere e contribuire al progetto in qualsiasi modo io possa. Recentemente ho abbracciato un progeto da circa 800 ore e sono felice di dire che stiamo usando Phalcon. Bravi. Brian Seymour",
        'testimonials_4'                  => "Ciao ragazzi, mi sono appena imbattuto in Phalcon è semplicemente fantastico! Volevo semplicemente dirvi che siete fantastici! Grazie mille per questo framework e continuate con questo ottimo lavoro! Ivan Penchev",
        'testimonials_5'                  => "Ciao ragazzi, ho scritto un semplice url-shortner service con phalcon. E' veramente strabiliante!. <a href=':1:'>:2:</a>. <a href=':3:'>:4:</a> c'è una demo :) Murat Küçükosman",
        'testimonials_6'                  => "Saluti Team di Phalcon, ho creato un piccolo progetto per gli utenti Polacchi del vostro framework. Devo ammetere che le performance sono impressionanti, congratulazioni per il lavoro. Servizi di validazione del contenuto delle pagine in Lingua Polacca <a href=':1:'></a>:2:</a>",
        'testimonials_7'                  => "Ciao ragazzi! Volevo condividere con voi lultima release del nostro progetto - <a href=':1:'>:2:</a>. Passare a phalcon ci ha permesso di dimezzare il carico sui nostri server paragonato a quello del framework precedente, il che è grandioso!",

        'support_note'                    => "Molti bug vengono segnalati da parte di utenti che non stanno utilizzando l'ultima versione. Perfavore visita la :1:, scarica l'ultima versione disponibile (o compilala) e conferma se il problema che stavi fronteggiando permanga un bug.",
        'support_download_page'           => "pagina dei download",
        'support_documentation_1'         => "Perfavore usa :1: prima di ogni altro tentativo. Puoi anche usare la funzionalità di ricerca nei documenti per trovare quello che stai cercando. Se la tua domanda permane senza risposta, in seguito trovi altre opzioni:",
        'support_phalcon_forum'           => "Forum Phalcon",
        'support_forum_1'                 => "Puoi porci delle domande sul nostro <a href=':1:'>Forum di discussione</a>",
        'support_irc'                     => "Canale IRC",
        'support_irc_1'                   => "Puoi trovarci sul canale :1: di Freenode.",
        'support_stack_overflow_1'        => "Se sei familiare o preferisci Stack Overflow, c'è un <a href=':1:'>phalcon</a> tag che puoi usare per cercare o taggare le tue query.",
        'support_please_note'             => "Nota bene:",
        'support_please_note_1'           => "Stack Overflow non è dedicato al supporto di Phalcon",
        'support_please_note_2'           => "Perfavore non segnalare nuovi bug qui. Usa invece <a href=':1:'>l'issue tracker</a> di Github per farlo.",
        'support_please_note_3'           => "Perfavore non pubblicare qui le tue richieste per nuove feature. Cortesemente usa <a href=':1:'>l'issue tracker</a> di Github per farlo.",
        'support_please_note_4'           => "Accertati di aver incluso il tag 'phalcon' nella tua domanda",
        'support_please_note_5'           => "Accertati di aver menzionato 'Phalcon' nell domanda",
        'support_reporting_a_bug'         => "Riportare un bug",
        'support_reporting_a_bug_1'       => "Per favore riporta un bug solo quando hai esaurito tutte le seguenti opzioni, usando <a href=':1:'>l'issue tracker</a> di Github.",


    );

    // return $messages;