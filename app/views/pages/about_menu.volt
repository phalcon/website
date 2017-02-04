        <div class="row">
            <ul class="nav nav-pills">
                {% set aboutPages = ['team', 'about', 'testimonials'] %}
                {% for aboutPage in aboutPages %}
                <li{% if page === aboutPage %} class="active"{% endif %}>
                    <a href="/{{ language }}/{{ aboutPage }}">
                        <span class="span-ul">{{ locale.translate(aboutPage) }}</span>
                    </a>
                </li>
                {% endfor %}
            </ul>
        </div>
