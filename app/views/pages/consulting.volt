{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="consulting">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                {{ locale.translate('consulting_header') }}
            </div>
        </div>

        <hr/>

        <div class="row">
            <div class="col-lg-12">
                {{ locale.translate('consulting_mctekk_header') }}
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-2">
                <img src='{{ utils.getCdnUrl('images/consulting/mctekk.png') }}' title='MCTEKK' alt='MCTEKK' />
            </div>
            <div class="col-lg-10">
                <p>{{ locale.translate('consulting_mctekk_1') }}</p>
                <p>{{ locale.translate('consulting_mctekk_2') }}</p>
                <p>{{ locale.translate('consulting_mctekk_3', 'https://mctekk.com/phalcon') }}</p>
            </div>
        </div>

        <hr/>

        <div class="row">
            <div class="col-lg-2">
                <img src='{{ utils.getCdnUrl('images/consulting/lezgro.png') }}' title='LEZGRO' alt='LEZGRO' />
            </div>
            <div class="col-lg-10">
                <p>{{ locale.translate('consulting_lezgro_1', 'http://www.lezgro.com') }}</p>
                <p>{{ locale.translate('consulting_lezgro_2') }}</p>
                <p>{{ locale.translate('consulting_lezgro_3', 'http://www.lezgro.com') }}</p>
                <p>{{ locale.translate('consulting_lezgro_4') }}</p>
                <p>{{ locale.translate('consulting_lezgro_5', 'http://lezgro.com/contacts/') }}</p>
            </div>
        </div>

    </div>
</section>
{% endblock %}