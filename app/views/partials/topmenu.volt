<ul class="nav navbar-nav main-menu">
    <li class="first">{{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'header-nav-link') }}</li>
    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
    <li><a href="http://blog.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('blog') }}</a></li>
    <li><a href="#">About</a></li>
    <li class="dropdown">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown"><img src="/img/flags/en.gif" alt="" />&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link">{{ languages_available }}</li>
{#            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/cz/" class="flag-cz">Český</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/de/" class="flag-de">Deutsch</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/gr/" class="flag-gr">Ελληνικά</a></li>  <!-- change from "el" -->
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/"    class="flag-us">English</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/es/" class="flag-es">Español</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/ir/" class="flag-ir">فارسی</a></li>  <!-- changed from "fa" -->
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/fr/" class="flag-fr">Français</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/hu/" class="flag-hu">Magyar</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/jp/" class="flag-jp">日本語</a></li>  <!-- changed form "ja" -->
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/it/" class="flag-it">Italiano</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/kr/" class="flag-kr">한국어</a></li>  <!-- changed from "ko" -->
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/lt/" class="flag-lt">Lietuvos</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/mk/" class="flag-mk">македонски</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/nl/" class="flag-nl">Nederlands</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/pl/" class="flag-pl">Polski</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/pt/" class="flag-pt">Português</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/ro/" class="flag-ro">Română</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/ru/" class="flag-ru">Pусский</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/sr/" class="flag-sr">српски</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/sv/" class="flag-sv">Svenska</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/th/" class="flag-th">ภาษาไทย</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/tr/" class="flag-tr">Türkçe</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/vi/" class="flag-vi">Việt</a></li>
            <li role="presentation" class="dropdown-link"><a role="menuitem" tabindex="-1" href="http://www.phalconphp/com/cn/" class="flag-cn">简体中文</a></li> <!-- changed form "zn" -->#}
        </ul>
    </li>
    <li class="visible-lg"><a href="https://github.com/phalcon/cphalcon/" class="github">&nbsp;</a></li>
    <li class="visible-lg"><a href="https://twitter.com/phalconphp" class="twitter">&nbsp;</a></li>
</ul>

{#
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'testimonials', 'language': language], tr('testimonials'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'support', 'language': language], tr('support'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'consulting', 'language': language], tr('consulting'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'donate', 'language': language], tr('donate'), 'class' : 'header-nav-link') }}</li>
    <li><a href="http://store.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('store') }}</a></li>#}
