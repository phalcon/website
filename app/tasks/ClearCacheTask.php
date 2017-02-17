<?php

namespace Website\Cli\Tasks;

use Phalcon\CLI\Task as PhTask;
use RecursiveDirectoryIterator;
use RecursiveIteratorIterator;
use Dariuszp\CliProgressBar as CliProgressBar;

/**
 * ClearCacheTask
 */
class ClearCacheTask extends PhTask
{
    /**
     * This provides the main menu of commands if an command is not entered
     */
    public function mainAction()
    {
        //$this->clearFolder('Data', 'data');
        $this->clearFolder('View', 'view');
        $this->clearFolder('Volt', 'volt');
    }

    /**
     * Iterates through a cache folder and removes the contents
     *
     * @param string $message
     * @param string $folder
     */
    private function clearFolder($message, $folder)
    {

        echo sprintf('Clearing the %s cache', $message) . PHP_EOL;

        $path         = APP_PATH . '/storage/cache/' . $folder;
        $dir_iterator = new RecursiveDirectoryIterator($path);
        $iterator     = new RecursiveIteratorIterator(
            $dir_iterator,
            RecursiveIteratorIterator::CHILD_FIRST
        );

        $steps = count($iterator);
        $bar   = new CliProgressBar($steps);
        $bar
            ->setColorToGreen()
            ->display();
        foreach ($iterator as $file) {
            if (true !== $file->isDir() &&
                '.' !== $file->getFilename() &&
                '..' !== $file->getFilename() &&
                '.gitignore' !== $file->getFilename()) {
                $bar->progress();
                unlink($file->getPathname());
            }
        }
        $bar->end();
    }
}
