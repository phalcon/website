<?php

$router = new \Phalcon\Mvc\Router(false);

$router->notFound(array( "controller" => "index" , "action" => "notFound" ));
$router->removeExtraSlashes(true);

$router->add('/' , 'index::index')->setName('index');

$router->add('/{pageSlug:(models|about|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}' , array( 'controller' => 'pages' , 'action' => 'page'))->setName('pages');

$router->add('/download' , array( 'controller' => 'download' ))->setName('download');
$router->add('/download/{type:(tools|stubs)}' , array( 'controller' => 'download' , 'action' => 'index' ))->setName('download-type');
$router->add('/download/windows' , array( 'controller' => 'download' , 'action' => 'windows' ))->setName('download-windows');

$router->add('/(documentation|reference)' , array( 'controller' => 'documentation' , 'action' => 'index' ))->setName('documentation');

$router->add('/donate' , array( 'controller' => 'index' , 'action' => 'donate' ))->setName('donate');


return $router;
