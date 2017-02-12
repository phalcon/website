<?php

namespace Website\Cli\Tasks;

use Phalcon\CLI\Task as PhTask;

/**
 * MainTask
 */
class MainTask extends PhTask
{
    /**
     * This provides the main menu of commands if an command is not entered
     */
    public function mainAction()
    {

        echo '------------------------------------------------------' . PHP_EOL;
        echo ' Phalcon Website' . PHP_EOL;
        echo '------------------------------------------------------' . PHP_EOL;
        echo PHP_EOL;
        echo 'Usage: phalcon <command>';

        echo PHP_EOL . PHP_EOL;

        $commands = [
            '  -fetch-contributors   Fetches the contributors from Github',
            '  -clear-cache          Clears the cached files',
        ];

        echo 'Commands:' .  PHP_EOL;

        foreach ($commands as $command) {
            echo $command . PHP_EOL;
        }

        echo PHP_EOL;
    }
}
