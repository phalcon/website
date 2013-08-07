<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">{{ tr('phalcon_team') }}</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link active" href="{{ url(['for': 'pages', 'pageSlug': 'team', 'language': language]) }}"><span class="span-ul">{{ tr('team') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'pages', 'pageSlug': 'about', 'language': language]) }}"><span class="span-ul">{{ tr('about') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'pages', 'pageSlug': 'testimonials', 'language': language]) }}"><span class="span-ul">{{ tr('testimonials') }}</span></a></li>
    </ul>

    <div class="team-members">

        <div class="team-member">
            <div class="member-photo">
                <img src="http://static.phalconphp.com/images/team/andres.jpg" alt="Andres Gutierrez"/>
            </div>

            <div class="member-info">
                <h3 class="member-name">Andres Gutierrez</h3>
                <p>{{ tr('team_andres_1') }}</p>
                <p>{{ tr('team_andres_2') }}</p>
                <p>{{ tr('team_andres_3') }}</p>
                <p>{{ tr('team_andres_4') }}</p>
            </div>

        </div>

        <div class="team-member">
            <div class="member-photo">
                <img src="http://static.phalconphp.com/images/team/nikos.jpg" alt="Nikolaos (Nikos) Dimopoulos"/>
            </div>

            <div class="member-info">
                <h3 class="member-name">Nikolaos (Nikos) Dimopoulos</h3>
                <p>{{ tr('team_nikos_1') }}</p>
                <p>{{ tr('team_nikos_2') }}</p>
                <p>{{ tr('team_nikos_3') }}</p>
                <p>{{ tr('team_nikos_4') }}</p>
            </div>

        </div>

        <div class="team-member">
            <div class="member-photo">
                <img src="http://static.phalconphp.com/images/team/nikolay.jpg" alt="Nikolay (boston) Kirsh"/>
            </div>

            <div class="member-info">
                <h3 class="member-name">Nikolay (boston) Kirsh</h3>
                <p>{{ tr('team_nikolay_1') }}</p>
                <p>{{ tr('team_nikolay_2') }}</p>
                <p>{{ tr('team_nikolay_3') }}</p>
                <p>{{ tr('team_nikolay_4') }}</p>
                <p>{{ tr('team_nikolay_5', 'http://www.phalconphp.ru', 'http://docs.phalconphp.ru', 'http://vk.com/phalconphp') }}</p>
            </div>

        </div>

    </div>

</div>
