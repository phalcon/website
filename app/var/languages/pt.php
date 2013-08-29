<?php

    /**
     * Need to keep this as array() vs. [] for Transilex
     */
    $messages = array(
        'language_text'                   => '',
        'download'                        => 'Baixar',
        'documentation'                   => 'Documentação',
        'forum'                           => 'Fórum',
        'blog'                            => 'Blog',
        'support'                         => 'Suporte',
        'donate'                          => 'Doação',
        'store'                           => 'Loja',
        'github'                          => 'GitHub',
        'phalcon_description'             => "<strong>Phalcon</strong> é um framework para web implementado como uma extensão em C oferecendo <a href=':1:'>alta performance</a> e baixo consumo de recursos.",
        'the_fastest_php_framework'       => 'O mais rápido<br />Framework PHP',
        'try_online'                      => 'Experimente Online',
        'see_screencasts'                 => 'Ver Screencasts',
        'everything_you_need_upper'       => 'TUDO O QUE VOCÊ PRECISA',
        'full_mvc_applications'           => "Aplicações completamente <a href=':1:'>MVC</a>",
        'single_module'                   => '',
        'multi_module'                    => '',
        'micro_applications'              => 'Micro Aplicações',
        'orm'                             => 'ORM',
        'transactions'                    => 'Transações',
        'behaviors'                       => 'Comportamentos',
        'relations'                       => '',
        'phql'                            => 'PHQL',
        'events'                          => 'Eventos',
        'validations'                     => 'Validações',
        'hydration'                       => '',
        'logging'                         => '',
        'profiling'                       => '',
        'sharding'                        => '',
        'odm_for_mongo'                   => 'ODM para Mongo',
        'template_engine_volt'            => '',
        'di_ioc'                          => 'DI/IOC',
        'events_management'               => 'Gestão de Eventos',
        'encryption'                      => 'Encriptação',
        'http_request'                    => 'Requisição HTTP',
        'http_response'                   => 'Respostas',
        'http_cookies'                    => 'Cookies',
        'escaping'                        => '',
        'filtering'                       => 'Filtragem',
        'forms_builder'                   => 'Construtor de Formulários',
        'forms_validation'                => 'Validação',
        'flash_messages'                  => '',
        'cache'                           => 'Cache',
        'pagination'                      => 'Paginação',
        'annotations'                     => 'Anotações',
        'security'                        => 'Segurança',
        'translations'                    => 'Traduções',
        'assets_management'               => '',
        'universal_auto_loader'           => 'Auto-Loader Universal',
        'cli'                             => 'CLI',
        'phalcon_forum_upper'             => 'FÓRUM PHALCON',
        'stack_overflow_upper'            => 'STACK OVERFLOW',
        'github_upper'                    => 'GITHUB',
        'email_us_upper'                  => 'CONTATE-NOS',
        'services_upper'                  => 'SERVIÇOS',
        'consulting_upper'                => 'CONSULTORIA',
        'requirements_analysis'           => 'Análise de Requisitos',
        'implementation'                  => 'Implementação',
        'ongoing_support'                 => 'Suporte Contínuo',
        'read_more'                       => 'Leia mais',
        'hosting_upper'                   => 'HOSPEDAGEM',
        'phalcon_can_be_installed'        => 'Phalcon pode ser instalado em',
        'main_upper'                      => 'PRINCIPAL',
        'consulting'                      => 'Consultoria',
        'hosting'                         => 'Hospedagem',
        'support_upper'                   => 'SUPORTE',
        'forum_community'                 => 'Fórum / Comunidade',
        'stack_overflow'                  => 'Stack Overflow',
        'issue_tracker'                   => '',
        'get_involved_upper'              => 'ENVOLVA-SE',
        'team'                            => 'Time',
        'about'                           => 'Sobre',
        'roadmap'                         => '',
        'donate_to_phalcon'               => 'Doação para Phalcon:',
        'or'                              => 'ou',
        'twitter'                         => 'Twitter',
        'facebook'                        => 'Facebook',
        'google_plus'                     => 'Google Plus',
        'vimeo'                           => 'Vimeo',

        'download_phalcon'                => 'Baixar Phalcon',
        'download_linux'                  => 'Linux/Unix/Mac',
        'download_windows'                => 'DLLs para Windows',
        'download_developer_tools'        => 'Ferramentas para Desenvolvedores',
        'download_ide_stubs'              => 'Integração com IDE',
        'download_note'                   => '',
        'download_compilation'            => 'Compilação',
        'download_compilation_1'          => 'No Linux, você pode facilmente compilar e instalar a extensão a partir do código fonte.',
        'download_requirements'           => 'Requisitos',
        'download_requirements_1'         => 'Precisamos de alguns pacotes previamente instalados:',
        'download_requirements_2'         => 'Recursos de desenvolvimento com PHP 5.x',
        'download_requirements_3'         => 'Compilador GCC',
        'download_compilation_11'         => '',
        'download_compilation_12'         => '2. Adicione a extensão no seu php.ini:',
        'download_compilation_13'         => '',
        'download_debian'                 => 'Debian',
        'download_debian_1'               => "Temos um repositório graciosamente oferecido por <a href=':1:'>FortRabbit</a> <a href=':2:'>aqui</a>",
        'download_debian_2'               => 'O nome do pacote é php5-phalcon',
        'download_arch'                   => 'Arch Linux',
        'download_arch_1'                 => "Há um PKGBUILD para ArchLinux, disponível <a href=':1:'>aqui</ a>",
        'download_opensuse'               => 'OpenSUSE',
        'download_opensuse_1'             => "",
        'download_freebsd'                => 'FreeBSD',
        'download_freebsd_1'              => '',
        'download_dependencies'           => 'Dependências',
        'download_dependencies_1'         => 'Embora Phalcon não seja vinculado à outras extensões, ele utiliza algumas delas para oferecer certas funcionalidades. As extensões utilizadas são:',
        'download_dependencies_2'         => 'Não é necessário que todas as extensões acima estejam presentes no sistema onde Phalcon for instalado. Você pode instalar somente aquelas conforme suas necessidades. Por exemplo, se você usa um banco de dados MySQL, você pode então adicionar somente PDO e PDO/MySQL, ignorando as extensões Oracle, SQLite, Postgresql e Mongo.',
        'download_need_help'              => 'Precisa de ajuda?',
        'download_need_help_1'            => "Confira em nossa <a href=':1:'>página de suporte</a> para saber formas de obter suporte. Faremos o nosso melhor para ajudar você.",

        'download_windows_note'           => '',
        'download_windows_stable'         => 'Versões Estáveis/Master',
        'download_windows_installation'   => 'Instalação',
        'download_windows_installation_1' => "Para usar Phalcon no Windows, você pode baixar uma biblioteca em um arquivo DLL. Edite seu php.ini, acrescente a extensão no final, e reinicie o servidor para carregar a extensão. <a href=':1:'>Mais</ a>.",
        'download_windows_guides'         => 'Guias Relacionados',
        'download_windows_guides_xampp'   => 'Instalação no XAMPP',
        'download_windows_guides_wamp'    => 'Instalação no WAMPP',
        'download_windows_alpha'          => 'Versões Alpha/Beta',
        'download_source_code'            => "Código fonte: <a href=':1:' target='_download' title='GitHub Repo'>github</a>",
        'download_source_code_switch'     => "",
        'download_no_alpha_beta'          => 'Não há versões alpha/beta disponíveis no momento.',
        'download_windows_older'          => 'Versões anteriores',

        'download_devtools_1'             => 'Estas ferramentas são uma coleção de scripts úteis para gerar o esqueleto de código. Componentes do Core de sua aplicação podem ser gerados através de um simples comando, permitindo a você facilmente desenvolver aplicações com Phalcon.',
        'download_devtools_docs'          => "Documentação: <a href=':1:'>Ferramentas para Desenvolvedores Phalcon</a>",
        'download_devtools_composer'      => 'Instalação via Composer',
        'download_devtools_composer_1'    => 'Instale o Composer em um local comum ou em seu projeto:',
        'download_devtools_composer_2'    => 'Crie o arquivo composer.json da seguinte forma:',
        'download_devtools_composer_3'    => 'Execute a instalação pelo composer:',
        'download_devtools_composer_4'    => '',
        'download_devtools_download'      => 'Você pode baixar ou clonar um pacote independente de plataforma contendo as ferramentas de desenvolvimento através do <a href=\':1:\'>Github</a>.',

        'consulting_header'               => "Oferecemos serviços de consultoria para implementações com Phalcon <br /> e/ou PHP",
        'requirements_analysis_1'         => '',
        'requirements_analysis_2'         => 'Nós podemos oferecer serviços de análise de requisitos, dialogar com os clientes e traduzir sua visão para especificações exatas para os desenvolvedores.',
        'implementation_1'                => 'Se você deseja contratar-nos para desenvolver sua aplicação, ficaremos mais do que contentes em fazê-lo. Utilizando as mais recentes tecnologias, podemos oferecer uma solução robusta para sua tarefa ou projeto, completa com testes e documentação.',
        'ongoing_support_1'               => 'Para clientes que estão interessados em um contrato de apoio permanente nós oferecemos suporte para os seus projetos em uma base contínua.
Clientes podem comprar horas de suporte ( mínimo de 2 horas ) à 50 USD por hora.',
        'ongoing_support_2'               => 'As horas de suporte não expiram e podem serem usadas sempre que necessário. Para os clientes que desejam usar um esquema de apoio contínuo, oferecemos planos flexíveis que atendam melhor às suas necessidades.',
        'sponsors'                        => 'Patrocinadores',
        'sponsors_1'                      => 'Para aqueles que desejam patrocinar o nosso trabalho mais o desenvolvimento do Phalcon, oferecemos várias opções de patrocínio que se encaixam em qualquer orçamento.',
        'sponsors_2'                      => '',
        'contact'                         => 'Contato',
        'contact_1'                       => "",

        'phalcon_team'                    => 'Time Phalcon',
        'team_andres_1'                   => '',
        'team_andres_2'                   => "",
        'team_andres_3'                   => 'Através desta inovadora aproximação é que Phalcon surgiu. Um framework PHP escrito em C que oferece uma riqueza de recursos para desenvolvedores enquanto maximiza a performance e mantém um baixo consumo de recursos.',
        'team_andres_4'                   => 'Andres é um dos desenvolvedores do núcleo do Phalcon e sua inspiração.',
        'team_nikos_1'                    => 'Nikos está na indústria de TI a cerca de 20 anos. Ele foi apresentado ao mundo PHP em 2000 e tem utilizado a linguagem tanto em projetos pessoais, bem como em projetos para seus contratantes.',
        'team_nikos_2'                    => 'Ele ama descobrir novas tecnologias e formas de integrá-las com aplicações existentes e assim colher os benefícios que elas oferecem.',
        'team_nikos_3'                    => 'Ele é um ávido apoiador do Desenvolvimento Orientado a Testes (TDD) e sempre busca obter uma cobertura completa em seu código.',
        'team_nikos_4'                    => "",
        'team_nikolay_1'                  => 'Nikolay tem desenvolvido aplicações web por cerca de 10 anos. Ele esteve envolvido em alta performance bem como em websites e projetos complexos.',
        'team_nikolay_2'                  => '',
        'team_nikolay_3'                  => '',
        'team_nikolay_4'                  => '',
        'team_nikolay_5'                  => "",

        'get_involved'                    => 'Faça Parte',
        'about_description_1'             => "",
        'about_description_2'             => '',
        'about_translations_1'            => "Estamos buscando alcançar quantos desenvolvedores o possível, rompendo as barreiras de idiomas. Estamos utilizando <a href=':1:'>:2:</a>, para manipular todas as palavras ou frases que precisam ser traduzidas para este site. O repositório do projeto está localizado <a href=':3:'>aqui</a> e abaixo você pode ver o status atual dos nossos esforços de tradução.",
        'documentation_upper'             => 'DOCUMENTAÇÃO',
        'about_documentation_1'           => 'O repositório deste site está disponível no github. Sinta-se livre para melhorar a redação, correção de erros de digitação, adicionar exemplos, adicionar artigos, etc. Além disso, se você pode traduzir alguma parte do conteúdo para outro idioma, será muito apreciado!',
        'screencasts'                     => 'Screencasts',
        'about_screencasts_1'             => "",
        'tests'                           => 'Testes',
        'about_tests_1'                   => "",
        'sample_applications'             => 'Amostras de Aplicações',
        'about_sample_apps_1'             => '',
        'evangelism'                      => '',
        'about_evangelism_1'              => "",
        'share_your_experiences'          => 'Compartilhe suas experiências',
        'about_share_experiences_1'       => "",
        'about_blog_1'                    => "",
        'donations_sponsoring'            => 'Doações / Patrocínio',
        'about_sponsoring_1'              => "",
        'social_networks'                 => 'Redes Sociais',
        'about_social_networks_1'         => "Phalcon está evoluindo em uma base diária, através do nosso desejo de torná-lo melhor. As redes sociais são parte de nossas vidas agora, e todos nós interagimos com os outros através delas. Compartilhando sua experiência com Phalcon em seus círculos sociais você aumentará muito a visibilidade do projeto. Mais e mais pessoas vão se envolver em nossa comunidade, tornando-o mais poderoso, mais rico em recursos e popular. Por exemplo, dê um '+1', compartilhe mensagens que estamos constantemente postando em todas as redes sociais, participe das discussões destes postagens. As pessoas que descobrirem Phalcon através de suas interações irão agradecê-lo!",
        'about_social_networks_2'         => "Nós temos presença na maioria das redes sociais mais populares. Seguindo-nos, você está nos ajudando a aumentar a visibilidade do projeto:",
        'follow_on_twitter'               => 'Siga-nos no Twitter',
        'facebook_page'                   => 'Página no Facebook',
        'google_plus_page'                => 'Página no Google+',
        'official_blog'                   => 'Blog Oficial',
        'star_on_github'                  => '',
        'thank_you'                       => 'Obrigado!',
        'about_thank_you_1'               => '',
        'flying_with_phalcon'             => '',

        'hosting_description'             => 'Phalcon pode ser instalado em qualquer máquina na qual o provedor de hospedagem oferece acesso de root por conexão SSH (ou sudo). Abaixo está uma lista de empresas conceituadas que oferecem esses serviços:',
        'hosting_fortrabbit_1'            => '',
        'hosting_fortrabbit_2'            => "",
        'hosting_fortrabbit_3'            => '',
        'hosting_webfaction_1'            => '',
        'hosting_webfaction_2'            => "",
        'hosting_amazon_ec2_1'            => '',
        'hosting_amazon_ec2_2'            => "",
        'hosting_linode_1'                => "",
        'hosting_digital_ocean_1'         => "",
        'hosting_rackspace_1'             => "",
        'hosting_install_instructions'    => 'Instale Phalcon utilizando as instruções padrão de instalação.',

        'testimonials'                    => 'Testemunhos',
        'testimonials_description'        => "Abaixo está uma coleção de testemunhos e histórias de sucesso, de vocês, os desenvolvedores e usuários de Phalcon PHP. Nós sempre apreciamos e-mails com histórias de sucesso e estaremos postando-os em nosso blog. Se você quiser enviar sua história de sucesso ou entrar em contato conosco, não hesite em nos enviar seu email para <a href='mailto::1:'>:2:</ a>.",
        'testimonials_1'                  => "Saudações, Time Phalcon! Eu tenho um projeto, desenvolvido com o framework Phalcon. Chama-se Guitarama (<a href='http://guitarama.ru'>http://guitarama.ru</a>) - um catálogo de tablaturas e acordes de guitarra. O site tem como alvo os usuários da Rússia, e utiliza o idioma Russo, mas espero eu que não haverá problemas para compreender a maioria das páginas. O site foi re-lançado em uma nova plataforma no início de Janeiro de 2013, e desde então tem mostrado um crescimento constante. Visitas diárias atuais: ~1500 visitantes únicos, ~5000 visualizações de páginas. O site está hospedado em um antigo servidor físico, um 1xP4-3Ghz com 4GB de RAM. Mais uma vez, agradeço a vocês pelo excelente framework e por tudo o que estão fazendo :) Michael.",
        'testimonials_2'                  => "",
        'testimonials_3'                  => "Equipe Phalcon, o framework que vocês criaram é incrível. Eu nunca usei um framework que combina velocidade, eficiência, brevidade e naturalidade em um único pacote. Tenho a intenção de defender e contribuir para o projeto de qualquer maneira que eu puder. Eu embarquei recentemente em um projeto  de cerca de 800 horas e estou feliz em dizer que estamos usando o Framework Phalcon. Bravo. Brian Seymour",
        'testimonials_4'                  => "Oi pessoal, eu apenas dei uma olhada no Phalcon e é simplesmente fantástico! Eu apenas queria dizer a você o quão incríveis vocês são! Então, obrigado por este framework e mantenham o bom trabalho! Ivan Penchev",
        'testimonials_5'                  => "Oi pessoal, eu escrevi um serviço simples de encurtador de url com Phalcon. Isso foi realmente incrível! <a href='https://github.com/blackbunny/Url-Shortener'> https://github.com/blackbunny/Url-Shortener </a>. A demo está aqui <a href='http://u.dolap.co'>http://u.dolap.co</a> :) Murat Küçükosman",

        'support_note'                    => "Diversos bugs aparecem porque os usuários não estão executando a versão mais recente. Por favor acesse a :1:, baixe a versão mais recente disponível (ou compile-a) e confirme se o problema que vem experimentando é de fato um bug.",
        'support_download_page'           => "página de download",
        'support_documentation_1'         => "Por favor, use a :1: antes de qualquer coisa. Você também pode usar a ferramenta de pesquisa em nossos documentos para encontrar pelo que você está procurando. Se sua dúvida ainda não for respondida, existem outras opções abaixo. ",
        'support_phalcon_forum'           => "Fórum Phalcon",
        'support_forum_1'                 => "Você pode deixar sua dúvida em nosso <a href=':1:'>Fórum de Discussões</a>",
        'support_irc'                     => "Canal IRC",
        'support_irc_1'                   => "Você pode nos encontrar no canal :1: no Freenode.",
        'support_stack_overflow_1'        => "Se você é mais habituado ou prefere o Stack Overflow, existe a tag <a href=':1:'>phalcon</a> que você pode utilizar para pesquisar ou marcar sua dúvida.",
        'support_please_note'             => "Favor notar:",
        'support_please_note_1'           => "",
        'support_please_note_2'           => "",
        'support_please_note_3'           => "",
        'support_please_note_4'           => "Certifique-se de que você incluiu a tag 'phalcon' com sua dúvida",
        'support_please_note_5'           => "Certifique-se de que mencionou 'Phalcon' na dúvida",
        'support_reporting_a_bug'         => "Relatando um bug",
        'support_reporting_a_bug_1'       => "",


    );

    // return $messages;