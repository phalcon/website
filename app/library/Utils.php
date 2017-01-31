<?php

namespace Website;

use Phalcon\Mvc\User\Component;

class Utils extends Component
{
    /**
     * Checks for an environment variable and returns it; if not it returns
     * the default variable
     *
     * @param string $value
     * @param mixed  $default
     *
     * @return array|false|string
     */
    public function env($value, $default = '')
    {
        $return = $default;

        if (false !== getenv($value)) {
            $return = getenv($value);
        }

        return $return;
    }

    /**
     * Converts milliseconds to human readable format
     *
     * @param float $microseconds
     * @param int   $precision
     *
     * @return string
     */
    public function timeToHuman($microseconds, $precision = 3)
    {
        $units = ['μs', 'ns', 'ms', 's'];
        $micro = max($microseconds, 0);
        $pow   = 0;
        if (1000 < $micro) {
            $pow    = floor(($micro ? log($micro) : 0) / log(1000));
            $pow    = min($pow, count($units) - 1);
            $micro /= (1 << (10 * $pow));
        }
        return round($micro, $precision) . ' ' . $units[$pow];
    }

    /**
     * Converts bytes to a human readable format
     *
     * @param int $bytes
     * @param int $precision
     *
     * @return string
     */
    public function bytesToHuman($bytes, $precision = 2)
    {
        $units  = ['B', 'KB', 'MB', 'GB', 'TB', 'PB'];
        $bytes  = max($bytes, 0);
        $pow    = floor(($bytes ? log($bytes) : 0) / log(1024));
        $pow    = min($pow, count($units) - 1);
        $bytes /= (1 << (10 * $pow));
        return round($bytes, $precision) . ' ' . $units[$pow];
    }
}