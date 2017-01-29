<?php
/**
 * \Retail\Bootstrap/Cli
 * Cli.php
 *
 * Bootstraps the cli application
 *
 * @author      Nikolaos Dimopoulos <ndimopoulos@fuseos.net>
 * @since       2014-12-04
 * @category    Library
 */
namespace Retail\Bootstrap;

use Phalcon\Cli\Console as PhCliConsole;
use Phalcon\Cli\Dispatcher as PhCliDispatcher;
use Phalcon\Loader as PhLoader;
use Phalcon\Mvc\View\Simple as PhViewSimple;

use Common\Constants\Services as CCS;

/**
 * Bootstrap
 *
 * @package Retail
 */
class Cli extends AbstractBootstrap
{
    protected $is_main = false;
    protected $is_cli  = true;

    /**
     * Reads the configuration files, merging the base with the installation
     * specific one. Throws exception if files are missing
     */
    protected function beforeConfig()
    {
        /**
         * Unset elements not needed for this config
         */
        unset(
            $this->base_config['int'],
            $this->base_config['api'],
            $this->base_config['cli'],
            $this->base_config['integrations']
        );
    }

    protected function beforeNamespaces()
    {
        $registry = $this->di_container->get(CCS::REGISTRY);
        $retail   = $registry->retail_path;

        $this->namespaces['Retail\Cli']             = sprintf('%s/cli/app/', $retail);
        $this->namespaces['Retail\Cli\Tasks']       = sprintf('%s/cli/app/tasks/', $retail);
        $this->namespaces['Retail\Api\Controllers'] = sprintf('%s/api/app/controllers/', $retail);

        $this->loadControllerNamespaces();
    }

    protected function beforeRegisterLoader(PhLoader $loader)
    {
        $config = $this->di_container->get(CCS::CONFIG);

        $loader->registerDirs([$config->cli->tasks]);
    }

    /**
     * Initializes the application
     */
    protected function initApplication()
    {
        $this->application = new PhCliConsole($this->di_container);

        /**
         * Put the console in the di_container because we need to use it in the
         * main task
         */
        $this->di_container->setShared(CCS::CONSOLE, $this->application);
    }

    /**
     * Initializes the cli dispatcher
     */
    protected function initDispatcher()
    {
        $dispatcher = new PhCliDispatcher();
        $dispatcher->setDefaultNamespace('Retail\Cli\Tasks');

        $this->di_container->set(CCS::DISPATCHER, $dispatcher, true);
    }


    /**
     * Runs the CLI application
     *
     * @return \Phalcon\Cli\Console
     */
    protected function runApplication()
    {
        return $this->application->handle($this->options);
    }

    /**
     * The functions below are empty because we don't want those elements
     * to be instantiated in the di container
     */

    protected function setupApplication()
    {
    }

    protected function initSession()
    {
    }

    protected function initFlash()
    {
    }

    protected function initRoutes()
    {
    }

    protected function initDispatcherMain()
    {
    }

    protected function initUrl()
    {
    }

    protected function initViews()
    {
        $view_simple = new PhViewSimple();
        $this->setupView($view_simple, CCS::VIEW_SIMPLE);
    }

    protected function initAuth()
    {
    }

    protected function initAcl()
    {
    }

    protected function initRequestX()
    {
    }

    protected function initMenuBuilder()
    {
    }

    protected function initTableHelper()
    {
    }
}
