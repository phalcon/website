<section class="team">
    {% include 'pages/header.volt' %}

    <div class="row">
        <div class="col-lg-2">
            <img src="{{ cdn_url }}images/team/andres.jpg" alt="Andres Gutierrez" style="width: 102px;" class="img-circle"/>
        </div>

        <div class="col-lg-10">
            <h3 class="member-name">Andres Gutierrez</h3>
            <p>{{ tr('team_andres_1') }}</p>
            <p>{{ tr('team_andres_2') }}</p>
            <p>{{ tr('team_andres_3') }}</p>
            <p>{{ tr('team_andres_4') }}</p>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-2">
            <img src="{{ cdn_url }}images/team/eduar.jpg" alt="Eduar Carvajal" style="width: 102px;" class="img-circle"/>
        </div>

        <div class="col-lg-10">
            <h3 class="member-name">Eduar Carvajal</h3>
            <p>Eduar is a C/PHP developer with several years of experience in application development.
            He is one of the founders and lead developers of the Phalcon project which began in 2011.</p>
            <p>He has taken part in all areas, from the framework design to the internal kernel functions,
                including documentation and developer tools. He is driven by a fascination with frameworks, languages and new technologies.</p>
            <p>Eduar likes science fiction movies and sometimes plays football.</p>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-2">
            <img src="{{ cdn_url }}images/team/nikos.jpg" alt="Nikolaos (Nikos) Dimopoulos" style="width: 102px;" class="img-circle"/>
        </div>

        <div class="col-lg-10">
            <h3 class="member-name">Nikolaos (Nikos) Dimopoulos</h3>
            <p>{{ tr('team_nikos_1') }}</p>
            <p>{{ tr('team_nikos_2') }}</p>
            <p>{{ tr('team_nikos_3') }}</p>
            <p>{{ tr('team_nikos_4') }}</p>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-2">
            <img src="{{ cdn_url }}images/team/nikolay.jpg" alt="Nikolay (boston) Kirsh" style="width: 102px;" class="img-circle"/>
        </div>

        <div class="col-lg-10">
            <h3 class="member-name">Nikolay (boston) Kirsh</h3>
            <p>{{ tr('team_nikolay_1') }}</p>
            <p>{{ tr('team_nikolay_2') }}</p>
            <p>{{ tr('team_nikolay_3') }}</p>
            <p>{{ tr('team_nikolay_4') }}</p>
            <p>{{ tr('team_nikolay_5', 'http://phalconphp.ru', 'http://docs.phalconphp.ru', 'http://vk.com/phalconphp') }}</p>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-2">
            <img src="{{ cdn_url }}images/team/serghei.png" alt="Serghei Iakovlev" style="width: 102px;" class="img-circle"/>
        </div>

        <div class="col-lg-10">
            <h3 class="member-name">Serghei Iakovlev</h3>
            <p>Serghei has been working as a Ruby/PHP developer for over 7 years
            and has been specializing in web application development.
                As a supporter and advocate of Behavior Driven Development (BDD) is also a member of the <a href="http://codeception.com/">Codeception</a> team.</p>
            <p>Serghei can be found neck deep in innovative technologies which introduced him in Phalcon.
                He is responsible for the coordination of bug fixes, testing, developer tools, incubator and support other Phalcon-related projects.
            </p>
            <p>When he’s not working, Serghei enjoys watch documentaries, science fiction movies and sometimes plays Mahjong or Go.</p>
        </div>

    </div>

    <div class="row">
        <div class="col-lg-2">
        </div>
        <div class="col-lg-10">
            <h3 class="member-name">Many more people</h3>
            <p>Phalcon is and has always been an effort of many volunteers:</p>
            <div class="hr"></div>
        </div>
    </div>
    {{ partial('partials/contributors') }}
    </div>
</section>
