<div class="container">
    <div class="row">
        <ul class="nav nav-pills">
            <li {% if isPage === 'team' %} class="active" {% endif %}><a href="{{ url(['for': 'pages', 'pageSlug': 'team', 'language': language]) }}"><span class="span-ul">{{ tr('team') }}</span></a></li>
            <li {% if isPage === 'about' %} class="active" {% endif %}><a href="{{ url(['for': 'pages', 'pageSlug': 'about', 'language': language]) }}"><span class="span-ul">{{ tr('about') }}</span></a></li>
            <li {% if isPage === 'testimonials' %} class="active" {% endif %}><a href="{{ url(['for': 'pages', 'pageSlug': 'testimonials', 'language': language]) }}"><span class="span-ul">{{ tr('testimonials') }}</span></a></li>
        </ul>
    </div>