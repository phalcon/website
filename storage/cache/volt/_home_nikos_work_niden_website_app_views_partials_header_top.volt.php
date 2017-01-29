                <!-- Header top -->
                <div class="col-sm-3 logo">
                    <a href="<?= $this->url->get() ?>">
                        <img alt="" class="logo-phalcon" src="<?= $cdnUrl ?>images/phalcon1.png">
                    </a>
                </div>
                <div class="col-sm-7 menu-phalcon">
                    <div class="center">
                        <ul class="nav navbar-nav main-menu">
    <li class="first">
        
    </li>
    <li><a href="https://docs.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('documentation') ?></a></li>
    <li><a href="https://forum.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('forum') ?></a></li>
    <li><a href="https://slack.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('Slack') ?></a></li>
    <li><a href="https://blog.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('blog') ?></a></li>
    <li><a href="https://api.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('API') ?></a></li>
    <li><a href="http://phalconist.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('resources') ?></a></li>
    
    <li class="dropdown" style="margin-left:3px;">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown"><img src="<?= $cdnUrl ?>/images/flags/<?= $language ?>.gif" alt="" />&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" style="color:black" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link" style="color:black;"><?= $languages_available ?></li>
        </ul>
    </li>
</ul>

                    </div>
                </div>
                <div class="col-sm-2 social-icons-align" style="margin-top:15px;">
                    <a href="https://twitter.com/phalconphp">
                        <img alt="" src="<?= $cdnUrl ?>images/twitter.png">
                    </a>
                    <a href="https://github.com/phalcon/cphalcon/">
                        <img alt="" src="<?= $cdnUrl ?>images/github.png">
                    </a>
                </div>
                <!-- /End Header Top -->
