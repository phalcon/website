<?php

$router = new \Phalcon\Mvc\Router(false);

$router->notFound([ "controller" => "index" , "action" => "notFound" ]);
$router->removeExtraSlashes(true);

$router->add('/' , 'index::index')->setName('index');

$router->add('/{pageSlug:(models|about|reference|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}' , [ 'controller' => 'pages' , 'action' => 'page' ])->setName('pages');

$router->add('/download' , [ 'controller' => 'download' ])->setName('download');
$router->add('/download/{type:(windows|tools|stubs)}' , [ 'controller' => 'download' , 'action' => 'type' ])->setName('download-type');

/*
$router->add('/documentation' , [ 'controller' => 'documentation' , 'action' => 'index' ])->setName('documentation');
$router->add('/documentation/{pageSlug:[a-z\-]+}.html' , [ 'controller' => 'documentation' , 'action' => 'show' ])->setName('documentation-page');
$router->add('/test' , [ 'controller' => 'pages' , 'action' => 'index' ])->setName('test');
$router->add('/about' , [ 'controller' => 'pages','action'=>'about' ])->setName('about');
*/

return $router;
