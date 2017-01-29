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
