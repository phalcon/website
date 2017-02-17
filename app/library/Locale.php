<?php

namespace Website;

use Phalcon\Mvc\User\Component;

/**
 * Class Locale
 *
 * @property \Phalcon\Config   $config
 * @property \Phalcon\Registry $registry
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
         * The first argument will be the language. The second is the name of
         * the string to be translated. Subsequent arguments will serve as
         * replacement values to placeholders in the translated string.
         */

        $defaultLanguage = $this->config->get('app')->get('lang', 'en');
        $currentLanguage = $this->registry->language;

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
                    '%s/storage/languages/%s.json',
                    APP_PATH,
                    $defaultLanguage
                )
            );

            $phrases = json_decode($english, true);

            if ('en' !== $currentLanguage) {
                $other   = file_get_contents(
                    sprintf(
                        '%s/storage/languages/%s.json',
                        APP_PATH,
                        $currentLanguage
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
