{{ content() }}

<div align="left">
    <div id="main-content">
        <table align="center" class="main-table">
            <tr>
                <td valign="top">
                    <div class="name">
                        Welcome to<br/>
                        <div class="subname">THE FASTEST<br/>PHP FRAMEWORK</div>
                        <p>PhalconPHP is a web framework delivered as a C extension
                            providing
                            <a href="http://docs.phalconphp.com/en/latest/reference/benchmark.html">high performance</a>
                            and lower resource consumption
                        </p>
                        <table align="center">
                            <tr>
                                <td align="center">
                                    <a href="http://try.phalconphp.com" class="no-decoration">
                                        <div class="btn btn-try">Try it Online</div>
                                    </a>
                                <td align="center">
                                    {{ link_to('download', '<div class="btn btn-download">Download</div>', 'class': 'no-decoration') }}
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td width="45%" id="speakerdeck">
                    <div id="speakerdeck_presentation_wrapper_4edf11f72a2b980050009919">
                        <iframe class="present_iframe" frameBorder="0" allowTransparency="true" mozallowfullscreen="true" webkitallowfullscreen="true" id="presentation_frame_4edf11f72a2b980050009919" src="//speakerdeck.com/embed/4edf11f72a2b980050009919?size=preview&slide=1" width="400" height="364"></iframe>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>

<div align="center">
    <div class="sub-content">
        <div class="sub">
            {% set dl_image = image('img/download-sp.png', 'border': '0') %}
            {{ link_to('download', dl_image ~ '<br/>Download and Try<br/><span>C extensions are available for many platforms</span><br />') }}
        </div>
        <div class="sub">
            {% set book_image = image('img/book.png', 'border': '0') %}
            {{ link_to('documentation', book_image ~ '<br/>Learn and Enjoy<br/><span>Read updated documentation and guides</span>') }}
        </div>
        <div class="sub">
            <a href="https://twitter.com/phalconphp">
                {{ image('img/chat.png', 'border': '0') }}
                <br/>
                Share and Socialize<br/>
                <span>Tell your friends about the Phalcon framework in social networks</span>
            </a>
        </div>
    </div>
</div>

<div id="github-con">
    <div id="github" style="display:none">
        <a href="https://github.com/phalcon/cphalcon">Star me on Github</a>
    </div>
</div>
