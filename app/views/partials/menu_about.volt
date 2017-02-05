        <div class="row">
            <ul class="nav nav-pills">
                <li{% if page === 'about' %} class="active"{% endif %}>
                    <a href="/{{ language }}/about">
                        <span class="span-ul">{{ locale.translate('about') }}</span>
                    </a>
                </li>
                <li{% if page === 'team' %} class="active"{% endif %}>
                    <a href="/{{ language }}/team">
                        <span class="span-ul">{{ locale.translate('team') }}</span>
                    </a>
                </li>
                <li{% if page === 'testimonials' %} class="active"{% endif %}>
                    <a href="/{{ language }}/testimonials">
                        <span class="span-ul">{{ locale.translate('testimonials') }}</span>
                    </a>
                </li>
            </ul>
        </div>
