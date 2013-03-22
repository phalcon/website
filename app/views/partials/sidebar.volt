<aside class="span3">
    <div id="sidebar" class="well sidebar-nav">
        <ul class="nav nav-list">
            <li class="nav-header">Donate</li>
            <li>
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                    <input type="hidden" name="cmd" value="_s-xclick">
                    <input type="hidden" name="hosted_button_id" value="7LSYMNMFZNG8W">
                    <input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal — The safer, easier way to pay online.">
                    <img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
                </form>
                </form>
            </li>
            <li>
                <a href="http://flattr.com/thing/1134206/Phalcon-PHP-Framework" target="_blank">
                    <img src="img/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0">
                </a>
            </li>

            <li class="nav-header">Services</li>
            <li><a href="{{ url('consulting') }}">Consulting</a></li>
            <li><a href="{{ url('hosting') }}">Hosting</a></li>

            <li class="nav-header">Social</li>
            <li>
                <div class="btn-group">
                    <a href="https://plus.google.com/102376109340560896457"><img border="0" src="img/google_plus_32.png"></a>
                    <a href="http://www.facebook.com/pages/Phalcon/134230726685897"><img border="0" src="img/facebook_32.png"></a>
                    <a href="https://twitter.com/phalconphp"><img border="0" src="img/twitter_32.png"></a>
                </div>
            </li>

            <li class="nav-header">Support</li>
            <li><a href="http://forum.phalconphp.com/">Forum/Community</a></li>
            <li><a href="http://stackoverflow.com/questions/tagged/phalcon">Stack Overflow</a></li>
            <li><a href="https://github.com/phalcon/cphalcon/issues">Issue Tracker</a></li>

            <li class="nav-header">Get Involved</li>
            <li><a href="{{ url('team') }}">Team</a></li>
            <li><a href="#">About</a></li>
            <li><a href="https://github.com/phalcon/cphalcon/wiki/Roadmap">Roadmap</a></li>

            <li class="nav-header">Get Updates</li>
            <li>
                <div class="input-append">
                    <form method="post" action="{{ url('index/subscribe') }}">
                        <input class="span8" type="text" placeholder="Your email address" name="email" id="email" value="">
                        <br />
                        <input class="btn" type="submit" value="Subscribe">
                    </form>
                </div>
            </li>
        </ul>
    </div><!--/.well -->
</aside>