    <div class="row">
        <ul class="nav nav-pills">
            {% set aboutPages = ['team', 'about', 'testimonials'] %}
            {#<li {% if isPage === 'team' %} class="active" {% endif %}><a href="{{ url(['for': 'pages', 'pageSlug': 'team', 'language': language]) }}"><span class="span-ul">{{ tr('team') }}</span></a></li>#}
            {#<li {% if isPage === 'about' %} class="active" {% endif %}><a href="{{ url(['for': 'pages', 'pageSlug': 'about', 'language': language]) }}"><span class="span-ul">{{ tr('about') }}</span></a></li>#}
            {#<li {% if isPage === 'testimonials' %} class="active" {% endif %}><a href="{{ url(['for': 'pages', 'pageSlug': 'testimonials', 'language': language]) }}"><span class="span-ul">{{ tr('testimonials') }}</span></a></li>#}
            {% for aboutPage in aboutPages %}
            <li{% if page === aboutPage %} class="active"{% endif %}>
                <a href="/{{ language }}/{{ aboutPage }}">
                    <span class="span-ul">{{ locale.translate(aboutPage) }}</span>
                </a>
            </li>
            {% endfor %}
        </ul>
    </div>
