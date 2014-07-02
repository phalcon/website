<?php

    /**
     * Need to keep this as array() vs. [] for Transilex
     */
    $messages = array(
        'language_text'                   => 'Inglês',
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
        'single_module'                   => 'Módulo-Único',
        'multi_module'                    => 'Multi-Módulo',
        'micro_applications'              => 'Micro Aplicações',
        'orm'                             => 'ORM',
        'transactions'                    => 'Transações',
        'behaviors'                       => 'Comportamentos',
        'relations'                       => 'Relações',
        'phql'                            => 'PHQL',
        'events'                          => 'Eventos',
        'validations'                     => 'Validações',
        'hydration'                       => 'Hidratação',
        'logging'                         => 'Logs',
        'profiling'                       => 'Profiling',
        'sharding'                        => 'Sharding',
        'odm_for_mongo'                   => 'ODM para Mongo',
        'template_engine_volt'            => 'Mecanismo de Templates (Volt)',
        'di_ioc'                          => 'DI/IOC',
        'events_management'               => 'Gestão de Eventos',
        'encryption'                      => 'Encriptação',
        'http_request'                    => 'Requisição HTTP',
        'http_response'                   => 'Respostas',
        'http_cookies'                    => 'Cookies',
        'escaping'                        => 'Escape',
        'filtering'                       => 'Filtragem',
        'forms_builder'                   => 'Construtor de Formulários',
        'forms_validation'                => 'Validação',
        'flash_messages'                  => 'Mensagens Rápidas',
        'cache'                           => 'Cache',
        'pagination'                      => 'Paginação',
        'annotations'                     => 'Anotações',
        'security'                        => 'Segurança',
        'translations'                    => 'Traduções',
        'assets_management'               => 'Gestão de Ativos',
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
        'issue_tracker'                   => 'Acompanhar Questões',
        'get_involved_upper'              => 'ENVOLVA-SE',
        'team'                            => 'Time',
        'about'                           => 'Sobre',
        'roadmap'                         => 'Roteiro',
        'donate_to_phalcon'               => 'Doação para Phalcon:',
        'or'                              => 'ou',
        'twitter'                         => 'Twitter',
        'facebook'                        => 'Facebook',
        'google_plus'                     => 'Google Plus',
        'vimeo'                           => 'Vimeo',
        'amazing_contributors'            => 'Nossos fantásticos contribuidores',

        'download_phalcon'                => 'Baixar Phalcon',
        'download_linux'                  => 'Linux/Unix/Mac',
        'download_windows'                => 'DLLs para Windows',
        'download_developer_tools'        => 'Ferramentas para Desenvolvedores',
        'download_ide_stubs'              => 'Integração com IDE',
        'download_note'                   => 'Phalcon é uma extensão em C, então você precisará baixar um binário para a sua plataforma ou compilá-lo a partir do código fonte.',
        'download_compilation'            => 'Compilação',
        'download_compilation_1'          => 'No Linux, você pode facilmente compilar e instalar a extensão a partir do código fonte.',
        'download_requirements'           => 'Requisitos',
        'download_requirements_1'         => 'Precisamos de alguns pacotes previamente instalados:',
        'download_requirements_2'         => 'Recursos de desenvolvimento com PHP 5.x',
        'download_requirements_3'         => 'Compilador GCC',
        'download_compilation_11'         => '1. Para criar a extensão a partir do código fonte em C siga estes passos:',
        'download_compilation_12'         => '2. Adicione a extensão no seu php.ini:',
        'download_compilation_13'         => '3. Finalmente, reinicie o servidor web',
        'download_debian'                 => 'Debian',
        'download_debian_1'               => "Temos um repositório graciosamente oferecido por <a href=':1:'>FortRabbit</a> <a href=':2:'>aqui</a>",
        'download_debian_2'               => 'O nome do pacote é php5-phalcon',
        'download_arch'                   => 'Arch Linux',
        'download_arch_1'                 => "Há um PKGBUILD para ArchLinux, disponível <a href=':1:'>aqui</ a>",
        'download_opensuse'               => 'OpenSUSE',
        'download_opensuse_1'             => "Há um pacote disponível <a href=':1:'> aqui </ a> ( graças a <a href=':2:'> Mariusz Łączak </ a> )",
        'download_freebsd'                => 'FreeBSD',
        'download_freebsd_1'              => 'Uma porta está disponível para FreeBSD. Você só precisa destes poucos comandos para instalá-lo:',
        'download_dependencies'           => 'Dependências',
        'download_dependencies_1'         => 'Embora Phalcon não seja vinculado à outras extensões, ele utiliza algumas delas para oferecer certas funcionalidades. As extensões utilizadas são:',
        'download_dependencies_2'         => 'Não é necessário que todas as extensões acima estejam presentes no sistema onde Phalcon for instalado. Você pode instalar somente aquelas conforme suas necessidades. Por exemplo, se você usa um banco de dados MySQL, você pode então adicionar somente PDO e PDO/MySQL, ignorando as extensões Oracle, SQLite, Postgresql e Mongo.',
        'download_need_help'              => 'Precisa de ajuda?',
        'download_need_help_1'            => "Confira em nossa <a href=':1:'>página de suporte</a> para saber formas de obter suporte. Faremos o nosso melhor para ajudar você.",

        'download_windows_note'           => 'Nós altamente recomendamos que você use a versão mais recente do PHP correspondente à nossas DLLs, de modo a aproveitar o conjunto completo de recursos de Phalcon.',
        'download_windows_stable'         => 'Versões Estáveis/Master',
        'download_windows_installation'   => 'Instalação',
        'download_windows_installation_1' => "Para usar Phalcon no Windows, você pode baixar uma biblioteca em um arquivo DLL. Edite seu php.ini, acrescente a extensão no final, e reinicie o servidor para carregar a extensão. <a href=':1:'>Mais</ a>.",
        'download_windows_guides'         => 'Guias Relacionados',
        'download_windows_guides_xampp'   => 'Instalação no XAMPP',
        'download_windows_guides_wamp'    => 'Instalação no WAMPP',
        'download_windows_alpha'          => 'Versões Alpha/Beta',
        'download_source_code'            => "Código fonte: <a href=':1:' target='_download' title='GitHub Repo'>github</a>",
        'download_source_code_switch'     => "Código Fonte (por favor selecione o branch pertinente): <a href=':1:' target='_download' title='GitHub Repo'>github</a>",
        'download_no_alpha_beta'          => 'Não há versões alpha/beta disponíveis no momento.',
        'download_windows_older'          => 'Versões anteriores',

        'download_devtools_1'             => 'Estas ferramentas são uma coleção de scripts úteis para gerar o esqueleto de código. Componentes do Core de sua aplicação podem ser gerados através de um simples comando, permitindo a você facilmente desenvolver aplicações com Phalcon.',
        'download_devtools_docs'          => "Documentação: <a href=':1:'>Ferramentas para Desenvolvedores Phalcon</a>",
        'download_devtools_composer'      => 'Instalação via Composer',
        'download_devtools_composer_1'    => 'Instale o Composer em um local comum ou em seu projeto:',
        'download_devtools_composer_2'    => 'Crie o arquivo composer.json da seguinte forma:',
        'download_devtools_composer_3'    => 'Execute a instalação pelo composer:',
        'download_devtools_composer_4'    => 'Crie um link simbólico para o script phalcon.php:',
        'download_devtools_download'      => 'Você pode baixar ou clonar um pacote independente de plataforma contendo as ferramentas de desenvolvimento através do <a href=\':1:\'>Github</a>.',

        'download_vagrant'                => 'Vagrant',
        'download_vagrant_boxes'          => 'Vagrant Boxes',
        'download_vagrant_1'              => "O <a href=':1:'>Vagrant</a> é uma excelente ferramenta para criar e configurar ambientes de desenvolvimento leves, reproduzíveis e portáteis.",
        'download_vagrant_2'              => "Use qualquer uma das seguintes boxes para testar ou desenvolver com Phalcon em um ambiente previamente configurado.",
        'download_box_1'                  => "Box #1",
        'download_box_2'                  => "Box #2",
        'download_box_user_pass'          => "MySQL Usuário: :1: Senha: :2:",
        'download_box_doc_root'           => "Document Root: :1:",
        'download_examples'               => "Exemplos pré-instalados",
        'download_examples_1'             => "Os seguintes exemplos estão pré-instalados em cada box do vagrant:",

        'consulting_header'               => "Oferecemos serviços de consultoria para implementações com Phalcon <br /> e/ou PHP",
        'requirements_analysis_1'         => 'Um dos maiores problemas que os desenvolvedores enfrentam é o fato de que muitos projetos não têm requisitos adequadamente definidos. Portanto, na maioria das vezes o que o cliente quer é totalmente diferente do que o desenvolvedor entende e posteriormente entrega.',
        'requirements_analysis_2'         => 'Nós podemos oferecer serviços de análise de requisitos, dialogar com os clientes e traduzir sua visão para especificações exatas para os desenvolvedores.',
        'implementation_1'                => 'Se você deseja contratar-nos para desenvolver sua aplicação, ficaremos mais do que contentes em fazê-lo. Utilizando as mais recentes tecnologias, podemos oferecer uma solução robusta para sua tarefa ou projeto, completa com testes e documentação.',
        'ongoing_support_1'               => 'Para clientes que estão interessados em um contrato de apoio permanente nós oferecemos suporte para os seus projetos em uma base contínua.
Clientes podem comprar horas de suporte ( mínimo de 2 horas ) à 50 USD por hora.',
        'ongoing_support_2'               => 'As horas de suporte não expiram e podem serem usadas sempre que necessário. Para os clientes que desejam usar um esquema de apoio contínuo, oferecemos planos flexíveis que atendam melhor às suas necessidades.',
        'sponsors'                        => 'Patrocinadores',
        'sponsors_1'                      => 'Para aqueles que desejam patrocinar o nosso trabalho mais o desenvolvimento do Phalcon, oferecemos várias opções de patrocínio que se encaixam em qualquer orçamento.',
        'sponsors_2'                      => 'Adicionalmente, os clientes podem querer certas funcionalidades implementadas que normalmente levariam muito mais tempo para fazer devido à sua popularidade ou complexidade. Nós certamente podemos acomodar esses pedidos em nossas taxas normais.',
        'contact'                         => 'Contato',
        'contact_1'                       => "Sinta-se livre para <a href=':1:'> contactar-nos </ a> para discutir seus requisitos e permita-nos oferecer uma solução que melhor atenda suas necessidades e seu orçamento. Nenhum projeto é tão grande ou tão pequeno.",

        'phalcon_team'                    => 'Time Phalcon',
        'team_andres_1'                   => 'Andres não é um estranho para projetos de código aberto. Nos últimos nove anos, ele têm planejado e lançado frameworks para PHP e têm se envolvido no desenvolvimento web - sua principal paixão.',
        'team_andres_2'                   => "Como campeão da TR35, o principal foco de Andres  é sempre escolher e implementar ou usar a ferramenta certa para o trabalho, principalmente com foco no desempenho. Portanto, em 2011, uma nova idéia estava em trabalho, para criar um novo tipo de framework para desenvolvedores PHP, que tenha foco em usabilidade, recursos e principalmente no desempenho.",
        'team_andres_3'                   => 'Através desta inovadora aproximação é que Phalcon surgiu. Um framework PHP escrito em C que oferece uma riqueza de recursos para desenvolvedores enquanto maximiza a performance e mantém um baixo consumo de recursos.',
        'team_andres_4'                   => 'Andres é um dos desenvolvedores do núcleo do Phalcon e sua inspiração.',
        'team_nikos_1'                    => 'Nikos está na indústria de TI a cerca de 20 anos. Ele foi apresentado ao mundo PHP em 2000 e tem utilizado a linguagem tanto em projetos pessoais, bem como em projetos para seus contratantes.',
        'team_nikos_2'                    => 'Ele ama descobrir novas tecnologias e formas de integrá-las com aplicações existentes e assim colher os benefícios que elas oferecem.',
        'team_nikos_3'                    => 'Ele é um ávido apoiador do Desenvolvimento Orientado a Testes (TDD) e sempre busca obter uma cobertura completa em seu código.',
        'team_nikos_4'                    => "Nikos,  continuando  interessado em tecnologias novas e inovadoras que fogem à regra, apresentaram-lhe  Phalcon. Ele se juntou à equipe de desenvolvimento do Core e suas tarefas envolvem principalmente a coordenação de NFRs e correções de bugs, ajudar com os testes, documentação e da incubadora. Nikos também é responsável por manter a DLLs do Windows para o projeto e oferece apoio sempre que possível.",
        'team_nikolay_1'                  => 'Nikolay tem desenvolvido aplicações web por cerca de 10 anos. Ele esteve envolvido em alta performance bem como em websites e projetos complexos.',
        'team_nikolay_2'                  => 'Nikolay vem trabalhando com projetos "Open Source" por um longo tempo, utilizando-os sempre que os requisitos o permitem. Assim, ele começou a usar o seu tempo pessoal para contribuir à comunidade, se integrando a projetos, oferecendo mudanças e sugestões na arquitetura, bem como  de desempenho. Ele tem sido fundamental na melhoria de projetos Open Source CMS recebendo um feedback positivo por parte da comunidade.',
        'team_nikolay_3'                  => 'Seu envolvimento contínuo com projetos Open Source ajudou-o a avançar seu conhecimento técnico ao mesmo tempo respeitando e contribuindo à mentalidade da comunidade.',
        'team_nikolay_4'                  => 'Nikolay é um ávido apoiador em maximizar a performance de aplicações web. Após sua apresentação ao Phalcon, ele decidiu seguir e usar o projeto e tornou-se um Evangelista do mesmo. Ele lidera o apoio através da comunidade da Rússia e oferece recursos para desenvolvedores do idioma russo.',
        'team_nikolay_5'                  => "Suas contribuições incluem: uma cópia do site principal no idioma Russo (<a href=':1:'>http://www.phalconphp.ru</a>), uma cópia do repositório da documentação também no idioma Russo (<a href=':2:'>http://docs.phalconphp.ru</a>), constantes mudanças e correções para a documentação no idioma Inglês, um grupo na rede social Vkontakte (<a href=':3:'>http://vk.com/phalconphp</a>).",

        'get_involved'                    => 'Faça Parte',
        'about_description_1'             => "Projetos surpreendentes precisam de mãos surpreendentes. Podemos ainda  não te conhecer , mas acho que você seria um grande ajuste para a construção de uma melhor web. Juntos, nós estamos prontos para mudar o mundo! Aqui no Phalcon, estamos construindo um novo quadro de geração para PHP, queremos dar-lhe um desempenho incrível, ajudando você a desenvolver de uma forma fácil e divertida.",
        'about_description_2'             => "We hope that you enjoy Phalcon as much as we do. We always welcome your collaboration and help! <strong>You don't have to be a C developer to help Phalcon!</strong> There are many other areas that you can contribute:",
        'about_translations_1'            => "Estamos buscando alcançar quantos desenvolvedores o possível, rompendo as barreiras de idiomas. Estamos utilizando <a href=':1:'>:2:</a>, para manipular todas as palavras ou frases que precisam ser traduzidas para este site. O repositório do projeto está localizado <a href=':3:'>aqui</a> e abaixo você pode ver o status atual dos nossos esforços de tradução.",
        'documentation_upper'             => 'DOCUMENTAÇÃO',
        'about_documentation_1'           => "The repository of this website is available on <a href=':1:'>github</a>. We are using <a href=':2:'>readthedocs</a> to manage our documentation.<br /><br />We always appreciate corrections, additions and enhancements in our documentation, so all you have to do is clone the repository and issue a pull request!<br /><br />If you can help non English speaking developers by translating some of the content to another language, that would be great!",
        'screencasts'                     => 'Screencasts',
        'about_screencasts_1'             => "Nós todos amamos screencasts. Se você tiver algum tempo extra e quer apoiar a comunidade com alguns vídeos  ​​de ensino de qualquer das características do framework, seja muito bem-vindo. Confira nosso <a href=':1:'> Vimeo Canal </ a> como um guia.",
        'tests'                           => 'Testes',
        'about_tests_1'                   => "Nenhum software é livre de erros. Se você encontrar algum, por favor, não hesite em nos dizer. Temos um testsuite com mais de <a href=':1:'> 8000 </ a> testes. No entanto, testes unitários nunca são suficientes. Ajude-nos a melhorar a nossa testsuite adicionando mais testes ou melhorando  os atuais. Cada teste adicionado faz com que o framework seja mais estável.",
        'sample_applications'             => 'Amostras de Aplicações',
        'about_sample_apps_1'             => 'Grandes exemplos ajudam os outros a entender melhor como as coisas grandes podem ser criados com Phalcon. Sinta-se livre para compartilhar repositórios, ajudando outros com o seu trabalho e permitindo que lhe deem  feedback sobre o seu trabalho também!',
        'evangelism'                      => 'Evangelismo',
        'about_evangelism_1'              => "Há um monte de pessoas que ainda não sabem que Phalcon existe ou que ele realmente funciona. Estamos certos de que muitos desenvolvedores se beneficiarão ouvindo o que Phalcon é sobre tudo de como ele pode ajudá-los. Se você souber de qualquer evento  ou reuniões de  PHP  e deseja dar uma palestra sobre o projeto, você tem o nosso total apoio. Quem não gostaria de saber sobre a ferramenta que está revolucionando o desenvolvimento em PHP?",
        'share_your_experiences'          => 'Compartilhe suas experiências',
        'about_share_experiences_1'       => "Não seja tímido, sinta-se livre para compartilhar as formas através das quais Phalcon foi útil para você com a comunidade. Se Phalcon é um caso de sucesso para você, vamos compartilhar isso com a comunidade. Além disso, discutir quais os componentes precisaram de trabalho extra, o que poderia fazer isso fácil, quais os benefícios que você tem usando Phalcon. Apesar de tudo não poder ser implementado imediatamente, sua entrada em novos pedidos de recurso pode ajudar muito nos moldar o futuro do projeto. O seu feedback ajuda a todos nós.",
        'about_blog_1'                    => "Se você gosta de escrever, lembre-se que <a href=':1:'> nosso blog </ a> está aberto para postar tutoriais criados por você. Se você tem um blog de sua preferência e ter escrito algo sobre Phalcon, também podemos publicar em nossas páginas de redes sociais, de modo a atingir a máxima visibilidade. Se o seu blog está em um idioma diferente do Inglês, queremos compartilhá-lo e, potencialmente, traduzi-lo, se possível. Se você sabe sobre blogs relacionados ao PHP que estão interessados ​​em apresentar o projeto para o seu público, por favor nos avise.",
        'donations_sponsoring'            => 'Doações / Patrocínio',
        'about_sponsoring_1'              => "Nós somos uma  pequena, mas eficaz equipe de desenvolvedores . Tentamos passar o máximo de tempo possível no projeto. Toda a nossa paixão por este projeto nos faz querer ser melhor a cada dia. Phalcon é um software open-source, e esforços voluntários são necessários para sua constante evolução. Você pode nos ajudar a manter o desenvolvimento ativo, doando para o projeto ou patrocinando o desenvolvimento. Mais tempo e recursos dedicados ao projeto significa mais atividade, mais melhorias, melhor suporte, características mais surpreendentes, etc.",
        'social_networks'                 => 'Redes Sociais',
        'about_social_networks_1'         => "Phalcon está evoluindo em uma base diária, através do nosso desejo de torná-lo melhor. As redes sociais são parte de nossas vidas agora, e todos nós interagimos com os outros através delas. Compartilhando sua experiência com Phalcon em seus círculos sociais você aumentará muito a visibilidade do projeto. Mais e mais pessoas vão se envolver em nossa comunidade, tornando-o mais poderoso, mais rico em recursos e popular. Por exemplo, dê um '+1', compartilhe mensagens que estamos constantemente postando em todas as redes sociais, participe das discussões destes postagens. As pessoas que descobrirem Phalcon através de suas interações irão agradecê-lo!",
        'about_social_networks_2'         => "Nós temos presença na maioria das redes sociais mais populares. Seguindo-nos, você está nos ajudando a aumentar a visibilidade do projeto:",
        'follow_on_twitter'               => 'Siga-nos no Twitter',
        'facebook_page'                   => 'Página no Facebook',
        'google_plus_page'                => 'Página no Google+',
        'official_blog'                   => 'Blog Oficial',
        'star_on_github'                  => 'Favorite o projeto no Github',
        'thank_you'                       => 'Obrigado!',
        'about_thank_you_1'               => 'Gostaríamos de agradecer a todos os contribuidores e membros da comunidade por nos impulsionar a tornar Phalcon o melhor framework de seu tipo. Suas palavras gentis e envolvimento são o que nos mantém a fazer o melhor. Esperamos encontrar e exceder a confiança que vocês depositam no Phalcon.',
        'flying_with_phalcon'             => 'Obrigado por voar com Phalcon! &lt;3',

        'hosting_description'             => 'Phalcon pode ser instalado em qualquer máquina na qual o provedor de hospedagem oferece acesso de root por conexão SSH (ou sudo). Abaixo está uma lista de empresas conceituadas que oferecem esses serviços:',
        'hosting_fortrabbit_title'        => 'Fortrabbit',
        'hosting_fortrabbit_1'            => 'Fortrabbit oferece diversos planos de hospedagem (há um para desenvolvedores, e é gratuito - com algumas limitações) que podem satisfazer as necessidades da maiorias dos desenvolvedores que desejam tanto experimentar Phalcon ou desejam implantar suas aplicações com ele.',
        'hosting_fortrabbit_2'            => "Eles oferecem uma variedade de <a href=':1:'>extensões</a> que satisfazem até mesmo o projeto mais exigente.",
        'hosting_fortrabbit_3'            => 'Versões estáveis ​​de Phalcon são pré-instaladas, você pode ativá-las a partir do painel de administração.',
        'hosting_webfaction_title'        => 'WebFaction',
        'hosting_webfaction_1'            => 'WebFaction Hospedagem para desenvolvedores. Acesso shell completo para servidores rápidos com todas as suas ferramentas favoritas pré-instaladas e mantidas para o usuário.',
        'hosting_webfaction_2'            => "Para instalar Phalcon no WebFaction, siga as instruções descritas <a href=':1:'>aqui</a>",
        'hosting_amazon_ec2_title'        => 'Amazon EC2',
        'hosting_amazon_ec2_1'            => 'Amazon Elastic Compute Cloud oferece capacidade  de computação na nuvem pagando quanto puder.',
        'hosting_amazon_ec2_2'            => "Selecione um modelo pré-configurado da Amazon Machine Image (AMI) para começar a trabalhar imediatamente. Ou crie uma AMI contendo suas aplicações, bibliotecas, dados e configurações associadas. <a href=':1:'> Veja mais </ a>",
        'hosting_linode_title'            => "Linode",
        'hosting_linode_1'                => "Implante e gerencie servidores virtuais Linux no Linode Cloud. Obtenha um servidor rodando em segundos com sua escolha do Linux Distro, recursos e localização node. <a href=':1:'> Veja mais </ a>",
        'hosting_digital_ocean_title'     => 'Digital Ocean',
        'hosting_digital_ocean_1'         => "Blazing Technology Fast Cloud. Construído para os desenvolvedores. Implante um servidor SSD na nuvem em 55 segundos. <a href=':1:'> Veja mais </ a>",
        'hosting_digital_ocean_2'         => "<p>Follow this <a href=':1:'>tutorial</a> to get started</p>",
        'hosting_rackspace_title'         => "Rackspace",
        'hosting_rackspace_1'             => "Servidores na nuvem  são máquinas virtuais rodando Linux ou Windows ® Server na Rackspace Cloud. Você pode dimensionar recursos como CPU, memória e armazenamento aumentando ou diminuindo, dependendo de suas necessidades. O melhor de tudo, você terá o quanto poder pagar. <a href=':1:'> Veja mais </ a>",
        'hosting_install_instructions'    => 'Instale Phalcon utilizando as instruções padrão de instalação.',
        'hosting_azure_title'             => "Windows Azure",
        'hosting_azure_1'                 => "A <a href=':1:'>Nuvem do Windows Azure</a> fornece ambientes de hospedagem Windows de alta escalabilidade e gerenciamento para suas aplicações web. Use Phalcon para reduzir seus custos de instância.",
        'hosting_azure_2'                 => "Para instalar o Phalcon, siga a rotina passo a passo descrita <a href=':1:'>neste artigo do SitePoint</a>.",
        'hosting_aspnix_1'                => 'ASPnix provides superior Windows web hosting services. Our customers have rated our service as outstanding. We offer economical plans for shared Windows web hosting, Virtual private servers and dedicated servers!  <a href=":1:">See more</a>',
        'hosting_aspnix_2'                => '<p>Phalcon is supported on all Windows shared web hosting packages and plans, no configuration or installation required! They offer a variety of PHP versions from 5.2 – 5.6 as well as many <a href=":1:" target="_blank">additional extensions</a>!</p>',
        'hosting_layershift_title'        => 'Layershift',
        'hosting_layershift_1'            => "You bring the code, we'll sort the servers. Next generation, auto-sizing PaaS for PHP",
        'hosting_layershift_2'            => "<p>Follow this <a href=':1'>tutorial</a> to get started</p>",

        'testimonials'                    => 'Testemunhos',
        'testimonials_description'        => "Abaixo está uma coleção de testemunhos e histórias de sucesso, de vocês, os desenvolvedores e usuários de Phalcon PHP. Nós sempre apreciamos e-mails com histórias de sucesso e estaremos postando-os em nosso blog. Se você quiser enviar sua história de sucesso ou entrar em contato conosco, não hesite em nos enviar seu email para <a href='mailto::1:'>:2:</ a>.",
        'testimonials_1'                  => "Saudações, time Phalcon! Eu tenho um projeto, desenvolvido com o framework Phalcon. Chama-se Guitarama (<a href=':1:'>:2:</a>) tablaturas de guitarra e catálogo de acordes. O site é voltado para os usuários da Rússia, e usa o idioma Russo, mas espero que não haja problemas para entender a maioria das páginas. o site foi relançado em uma nova plataforma no começo de janeiro de 2013, e desde então tem crescido constantemente. Número diário de visitas: ~1500 visitantes únicos, com ~5000 visualizações de páginas. O site está sendo executado em um antigo servidor físico 1xP4-3Ghz, com 4GB RAM. Mais uma vez, obrigado por um ótimo framework e por tudo o que vocês estão fazendo : Michael.",
        'testimonials_2'                  => "Olá, time Phalcon. Gostaria de compartilhar com vocês nossa história de sucesso no uso do Phalcon nos projetos <a href=':1:'>:2:</a> e <a href=':3:'>:4:</a>, os mais acessados e carregados do Cazaquistão, classificados no TOP-10 de sites classificados no CIS. Ambos os sites trabalham com uma única API RESTful escrita com Phalcon\Mvc\Micro. Nos picos de acesso a API processa algo em torno de 400 requisições por segundo e isso não é um limite. Mudar para o Phalcon nos permitiu reduzir o tempo de geração de resposta e o consumo de CPU e memória RAM, bem como reduzir o tempo do processo de desenvolvimento. Continuaremos usando o Phalcon em nossos novos projetos. Obrigado pelo grande trabalho que vocês vem fazendo! Meus cumprimentos, Nikita Vershinin, desenvolvedor Lider, Kolesa.kz e krisha.kz.",
        'testimonials_3'                  => "Equipe Phalcon, o framework que vocês criaram é incrível. Eu nunca usei um framework que combina velocidade, eficiência, brevidade e naturalidade em um único pacote. Tenho a intenção de defender e contribuir para o projeto de qualquer maneira que eu puder. Eu embarquei recentemente em um projeto  de cerca de 800 horas e estou feliz em dizer que estamos usando o Framework Phalcon. Bravo. Brian Seymour",
        'testimonials_4'                  => "Oi pessoal, eu apenas dei uma olhada no Phalcon e é simplesmente fantástico! Eu apenas queria dizer a você o quão incríveis vocês são! Então, obrigado por este framework e mantenham o bom trabalho! Ivan Penchev",
        'testimonials_5'                  => "Olá Pessoal, eu escrevi um serviço simples de encurtador de URL usando Phalcon. Isso foi fantástico! <a href=':1:'>:2:</a>. Demo aqui <a href=':3:'>:4:</a> :) Murat Küçükosman",
        'testimonials_6'                  => "Olá Time Phalcon, eu criei um pequeno projeto desenvolvido para usuários da Polônia utilizando o seu framework. Eu tenho que admitir que a performance é incrível, estão de parabéns pelo grande trabalho. Serviço para validar o conteúdo de páginas web no idioma Polonês <a href=':1:'>:2:</a>.",
        'testimonials_7'                  => "Olá pessoal! Só gostaria de compartilhar com você o mais recente release de nosso antigo projeto - <a href=':1:'>:2:</a>. Mudar para o Phalcon nos permitiu reduzir o carregamento do servidor pela metade em comparação ao framework anterior, o que é ótimo!",

        'support_note'                    => "Diversos bugs aparecem porque os usuários não estão executando a versão mais recente. Por favor acesse a :1:, baixe a versão mais recente disponível (ou compile-a) e confirme se o problema que vem experimentando é de fato um bug.",
        'support_download_page'           => "página de download",
        'support_documentation_1'         => "Por favor, use a :1: antes de qualquer coisa. Você também pode usar a ferramenta de pesquisa em nossos documentos para encontrar pelo que você está procurando. Se sua dúvida ainda não for respondida, existem outras opções abaixo. ",
        'support_phalcon_forum'           => "Fórum Phalcon",
        'support_forum_1'                 => "Você pode deixar sua dúvida em nosso <a href=':1:'>Fórum de Discussões</a>",
        'support_irc'                     => "Canal IRC",
        'support_irc_1'                   => "Você pode nos encontrar no canal :1: no Freenode.",
        'support_stack_overflow_1'        => "Se você é mais habituado ou prefere o Stack Overflow, existe a tag <a href=':1:'>phalcon</a> que você pode utilizar para pesquisar ou marcar sua dúvida.",
        'support_please_note'             => "Favor notar:",
        'support_please_note_1'           => "Stack Overflow não é dedicado a apoiar o Phalcon",
        'support_please_note_2'           => "Favor não postar novos bugs por lá. Por favor, use o <a href=':1:'>issue tracker</a> no Github para isso",
        'support_please_note_3'           => "Favor não pedir por novos recursos por lá. Por favor use o <a href=':1:'>issue tracker</a> no Github para isso",
        'support_please_note_4'           => "Certifique-se de que você incluiu a tag 'phalcon' com sua dúvida",
        'support_please_note_5'           => "Certifique-se de que mencionou 'Phalcon' na dúvida",
        'support_reporting_a_bug'         => "Relatando um bug",
        'support_reporting_a_bug_1'       => "Por favor, informe bugs quando você tiver exaurido todas as opções acima, usando o <a href=':1:'>issue tracker</a> no Github.",


    );

    // return $messages;