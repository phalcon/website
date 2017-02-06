<?php

namespace Website\Bootstrap;

use Phalcon\Cli as PhCli;

/**
 * Bootstrap
 */
class Cli extends AbstractBootstrap
{
    /**
     * Initializes the application
     *
     * @return $this
     */
    protected function initApplication()
    {
        $this->application = new PhMicro($this->diContainer);

        return $this;
    }

    /**
     * Initializes the Assets manager
     *
     * @return $this
     */
    protected function initAssets()
    {
    }

    /**
     * Initializes the Cache
     *
     * @return $this
     */
    protected function initCache()
    {
    }

    /**
     * Initializes the autoloader
     *
     * @return $this
     */
    protected function initLoader()
    {
        /**
         * Get the PSR4 loaders from composer and register them. This way we keep
         * only one loader for the application
         */
        $composerFile = APP_PATH . '/vendor/composer/autoload_psr4.php';
        if (true !== file_exists($composerFile)) {
            throw new \InvalidArgumentException(
                'Composer autoloader file cannot be found/read. Please update composer'
            );
        }

        /**
         * The composer namespaces have an extra '\' at the end. We need to remove it.
         */
        $composerNamespaces = require_once($composerFile);

        $namespaces = [];
        foreach ($composerNamespaces as $namespace => $path) {
            $key = substr($namespace, 0, -1);
            $namespaces[$key] = $path[0];
        }

        /**
         * Not using a variable here to remove the loader from the global space
         */
        (new PhLoader())->registerNamespaces($namespaces)->register();

        return $this;
    }

    /**
     * Initializes the loggers
     *
     * @return $this
     */
    protected function initLogger()
    {
        /** @var \Phalcon\Config $config */
        $config   = $this->diContainer->getShared('config');
        $fileName = $config->get('logger')
            ->get('defaultFilename', 'application');
        $format   = $config->get('logger')
            ->get('format', '[%date%][%type%] %message%');

        $logFile   = sprintf(
            '%s/storage/logs/%s-%s.log',
            APP_PATH,
            date('Ymd'),
            $fileName
        );
        $formatter = new PhLoggerFormatter($format);
        $logger    = new PhFileLogger($logFile);
        $logger->setFormatter($formatter);

        $this->diContainer->setShared('logger', $logger);

        return $this;
    }

    /**
     * Initializes the registry
     *
     * @return $this
     */
    protected function initRegistry()
    {
        /**
         * Fill the registry with elements we will need
         */
        $registry = new PhRegistry();
        $registry->action        = '';
        $registry->contributors  = [];
        $registry->executionTime = 0;
        $registry->language      = 'en';
        $registry->memory        = 0;
        $registry->menuLanguages = [];
        $registry->slug          = '';
        $registry->releases      = [];
        $registry->version       = '3.0.0';
        $registry->view          = 'index/index';

        $this->diContainer->setShared('registry', $registry);

        return $this;
    }

    /**
     * Initializes the routes
     *
     * @return $this
     */
    protected function initRoutes()
    {
        /** @var PhConfig $config */
        $config     = $this->diContainer->getShared('config');
        $routes     = $config->get('routes')->toArray();
        $middleware = $config->get('middleware')->toArray();

        foreach ($routes as $route) {
            $collection = new PhMicroCollection();
            $collection->setHandler($route['class'], true);
            if (true !== empty($route['prefix'])) {
                $collection->setPrefix($route['prefix']);
            }

            foreach ($route['methods'] as $verb => $methods) {
                foreach ($methods as $endpoint => $action) {
                    $collection->$verb($endpoint, $action);
                }
            }
            $this->application->mount($collection);
        }

        $eventsManager = $this->diContainer->getShared('eventsManager');

        foreach ($middleware as $element) {
            $class = $element['class'];
            $event = $element['event'];
            $eventsManager->attach('micro', new $class());
            $this->application->$event(new $class());
        }

        $this->application->setEventsManager($eventsManager);

        return $this;
    }

    /**
     * Initializes the utils service and stores it in the DI
     *
     * @return $this
     */
    protected function initUtils()
    {
        $this->diContainer->setShared('utils', new Utils());

        return $this;
    }

    /**
     * Runs the main application
     *
     * @return PhApplication
     */
    protected function runApplication()
    {
        return $this->application->handle();
    }
}
