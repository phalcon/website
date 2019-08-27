{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="hosting">
    <div class="container">
        <div class="row">
            <div class="col-lg-10">
                <p>{{ locale.translate('sponsors_description_1') }}</p>
            </div>
            <div class="col-lg-2">
                <a href="https://phalcon.link/fund">
                    <button class="btn button-small btn-danger">
                        {{ locale.translate('sponsors_become_patron') }}
                    </button>
                </a>
            </div>
        </div>
        <hr/>
        <div class="row" id="sponsors-page">
            <div class="col-lg-12">
                <h3>{{ locale.translate('sponsors_and_supporters_upper') }}</h3>
                <a href="https://www.pdffiller.com/" target="_blank">
                    <img width="240px"
                         src="https://assets.phalcon.io/phalcon/images/backers/pdffiller-164x34.svg" alt="Pdffiller">
                </a>
                <a href="https://mctekk.com/phalcon" target="_blank">
                    <img width="240px"
                         src="https://assets.phalcon.io/phalcon/images/backers/mctekk-149x34.svg"  alt="Mctekk">
                </a>
                <a href="https://abits.com/" target="_blank">
                    <img width="240px"
                         src="https://assets.phalcon.io/phalcon/images/backers/abits-100x34.svg" alt="Abits">
                </a>
                <a href="https://algolia.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/algolia-725x360.svg" alt="Algolia">
                </a>
                <a href="https://netlify.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/netlify-147x40.svg" alt="Netlify">
                </a>
                <a href="https://odva.pro/" target="_blank">
                    <svg width="50" height="46" viewBox="0 0 38 31" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.375 29.3529C22.9283 29.3529 29.0514 23.2298 29.0514 15.6765C29.0514 8.12317 22.9283 2 15.375 2C7.82165 2 1.69849 8.12317 1.69849 15.6765C1.69849 23.2298 7.82165 29.3529 15.375 29.3529Z" stroke="#273646" stroke-opacity="0.7" stroke-width="3"></path>
                        <path d="M33.9044 23.6177H32.1397V30.6765H33.9044V23.6177Z" fill="#273646" fill-opacity="0.7"></path>
                        <path d="M37.4338 23.6177H35.6691V30.6765H37.4338V23.6177Z" fill="#273646" fill-opacity="0.7"></path>
                    </svg>
                </a>
                <a href="https://crowdin.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/crowdin.png" alt="Crowdin">
                </a>
            </div>
        </div>

        <div class="hr"></div>

    </div>
</section>
{% endblock %}
