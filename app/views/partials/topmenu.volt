
<ul class="nav navbar-nav main-menu">
    <li class="first">
        <a href="/{{ language }}/download/linux" class="header-nav-link">
            {{ locale.translate('download') }}
        </a>
    </li>
    <li>
        {# localized links are temprary disabled #}
        <a href="https://phalcon.link/docs/en" class="header-nav-link" target="_blank">
            {{ locale.translate('docs') }}
        </a>
    </li>
    <li class="dropdown">
        <a href="javascript:;"
           class="dropdown-toggle"
           data-toggle="dropdown"
           role="button"
           aria-haspopup="true"
           aria-expanded="false">
            {{ locale.translate('community') }} <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
            <li class="dropdown-menu-title">
                {{ locale.translate('dropdown_menu_title_social') }}
            </li>
            <li>
                <a href="https://phalcon.link/blog" target="_blank">
                    {{ locale.translate('blog') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/telegram" target="_blank">
                    {{ locale.translate('telegram') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/mewe" target="_blank">
                    {{ locale.translate('mewe') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/gab" target="_blank">
                    {{ locale.translate('gab') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/fb" target="_blank">
                    {{ locale.translate('facebook') }}
                </a>
            </li>
             <li>
                <a href="https://phalcon.link/t" target="_blank">
                    {{ locale.translate('twitter') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/parler" target="_blank">
                    {{ locale.translate('parler') }}
                </a>
            </li>
            <li role="separator" class="divider"></li>
            <li class="dropdown-menu-title">
                {{ locale.translate('dropdown_menu_title_help') }}
            </li>
             <li>
                <a href="https://phalcon.link/forum" target="_blank">
                    {{ locale.translate('forum') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/api" target="_blank">
                    {{ locale.translate('api') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/discord" target="_blank">
                    {{ locale.translate('discord') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/so" target="_blank">
                    {{ locale.translate('stack_overflow') }}
                </a>
            </li>
        </ul>
    </li>
    <li>
        <a href="/{{ language }}/about" class="header-nav-link">
            {{ locale.translate('contribute') }}
        </a>
    </li>
    <li>
        <a href="/{{ language }}/sponsors" class="header-nav-link">
            {{ locale.translate('sponsors') }}
        </a>
    </li>
    <li>
        <a href="https://phalcon.link/fund" class="header-nav-link">
            {{ locale.translate('support_us') }}
        </a>
    </li>
    <li class="dropdown lang-wrapper">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <img src="{{ utils.getCdnUrl('images/flags/' ~ imageLanguage ~ '.gif') }}" alt="{{ language }}">
            <span class="caret"></span>
        </a>
        <ul class="dropdown-menu lang-dropdown" role="menu">
            <li role="presentation" class="dropdown-link">
                {{ languages }}
            </li>
        </ul>
    </li>
</ul>
