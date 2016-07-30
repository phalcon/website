<ul>
    <li>
        {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'header-nav-link') }}
    </li>
    <li>
        <a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a>
    </li>
    <li><a href="https://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
    <li><a href="https://blog.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('blog') }}</a></li>
    <li><a href="https://api.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('API') }}</a></li>
    <li><a href="http://phalconist.com/" class="header-nav-link" target="_blank">{{ tr('resources') }}</a></li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'about', 'language': language], tr('about')) }}</li>
    <li class="dropdown">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown">
            <img src="../images/flags/{{ language }}.gif" alt="" />
            &nbsp;
            <span class="caret">
            </span>
        </a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link">{{ languages_available }}</li>
        </ul>
    </li>
    <li class="visible-lg"><a href="https://twitter.com/phalconphp" class="twitter">&nbsp;</a></li>
    <li class="visible-lg"><a href="https://github.com/phalcon/cphalcon/" class="github">&nbsp;</a></li>
</ul>
