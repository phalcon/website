<?php

namespace Website\Bootstrap;

use Phalcon\Cli\Console as PhCliConsole;
use Phalcon\Cli\Dispatcher as PhCliDispatcher;
use Phalcon\DI\FactoryDefault\CLI as PhCliDI;

/**
 * Bootstrap
 */
class Cli extends AbstractBootstrap
{
    /**
     * Initializes the application
     */
    protected function initApplication()
    {
        $this->application = new PhCliConsole($this->diContainer);

        /**
         * Put the console in the diContainer because we need to use it in the
         * main task
         */
        $this->diContainer->setShared('console', $this->application);
    }

    /**
     * Initializes the Assets manager
     */
    protected function initAssets()
    {
    }

    /**
     * Initializes the Cache
     */
    protected function initCache()
    {
    }

    /**
     * Initializes the Di container
     */
    protected function initDi()
    {
        $this->diContainer = new PhCliDI();
        PhCliDI::setDefault($this->diContainer);
    }

    /**
     * Initializes the Dispatcher
     */
    protected function initDispatcher()
    {
        $dispatcher = new PhCliDispatcher();
        $dispatcher->setDefaultNamespace('Website\Cli\Tasks');

        $this->diContainer->setShared('dispatcher', $dispatcher);
    }

    /**
     * Initializes the error handlers
     */
    protected function initErrorHandler()
    {
    }

    /**
     * Initializes the routes
     */
    protected function initRoutes()
    {
    }

    /**
     * Initializes the params passed
     */
    protected function initOptions()
    {
        $arguments = [];
        if (true === isset($_SERVER['argv'])) {
            foreach ($_SERVER['argv'] as $index => $argument) {
                switch ($index) {
                    case 1:
                        $arguments['task'] = $argument;
                        break;
                    case 2:
                        $arguments['action'] = $argument;
                        break;
                    case 3:
                        $arguments['params'] = $argument;
                        break;
                }
            }
        }

        $this->options = $arguments;
    }

    /**
     * Initializes the View services and Volt
     */
    protected function initView()
    {
    }

    /**
     * Runs the main application
     *
     * @return PhCliDI
     */
    protected function runApplication()
    {
        return $this->application->handle($this->options);
    }
}
