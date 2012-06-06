<?php

abstract class Tag extends Phalcon_Tag
{
    public static function classLink($className, $text=null)
    {
        if ($text) {
            echo self::linkTo(array('api/class/'.$className, $text));
        } else {
            echo self::linkTo(array('api/class/'.$className, $className));
        }
    }
}
