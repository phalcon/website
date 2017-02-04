
<ul class="nav navbar-nav main-menu">
    <li class="first">
        {{
            link_to(
                'https://phalcon.link/download',
                locale.translate('download'),
                'class': 'header-nav-link',
                'target': '_blank', '
                local': false
            )
        }}
    </li>
    <li>
        {{
            link_to(
                'https://phalcon.link/docs',
                locale.translate('docs'),
                'class': 'header-nav-link',
                'target': '_blank', '
                local': false
            )
        }}
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
            <li>
                {{
                    link_to(
                        'https://phalcon.link/forum',
                        locale.translate('forum'),
                        'class': 'header-nav-link',
                        'target': '_blank', '
                        local': false
                    )
                }}
            </li>
            <li>
                {{
                    link_to(
                        'https://phalcon.link/blog',
                        locale.translate('blog'),
                        'class': 'header-nav-link',
                        'target': '_blank', '
                        local': false
                    )
                }}
            </li>
            <li>
                {{
                    link_to(
                        'https://phalcon.link/api',
                        locale.translate('api'),
                        'class': 'header-nav-link',
                        'target': '_blank', '
                        local': false
                    )
                }}
            </li>
            <li>
                {{
                    link_to(
                        'https://phalcon.link/resources',
                        locale.translate('resources'),
                        'class': 'header-nav-link',
                        'target': '_blank', '
                        local': false
                    )
                }}
            </li>
            <li role="separator" class="divider"></li>
            <li>
                {{
                    link_to(
                        'https://phalcon.link/f',
                        locale.translate('facebook'),
                        'target': '_blank', '
                        local': false
                )
                }}
            </li>
            <li>
                {{
                    link_to(
                        'https://phalcon.link/g+',
                        locale.translate('google_plus'),
                        'target': '_blank', '
                        local': false
                )
                }}
            </li>
            <li>
                {{
                    link_to(
                        'https://phalcon.link/gab',
                        locale.translate('gab'),
                        'target': '_blank', '
                        local': false
                    )
                }}
            </li>
        </ul>
    </li>
    <li>
        {{
            link_to(
                'https://phalcon.link/sponsors',
                locale.translate('sponsors'),
                'class': 'header-nav-link',
                'target': '_blank', '
                local': false
            )
        }}
    </li>
    <li class="dropdown" style="margin-left:3px;">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown">
            <img src="{{ utils.getCdnUrl('images/flags/' ~ language ~ '.gif') }}" alt="" />
            &nbsp;<span class="caret"></span>
        </a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" style="color:black" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link" style="color:black;">
                {{ languages }}
            </li>
        </ul>
    </li>
</ul>
