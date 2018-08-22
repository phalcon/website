{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="team">
    <div class="container">
        {% include 'partials/menu_about.volt' %}
        <div class="row">
            <div class="col-lg-2">
                <img src="{{ utils.getCdnUrl('images/team/andres.jpg') }}"
                     alt="Andres Gutierrez"
                     style="width: 102px;"
                     class="img-circle"/>
            </div>

            <div class="col-lg-10">
                <h3 class="member-name">Andres Gutierrez</h3>
                <p>{{ locale.translate('team_andres_1') }}</p>
                <p>{{ locale.translate('team_andres_2') }}</p>
                <p>{{ locale.translate('team_andres_3') }}</p>
                <p>{{ locale.translate('team_andres_4') }}</p>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-2">
                <img src="{{ utils.getCdnUrl('images/team/nikos.jpg') }}"
                     alt="Nikolaos (Nikos) Dimopoulos"
                     style="width: 102px;"
                     class="img-circle"/>
            </div>

            <div class="col-lg-10">
                <h3 class="member-name">Nikolaos (Nikos) Dimopoulos</h3>
                <p>{{ locale.translate('team_nikos_1') }}</p>
                <p>{{ locale.translate('team_nikos_2') }}</p>
                <p>{{ locale.translate('team_nikos_3') }}</p>
                <p>{{ locale.translate('team_nikos_4') }}</p>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-2">
                <img src="{{ utils.getCdnUrl('images/team/paulscoder.jpg') }}"
                     alt="Paul Scarrone"
                     style="width: 102px;"
                     class="img-circle"/>
            </div>

            <div class="col-lg-10">
                <h3 class="member-name">Paul Scarrone</h3>
                <p><a href="https://twitter.com/PaulSCoder">Twitter</a> | <a href="https://github.com/ninjapanzer">Github</a></p>
                <p>{{ locale.translate('team_paul_1') }}</p>
                <p>{{ locale.translate('team_paul_2') }}</p>
                <p>{{ locale.translate('team_paul_3') }}</p>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-2">
                <img src="{{ utils.getCdnUrl('images/team/serghei.png') }}"
                     alt="Serghei Iakovlev"
                     style="width: 102px;"
                     class="img-circle"/>
            </div>

            <div class="col-lg-10">
                <h3 class="member-name">Serghei Iakovlev</h3>
                <p>{{ locale.translate('team_serghei_1', 'http://codeception.com/') }}</p>
                <p>{{ locale.translate('team_serghei_2') }}</p>
                <p>{{ locale.translate('team_serghei_3') }}</p>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-2">
                <img src="{{ utils.getCdnUrl('images/team/volodymyr.jpg') }}"
                     alt="Volodymyr Koleshnykov"
                     style="width: 102px;"
                     class="img-circle"/>
            </div>

            <div class="col-lg-10">
                <h3 class="member-name">Volodymyr Koleshnykov</h3>
                <p>{{ locale.translate('team_volodymyr_1') }}</p>
                <p>{{ locale.translate('team_volodymyr_2') }}</p>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-10">
                <h3 class="member-name">{{ locale.translate('phalcon_team_1') }}</h3>
                <p>{{ locale.translate('phalcon_team_2') }}</p>
                <div class="hr"></div>
            </div>
        </div>

        {{ partial('partials/contributors') }}
    </div>
</section>
{% endblock %}
