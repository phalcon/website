
<ul class="nav navbar-nav main-menu">
    <li class="first">
        <a href="/{{ language }}/download" class="header-nav-link">
            {{ locale.translate(language, 'download') }}
        </a>
    </li>
    <li>
        <a href="https://phalcon.link/docs" class="header-nav-link" target="_blank">
            {{ locale.translate(language, 'docs') }}
        </a>
    </li>
    <li class="dropdown">
        <a href="javascript:;"
           class="dropdown-toggle"
           data-toggle="dropdown"
           role="button"
           aria-haspopup="true"
           aria-expanded="false">
            {{ locale.translate(language, 'community') }} <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="https://phalcon.link/forum" target="_blank">
                    {{ locale.translate(language, 'forum') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/blog" target="_blank">
                    {{ locale.translate(language, 'blog') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/api" target="_blank">
                    {{ locale.translate(language, 'api') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/resources" target="_blank">
                    {{ locale.translate(language, 'resources') }}
                </a>
            </li>
            <li role="separator" class="divider"></li>
            <li>
                <a href="https://phalcon.link/f" target="_blank">
                    {{ locale.translate(language, 'facebook') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/t" target="_blank">
                    {{ locale.translate(language, 'twitter') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/g+" target="_blank">
                    {{ locale.translate(language, 'google_plus') }}
                </a>
            </li>
            <li>
                <a href="https://phalcon.link/gab" target="_blank">
                    {{ locale.translate(language, 'gab') }}
                </a>
            </li>
        </ul>
    </li>
    <li class="first">
        <a href="/{{ language }}/sponsors" class="header-nav-link">
            {{ locale.translate(language, 'sponsors') }}
        </a>
    </li>
    <li class="dropdown lang-wrapper">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <img src="{{ utils.getCdnUrl('images/flags/' ~ language ~ '.gif') }}" alt="{{ language }}">
            <span class="caret"></span>
        </a>
        <ul class="dropdown-menu lang-dropdown" role="menu">
            <li role="presentation" class="dropdown-link">
                {{ languages }}
            </li>
        </ul>
    </li>
</ul>
