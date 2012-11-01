<?php
/**
 * \Ph\Error.php
 * Error
 *
 * Handles error displaying and logging
 *
 * @author      Nikos Dimopoulos <nikos@niden.net>
 * @since       7/22/12
 * @category    Library
 * @license     MIT - https://github.com/NDN/phalcon-angular-harryhogfootball/blob/master/LICENSE
 *
 */

namespace Ph;

use \Phalcon\DI\FactoryDefault as Di;
use \Phalcon\Exception as PhException;

class Error
{
    public static function normal($type, $message, $file, $line)
    {
        // Log it
        self::logError(
            $type,
            $message,
            $file,
            $line
        );

        // Display it under regular circumstances
    }

    public static function exception($exception)
    {
        // Log the error
        self::logError(
            'Exception',
            $exception->getMessage(),
            $exception->getFile(),
            $exception->getLine(),
            $exception->getTraceAsString()
        );

        // Display it
    }

    public static function shutdown()
    {
        $error = error_get_last();
        if ($error) {

            // Log it
            self::logError(
                $error['type'],
                $error['message'],
                $error['file'],
                $error['line']
            );

            // Display it

        } else {
            return true;
        }
    }

    protected static function logError($type, $message, $file, $line, $trace = '')
    {
        $di        = Di::getDefault();
        $template = "[%s] %s (File: %s Line: [%s])";
        if ($trace) {
                $template . PHP_EOL . $trace;
            }

        $logMessage = sprintf($template, $type, $message, $file, $line);

        if ($di->has('logger')) {

            $logger = $di->get('logger');
            if ($logger) {

                $logger->error($logMessage);
            } else {
                throw new PhException($logMessage);
            }
        } else {
            throw new PhException($logMessage);
        }
    }
}
