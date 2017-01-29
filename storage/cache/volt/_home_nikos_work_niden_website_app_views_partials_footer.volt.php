<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <h4><?= $this->locale->translate('download') ?></h4>
                <ul>
                    <li><a href="/download"><?= $this->locale->translate('installing_phalcon_php') ?></a></li>
                    <li><a href="<?= $docsRoot ?>index.html" class="header-nav-link" target="_blank"><?= $this->locale->translate('documentation') ?></a></li>
                    <li><a href="http://api.phalconphp.com">API</a></li>
                    <li><a href="<?= $docsRoot ?>reference/tutorial.html"><?= $this->locale->translate('tutorial') ?></a></li>
                    <li><a href="<?= $docsRoot ?>reference/tutorial.html#sample-applications"><?= $this->locale->translate('sample_applications') ?></a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-3">
                <h4><?= $this->locale->translate('community') ?></h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('forum') ?></a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues"><?= $this->locale->translate('issue_tracker') ?></a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon"><?= $this->locale->translate('stack_overflow') ?></a></li>
                    
                    <li><a href="http://builtwith.phalconphp.com/"><?= $this->locale->translate('built_with_phalcon') ?></a></li>
                    <li><a href="http://store.phalconphp.com/"><?= $this->locale->translate('store') ?></a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-2">
                <h4><?= $this->locale->translate('about') ?></h4>
                <ul>
                    <li><a class="link-black" href="http://blog.phalconphp.com/"><?= $this->locale->translate('blog') ?></a></li>
                    
                    
                    
                    
                    
                    
                </ul>
            </div>
            <div id="license-spaccer" class="visible-xs"></div>
            <div id="license-wrapper" class="col-xs-12 col-sm-4">
                <p class="license">
                    <?= $this->locale->translate('license_new_bsd') ?>
                </p>
            </div>
        </div>
    </div>
</footer>
