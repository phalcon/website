<div class="size-wrap footer-wrap">

    <table class="footer-links">
        <tr>
            <td>
                <div class="footer-links-title">{{ tr('main_upper') }}</div>
                <ul class="footer-links-list unstyled">
                    <li>{{ link_to(['for': 'download', 'language': language], tr('download'), 'class' : 'link-black') }}</li>
                    <li><a class="link-black" href="http://docs.phalconphp.com/en/latest/index.html">{{ tr('documentation') }}</a></li>
                    <li><a class="link-black" href="http://blog.phalconphp.com/">{{ tr('blog') }}</a></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">{{ tr('services_upper') }}</div>
                <ul class="footer-links-list unstyled">
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'hosting', 'language': language], tr('hosting'), 'class' : 'link-black') }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'support', 'language': language], tr('support'), 'class' : 'link-black') }}</li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">{{ tr('support_upper') }}</div>
                <ul class="footer-links-list unstyled">
                    <li><a href="http://forum.phalconphp.com/" class="link-black">{{ tr('forum_community') }}</a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon" class="link-black">{{ tr('stack_overflow') }}</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues" class="link-black">{{ tr('issue_tracker') }}</a></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">{{ tr('get_involved_upper') }}</div>
                <ul class="footer-links-list unstyled">
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'team', 'language': language], tr('team'), 'class' : 'link-black') }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'about', 'language': language], tr('about'), 'class' : 'link-black') }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'roadmap', 'language': language], tr('roadmap'), 'class' : 'link-black') }}</li>
                </ul>
            </td>
        </tr>
    </table>

    <div class="donate-wrap">
        {{ tr('donate_to_phalcon') }} <a href="http://flattr.com/thing/1134206/Phalcon-PHP-Framework" target="_blank" class="button button-small orange">Flattr</a>
        {{ tr('or') }}
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="display: inline" target="_blank">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="7LSYMNMFZNG8W">
            <input class="button button-small orange" style="border: inherit; display: inline; font-weight: bold" type="submit" value="via Paypal" title="PayPal — The safer, easier way to pay online.">
        </form>
    </div>

    <div class="social-links">
        <a target="_blank" href="https://twitter.com/phalconphp" class="social-link tw">{{ tr('twitter') }}</a>
        <a target="_blank" href="http://www.facebook.com/pages/Phalcon/134230726685897" class="social-link fb">{{ tr('facebook') }}</a>
        <a target="_blank" href="https://plus.google.com/102376109340560896457" class="social-link gp">{{ tr('google_plus') }}</a>
        <a target="_blank" href="http://vimeo.com/phalconphp" class="social-link vm">{{ tr('vimeo') }}</a>
    </div>

</div>
