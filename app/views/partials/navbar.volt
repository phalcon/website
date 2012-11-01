<div id="header">
    <h1>
        {% set logo = image('img/logo-small-sp.png', 'border': 0) %}
        {{ link_to('', logo) }}
    </h1>
    <div align="center">
        <div id="nav-main" role="navigation">
            <div class="menubar">
                <div class="nav-main-features nav-first">
                    {{ link_to('', 'HOME') }}
                </div>
                <div class="nav-main-features">
                    {{ link_to('download', 'DOWNLOAD') }}
                </div>
                <div class="nav-main-features">
                    {{ link_to('documentation', 'DOCUMENTATION') }}
                </div>
                <div class="nav-main-features">
                    {{ link_to('support', 'SUPPORT') }}
                </div>
                <div class="nav-main-features">
                    <a href="https://github.com/phalcon/cphalcon">GITHUB</a>
                </div>
                <div class="nav-main-features">
                    <a target="blog" href="http://blog.phalconphp.com/">BLOG</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="github-fork-ribbon-wrapper right">
    <div class="github-fork-ribbon">
        <a href="https://github.com/phalcon/cphalcon">Fork me on GitHub</a>
    </div>
</div>