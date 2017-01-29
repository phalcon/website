<?php
/**
 * Bootstraps the application
 */
use Phalcon\DI\FactoryDefault as PhDi,
    Phalcon\Config as PhConfig,
    Phalcon\Session\Adapter\Files as PhSession,
    Phalcon\Loader as PhLoader,
    Phalcon\Mvc\Url as PhUrl,
    Phalcon\Mvc\Router as PhRouter,
    Phalcon\Db\Adapter\Pdo\Mysql as PhMysql,
    Phalcon\Exception as PhException,
    Phalcon\Mvc\Application as PhApplication,
    Phalcon\Mvc\View as PhView,
    Phalcon\Mvc\View\Engine\Volt as PhVolt,
    Phalcon\Mvc\Model\Metadata\Memory as PhMetadataMemory,
    Phalcon\Cache\Frontend\Output as PhCacheFront,
    Phalcon\Cache\Backend\File as PhCacheBackFile,
    Phalcon\Cache\Backend\Apc as PhCacheBackApc;

class Bootstrap
{
    private $di;

    /**
     * Constructor
     *
     * @param $di
     */
    public function __construct($di)
    {
        $this->di = $di;
    }

    /**
     * Runs the application performing all initializations
     *
     * @param $options
     *
     * @return mixed
     */
    public function run($options)
    {
        $loaders = array(
            'session',
            'config',
            'loader',
            'url',
            'router',
            'view',
            'cache',
        );

        foreach ($loaders as $service) {
            $function = 'init' . ucfirst($service);
            $this->$function();
        }

        $application = new PhApplication();
        $application->setDI($this->di);

        if (PHP_OS == 'Linux') {
            $uri = $_SERVER['REQUEST_URI'];
        } else {
            $uri = null;
        }

        return $application->handle($uri)->getContent();
    }

    // Protected functions
    /**
     * Initializes the router
     *
     * @param array $options
     */
    protected function initRouter($options = array())
    {
        $config = $this->di['config'];

        $this->di['router'] = function () use ($config) {

            $router = new PhRouter(false);

            $router->notFound(
                array(
                    "controller" => "index",
                    "action"     => "notFound",
                )
            );
            $router->removeExtraSlashes(true);

            foreach ($config['routes'] as $route => $items) {
                $router->add($route, $items->params->toArray())
                       ->setName($items->name);
            }

            return $router;
        };
    }

}
