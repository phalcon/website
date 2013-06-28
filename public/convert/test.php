<html>
<head>
    <style>
        pre {float: left;
            border: 1px solid gray;
            padding: 1em;
            margin:0;
            background-color: #C3FDB8;
            margin-right: 3em;}
        hr {clear: both; margin-bottom: 2em; margin-top: 2em;}
    </style>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
</head>
<body>
<?php

$data = file_get_contents("models.rst");

//$data= '111 :doc:`Phalcon\\Mvc\\Model <../api/Phalcon_Mvc_Model>` 22';

$data = strtr(
    $data ,
    [
    ':doc:`' => '`' ,
    '>`'     => '>`_' ,
    ]
);

require_once 'rst.php';

echo RST($data);
