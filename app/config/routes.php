<?php

$router = new \Phalcon\Mvc\Router(false);

$router->notFound([ "controller" => "index" , "action" => "notFound" ]);
$router->removeExtraSlashes(true);

$router->add('/' , 'Index::index')->setName('index');

$router->add('/{pageSlug:(about|reference|team|roadmap|consulting|hosting|examples|support)}' , [ 'controller' => 'Pages','action'=>'page'])->setName('pages');
$router->add('/download' , [ 'controller' => 'download' ])->setName('download');
$router->add('/documentation' , [ 'controller' => 'documentation' ])->setName('documentation');

$router->add('/test' , [ 'controller' => 'pages','action'=>'index' ])->setName('test');
//$router->add('/about' , [ 'controller' => 'pages','action'=>'about' ])->setName('about');


return $router;
