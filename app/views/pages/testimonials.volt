<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">{{ tr('get_involved') }}</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'pages', 'pageSlug': 'team', 'language': language]) }}"><u>{{ tr('team') }}</u></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'pages', 'pageSlug': 'about', 'language': language]) }}"><u>{{ tr('about') }}</u></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'pages', 'pageSlug': 'testimonials', 'language': language]) }}"><span class="span-ul">{{ tr('testimonials') }}</span></a></li>
    </ul>

    <p>{{ tr('testimonials_description', 'team@phalconphp.com', 'team@phalconphp.com') }}</p>

    <div class="one-column">
        <p>&rsaquo;&rsaquo; {{ tr('testimonials_1') }}</p>
    </div>
    <div class="one-column">
        <p>&rsaquo;&rsaquo; {{ tr('testimonials_2') }}</p>
    </div>
    <div class="one-column">
        <p>&rsaquo;&rsaquo; {{ tr('testimonials_3') }}</p>
    </div>
    <div class="one-column">
        <p>&rsaquo;&rsaquo; {{ tr('testimonials_4') }}</p>
    </div>
    <div class="one-column">
        <p>&rsaquo;&rsaquo; {{ tr('testimonials_5') }}</p>
    </div>

</div>
