<?php

namespace Website;

use Phalcon\Mvc\User\Component;
use Website\Constants\Environment;

/**
 * Class Locale
 *
 * @property \Phalcon\Config $config
 */
class Locale extends Component
{
    private $phrases = [];

    /**
     * Translates a string
     *
     * @param array $arguments
     *
     * @return string
     */
    public function translate(...$arguments)
    {
        /**
         * $args has all the arguments passed.
         *
         * The first argument will be the name of the string to be translated.
         * Subsequent arguments will serve as replacement values to placeholders
         * in the translated string.
         */

        /**
         * If we are logged in, get the language specified in the identity,
         * otherwise revert to the default language for this installation
         */
        $language = $this->config->get('app')->get('lang', 'en');

        /**
         * If no phrases are present we need to load them
         */
        if (0 === count($this->phrases)) {
            /**
             * English is the base language. Anything else overwrites that.
             * This makes it easier to find text that has not been translated
             * yet
             */
            $english = file_get_contents(
                sprintf(
                    '%s/storage/languages/en.json',
                    APP_PATH
                )
            );

            $phrases = json_decode($english, true);

            if ('en' !== $language) {
                $other   = file_get_contents(
                    sprintf(
                        '%s/storage/languages/%s.json',
                        APP_PATH,
                        $language
                    )
                );
                $other   = json_decode($other, true);
                $phrases = array_merge($phrases, $other);
            }

            $this->phrases = $phrases;
        }

        $return = '';
        if (count($arguments) > 0) {
            $key = $arguments[0];

            /**
             * For default translation is a $key if it's not found
             */
            $return = $key;

            if (isset($this->phrases[$key])) {
                $return = $this->phrases[$key];

                /**
                 * Replace placeholders on subsequent args
                 */
                unset($arguments[0]);

                foreach ($arguments as $key => $argument) {
                    $return = str_replace(
                        sprintf(':%s:', $key),
                        $argument,
                        $return
                    );
                }
            }
        }

        return $return;
    }
}