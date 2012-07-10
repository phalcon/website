<?php

abstract class Tag extends Phalcon\Tag
{

    public static function classLink($className, $text=null)
    {
        if ($text) {
            return self::linkTo(array('api/class/'.$className, $text));
        } else {
            return self::linkTo(array('api/class/'.$className, $className));
        }
    }

    public static function classMethodLink($className, $method, $text=null)
    {
        if ($text) {
            return self::linkTo(array('api/class/'.$className.'#'.$method, $text));
        } else {
            return self::linkTo(array('api/class/'.$className.'#'.$method, $className));
        }
    }
}
