<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <h4>{{ locale.translate('download') }}</h4>
                <ul>
                    <li><a href="{{ url(language ~ '/download') }}">{{ locale.translate('installing_phalcon_php') }}</a></li>
                    <li><a href="{{ utils.getDocsUrl(language) }}" class="header-nav-link" target="_blank">{{ locale.translate('documentation') }}</a></li>
                    <li><a href="{{ utils.getDocsUrl(language) }}/api/index" class="header-nav-link">API</a></li>
                    <li><a href="{{ utils.getDocsUrl(language) }}/tutorial-base">{{ locale.translate('tutorial') }}</a></li>
                    <li><a href="{{ url(language ~ '/support') }}">{{ locale.translate('support') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-3">
                <h4>{{ locale.translate('community') }}</h4>
                <ul>
                    <li><a href="https://phalcon.link/forum" class="header-nav-link" target="_blank">{{ locale.translate('forum') }}</a></li>
                    <li><a href="https://phalcon.link/github">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues">{{ locale.translate('issue_tracker') }}</a></li>
                    <li><a href="https://stackoverflow.com/questions/tagged/phalcon">{{ locale.translate('stack_overflow') }}</a></li>
                    <li><a href="{{ url(language ~ '/testimonials') }}">{{ locale.translate('testimonials') }}</a></li>
                    <li><a href="https://phalcon.link/builtwith">{{ locale.translate('built_with_phalcon') }}</a></li>
                    <li><a href="https://phalcon.link/store">{{ locale.translate('store') }}</a></li>
                    <li><a href="https://phalcon.link/discord">{{ locale.translate('discord') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-2">
                <h4>{{ locale.translate('about') }}</h4>
                <ul>
                    <li><a class="link-black" href="https://phalcon.link/blog">{{ locale.translate('blog') }}</a></li>
                    <li><a class="link-black" href="{{ url(language ~ '/about') }}">{{ locale.translate('about') }}</a></li>
                    <li><a class="link-black" href="{{ url(language ~ '/team') }}">{{ locale.translate('team') }}</a></li>
                    <li><a class="link-black" href="{{ url(language ~ '/roadmap') }}">{{ locale.translate('roadmap') }}</a></li>
                    <li><a class="link-black" href="https://phalcon.link/donate">{{ locale.translate('donate') }}</a></li>
                    <li><a class="link-black" href="{{ url(language ~ '/consulting') }}">{{ locale.translate('consulting') }}</a></li>
                    <li><a class="link-black" href="{{ url(language ~ '/hosting') }}">{{ locale.translate('hosting') }}</a></li>
                </ul>
            </div>
            <div id="license-spaccer" class="visible-xs"></div>
            <div id="license-wrapper" class="col-xs-12 col-sm-4">
                <p class="license">
                    {{ locale.translate('license_new_bsd') }}
                </p>
            </div>
        </div>
    </div>
</footer>
