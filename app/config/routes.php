<?php

$router = new \Phalcon\Mvc\Router(false);

$router->notFound([ "controller" => "index" , "action" => "notFound" ]);
$router->removeExtraSlashes(true);

$router->add('/' , 'index::index')->setName('index');

$router->add('/{pageSlug:(models|about|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}' , [ 'controller' => 'pages' , 'action' => 'page' ])->setName('pages');

$router->add('/download' , [ 'controller' => 'download' ])->setName('download');
$router->add('/download/{type:(tools|stubs)}' , [ 'controller' => 'download' , 'action' => 'index' ])->setName('download-type');
$router->add('/download/windows' , [ 'controller' => 'download' , 'action' => 'windows' ])->setName('download-windows');

$router->add('/(documentation|reference)' , [ 'controller' => 'documentation' , 'action' => 'index' ])->setName('documentation');

$router->add('/donate' , [ 'controller' => 'index' , 'action' => 'donate' ])->setName('donate');


return $router;
