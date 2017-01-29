{% set links = ['download', 'forum', 'slack', 'blog', 'api', 'store', 'resources', 'about'] %}
<ul class="nav navbar-nav main-menu">
    {% for link in links %}
    <li {% if loop.first %}class="first"{% endif %}>
        {{
            link_to(
                'https://phalcon.link/' ~ link,
                locale.translate(link),
                'class': 'header-nav-link',
                'target': '_blank',
                'local': false
            )
        }}
    </li>
    {% endfor %}
    <li class="dropdown" style="margin-left:3px;">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown"><img src="{{ cdnUrl }}/images/flags/{{ language }}.gif" alt="" />&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" style="color:black" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link" style="color:black;">{{ languages_available }}</li>
        </ul>
    </li>
</ul>
