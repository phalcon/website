<?php

namespace Website\View\Engine\Volt\Extensions;

/**
 * Class Php
 */
class Php
{
    /**
     * This method is called on any attempt to compile a function call
     *
     * @param string $name
     * @param string $arguments
     *
     * @return null|string
     */
    public function compileFunction($name, $arguments)
    {
        if (function_exists($name)) {
            return sprintf('%s(%s)', $name, $arguments);
        }
    }
}
