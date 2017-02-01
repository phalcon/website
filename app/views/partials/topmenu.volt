<ul class="nav navbar-nav main-menu">
    <li class="first">
        {{
            link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'header-nav-link')
        }}
    </li>
    <li><a href="https://docs.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
    <li><a href="https://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
    <li><a href="https://slack.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('Slack') }}</a></li>
    <li><a href="https://blog.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('blog') }}</a></li>
    <li><a href="https://api.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('API') }}</a></li>
    <li><a href="http://phalconist.com/" class="header-nav-link" target="_blank">{{ tr('resources') }}</a></li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'about', 'language': language], tr('about')) }}</li>
    <li class="dropdown" style="margin-left:3px;">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown"><img src="{{ cdn_url }}images/flags/{{ language }}.gif" alt="" />&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" style="color:black" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link" style="color:black;">{{ languages_available }}</li>
        </ul>
    </li>
</ul>
