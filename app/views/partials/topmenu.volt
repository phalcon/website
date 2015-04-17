<ul class="nav navbar-nav main-menu">
    <li class="first">{{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'header-nav-link') }}</li>
    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
    <li><a href="http://blog.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('blog') }}</a></li>
    <li><a href="/{{ language }}/about" class="header-nav-link">{{ tr('about') }}</a></li>

    <li class="dropdown">
        <a href="javascript:void(0)" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown">
            <i class="flag flag-{{ languageFlags[language] }}"></i>&nbsp;<span class="caret"></span>
        </a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link">
                {% for langCode, langName in languages if langCode != language %}
                    <a href="/{{ langCode }}/{{ cleanUri }}" role="menuitem" tabindex="-1">
                        <i class="flag flag-{{ languageFlags[langCode] }}"></i>
                        {{ langName }}
                    </a>
                {% endfor %}
            </li>
        </ul>
    </li>

    <li class="hidden-xs hidden-sm separator">&nbsp;</li>

    <li class="hidden-xs hidden-sm"><a href="https://twitter.com/phalconphp" class="twitter" target="_blank">&nbsp;</a></li>
    <li class="hidden-xs hidden-sm">
        <a id="stargazers" href="https://github.com/phalcon/cphalcon/" target="_blank">
            <img src="/images/github.png" alt="Phalcon on GitHub!"/>
            <span class="visible-lg-inline">0</span>
        </a>
    </li>

</ul>