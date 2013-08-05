<ul class="header-nav">
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'header-nav-link') }}</li>
    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
    <li><a href="http://blog.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('blog') }}</a></li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'support', 'language': language], tr('support'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'donate', 'language': language], tr('donate'), 'class' : 'header-nav-link') }}</li>
    <li><a href="http://store.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('store') }}</a></li>
    <li><a href="https://github.com/phalcon/cphalcon" class="header-nav-link" target="_blank">{{ tr('github') }}</a></li>
</ul>
