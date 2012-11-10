<?php

/**
 * Debug.php
 * Debug
 *
 * Offers shortcuts to functions for easier debugging
 *
 * @author      Nikos Dimopoulos <nikos@niden.net>
 * @since       2012-11-01
 * @category    Library
 */

if (!function_exists('vd'))
{
    /**
     * var_dump()
     */
    function vd($string)
    {
        var_dump($string);
    }
}

if (!function_exists('pr'))
{
    /**
     * print_r($string, $return)
     */
    function pr($string, $return = FALSE)
    {
        if ($return)
        {
            return print_r($string, TRUE);
        }
        else
        {
            print_r($string);
        }
    }
}

if (!function_exists('vdd'))
{
    /**
     * var_dump() + die()
     */
    function vdd($string)
    {
        var_dump($string);
        exit();
    }
}

if (!function_exists('prd'))
{
    /**
     * print_r($string, $return) + die()
     */
    function prd($string, $return = FALSE)
    {
        if ($return)
        {
            return print_r($string, TRUE);
        }
        else
        {
            print_r($string);
        }
        exit();
    }
}

if (!function_exists('gcm'))
{
    /**
     * get_class_methods($class)
     */
    function gcm($class)
    {
        return get_class_methods($class);
    }
}

if (!function_exists('e'))
{
    /**
     * echo($string)
     */
    function e($string)
    {
        print($string);
    }
}

if (!function_exists('d'))
{
    /**
     * die($string)
     */
    function d($string = NULL)
    {
        die($string);
    }
}
