<?php

require "../helpers/hyperlight/hyperlight.php";
require '../vendor/Website/Tag.php';

class DocumentationController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon\Tag::setTitle('Documentation');

        //Cache all documentation pages with a action-cache key
        //$this->view->cache(array('key' => $this->dispatcher->getActionName().'-cache'));
        parent::initialize();
    }

    public function indexAction()
    {
    }

    public function tocAction()
    {
    }

    public function motivationAction()
    {
    }

    public function installAction()
    {
    }

    public function xamppAction()
    {
    }

    public function wampAction()
    {
    }

    public function tutorialAction()
    {
    }

    public function mvcAction()
    {
    }

    public function controllersAction()
    {
    }

    public function modelsAction()
    {
    }

    public function viewsAction()
    {
    }

    public function routingAction()
    {
    }

    public function dispatchingAction()
    {
    }

    public function requestAction()
    {
    }

    public function filterAction()
    {
    }

    public function configAction()
    {
    }

    public function benchmarkAction()
    {
    }

    public function paginationAction()
    {
    }

    public function namespacesAction()
    {
    }

    public function tagsAction()
    {
    }

    public function toolsAction()
    {
    }

    public function wintoolsAction()
    {
    }

    public function mactoolsAction()
    {
    }

    public function linuxtoolsAction()
    {
    }

    public function cacheAction()
    {
    }

    public function aclAction()
    {
    }

    public function intlAction()
    {
    }

    public function translateAction()
    {
    }

    public function dbAction()
    {
    }

    public function loggingAction()
    {
    }

    public function loaderAction()
    {
    }

    public function migrationsAction()
    {
    }

    public function settingsAction()
    {
    }

    public function screencastsAction()
    {
    }

    public function licenseAction()
    {
    }

    public function debugAction()
    {
    }

    public function nginxAction()
    {
    }

}
