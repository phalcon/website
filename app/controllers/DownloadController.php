<?php

class DownloadController extends \ControllerBase
{

    public function indexAction($type = 'index')
    {

        switch ( $type ) {

            default:
            case 'index':
                $title = 'Download Phalcon for Linux/Unix/Mac';
                break;

            case 'tools':
                $title = 'Download Phalcon Developer Tools';
                break;

            case 'stubs':
                $title = 'Download Phalcon IDE Stubs';
                break;
        }

        \Phalcon\Tag::setTitle($title);
        $this->view->pick('download/' . $type);
    }

    public function windowsAction()
    {

        \Phalcon\Tag::setTitle('Download Phalcon for Windows');

        $path     = 'files/';
        $template = "Phalcon %s - Windows %s for PHP %s %s(%s)";
        $files    = [ ];
        $alpha    = [ ];

        foreach ( glob($path . '*.zip') as $file ) {

            $fileDate = filemtime($file);
            $date     = '';
            if ( $fileDate ) {
                $date = date("F d Y H:i:s T" , $fileDate);
            }
            $fileName = str_replace($path , '' , $file);

            if ( strpos($fileName , '_') > 0 ) {

                $chunks = explode('_' , str_replace('.zip' , '' , $fileName));

                /**
                 * The $chunks contains the information we need
                 *
                 * 0 -> phalcon
                 * 1 = architecture x86, x64
                 * 2 - VC9
                 * 3 - php version prefixed with "php"
                 * 4 - Phalcon version
                 * 5 - NTS or empty
                 */
                $version = $chunks[4];
                $arch    = $chunks[1];
                $vc      = $chunks[2];

                $phpVersion = str_replace('php' , '' , $chunks[3]);
                $php        = $phpVersion;
                $key        = $version . $phpVersion . '0';

                $nts = (isset($chunks[5])) ? 'NTS ' : '';
                $key = str_replace('.' , '' , $key);
                $key .= ($nts) ? '0' : '1';

                // Check if we have an alpha here
                if ( strpos(strtolower($version) , 'alpha') > 0 || strpos(strtolower($version) , 'beta') > 0 ) {
                    $alpha[$version][$arch][$key] = [
                        'name'     => sprintf($template , $version , $arch , $php , $nts , $vc) ,
                        'file'     => 'files/' . $fileName ,
                        'date'     => $date ,
                        'checksum' => sha1_file($file)
                    ];

                } else {
                    $files[$version][$arch][$key] = [
                        'name'     => sprintf($template , $version , $arch , $php , $nts , $vc) ,
                        'file'     => 'files/' . $fileName ,
                        'date'     => $date ,
                        'checksum' => sha1_file($file)
                    ];
                }
            }
        }

        /**
         * The $files contains all the data we need based on architecture
         * We need to sort it though so a new array will be created for this
         */
        $results = [ ];
        foreach ( $files as $arch => $data ) {

            // $data is an array which needs to be sorted by key
            krsort($data);
            $results[$arch] = $data;
        }

        krsort($results);

        /**
         * The $alpha contains all the alpha version files
         */
        $experimental = [ ];
        foreach ( $alpha as $arch => $data ) {

            // $data is an array which needs to be sorted by key
            krsort($data);
            $experimental[$arch] = $data;
        }

        if ( count($experimental) > 0 ) {
            krsort($experimental);
            reset($experimental);
            $key   = key($experimental);
            $alpha = $experimental[$key];
        } else {
            $alpha = false;
        }

        /**
         * The first element in the array is the latest version. The rest
         * are older versions. We need to sort the older versions based
         * on architecture
         */
        reset($results);
        $key     = key($results);
        $current = $results[$key];

        // Remove the latest version
        unset($results[$key]);

        // Now sort the $old versions.
        $old = [ 'x86' => [ ] , 'x64' => [ ] ];
        foreach ( $results as $result ) {
            foreach ( $result as $arch => $data ) {
                $old[$arch] = array_merge($old[$arch] , $data);
            }
        }

        if ( count($old['x86']) == 0 ) {
            unset($old['x86']);
        }

        if ( count($old['x64']) == 0 ) {
            unset($old['x64']);
        }

        $this->view->setVars(
            [
            'current' => $current ,
            'alpha'   => $alpha ,
            'old'     => $old
            ]
        );

    }


}

