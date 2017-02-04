        <div class="row">
            <ul class="nav nav-pills">
                {% set sponsorsPages = ['sponsors', 'donate'] %}
                {% for sponsorsPage in sponsorsPages %}
                <li{% if page === sponsorsPage %} class="active"{% endif %}>
                    <a href="/{{ language }}/{{ sponsorsPage }}">
                        <span class="span-ul">{{ locale.translate(sponsorsPage) }}</span>
                    </a>
                </li>
                {% endfor %}
            </ul>
        </div>
