{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="testimonials">
    <div class="container">
        {% include 'partials/menu_about.volt' %}
        <div class="row">
            <div class="col-lg-12">
                <p>{{ locale.translate('testimonials_description', 'team@phalcon.io', 'team@phalcon.io') }}</p>
            </div>
        </div>

        <blockquote>
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_1', 'http://guitarama.ru', 'http://guitarama.ru') }}</p>
        </blockquote>

        <blockquote class="blockquote-reverse">
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_2', 'http://kolesa.kz', 'http://kolesa.kz', 'http://krisha.kz', 'http://krisha.kz') }}</p>
        </blockquote>

        <blockquote>
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_3') }}</p>
        </blockquote>

        <blockquote class="blockquote-reverse">
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_4') }}</p>
        </blockquote>

        <blockquote>
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_5', 'https://github.com/blackbunny/Url-Shortener', 'https://github.com/blackbunny/Url-Shortener', 'http://u.dolap.co', 'http://u.dolap.co') }}</p>
        </blockquote>

        <blockquote class="blockquote-reverse">
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_6', 'http://bezbykow.pl', 'http://bezbykow.pl') }}</p>
        </blockquote>

        <blockquote>
            <p>&rsaquo;&rsaquo; {{ locale.translate('testimonials_7', 'https://delete.im', 'https://delete.im') }}</p>
        </blockquote>
    </div>
</section>
{% endblock %}
