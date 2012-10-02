<?php

class DownloadController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon\Tag::setTitle('Downloads');
        parent::initialize();
    }

    public function indexAction()
    {
        $dll_01 = array(
            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP 5.4 (VC9)',
            'file' => 'files/phalcon-win-x86-php5.4-0.5-VC9.zip',
            'date' => '',
        );

        $dll_02 = array(
            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP &gt; 5.3.9 (VC9)',
            'file' => 'files/phalcon-win-x86-php5.3-0.5-VC9.zip',
            'date' => '',
        );

        $dll_03 = array(
            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP &gt; 5.3.9 NTS (VC9)',
            'file' => 'files/phalcon-win-x86-php5.3-nts-0.5-VC9.zip',
            'date' => '',
        );
//        $dll_04 = array(
//            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP &lt;= 5.3.9 (VC9)',
//            'file' => '',
//            'date' => '',
//        );
//
//        $dll_10 = array(
//            'name' => 'Phalcon 0.5.0 - Windows x64 for PHP 5.4 (VC9)',
//            'file' => '',
//            'date' => '',
//        );

        $dll_11 = array(
            'name' => 'Phalcon 0.5.0 - Windows x64 for PHP &gt; 5.3.9 (VC9)',
            'file' => 'http://phalconphp.com/files/phalcon-win-x64-php5.3-0.5-VC9.zip',
            'date' => '',
        );

        $current = array(
            'x86' => array($dll_01, $dll_02, $dll_03),
            'x64' => array($dll_11),
        );
//        $current = array(
//            'x86' => array($dll_01, $dll_02, $dll_03, $dll_04),
//            'x64' => array($dll_10, $dll_11),
//        );

        // Get the last modified date of each file
        foreach ($current as $versionKey => $version) {

            foreach ($version as $key => $file) {
                $fileName = $file['file'];
                $fileDate = filemtime($fileName);

                if ($fileDate) {
                    $current[$versionKey][$key]['date'] = date("F d Y H:i:s", $fileDate);
                }
            }
        }

        $dll_01 = array(
            'name' => 'Phalcon 0.4.5 - Windows x86 for PHP 5.4 (VC9)',
            'file' => 'files/phalcon-win-x86-php5.4-0.4-VC9.zip',
            'date' => '',
        );

        $dll_02 = array(
            'name' => 'Phalcon 0.4.5 - Windows x86 for PHP 5.3 (VC9)',
            'file' => 'files/phalcon-win-x86-php5.3-0.4-VC9.zip',
            'date' => '',
        );

        $dll_10 = array(
            'name' => 'Phalcon 0.4.5 - Windows x64 for PHP 5.3 (VC9)',
            'file' => 'files/phalcon-win-x64-php5.3-0.4-VC9.zip',
            'date' => '',
        );

        $old = array(
            'x86' => array($dll_01, $dll_02),
            'x64' => array($dll_10),
        );

        // Get the last modified date of each file
        foreach ($old as $versionKey => $version) {

            foreach ($version as $key => $file) {
                $fileName = $file['file'];
                $fileDate = filemtime($fileName);

                if ($fileDate) {
                    $old[$versionKey][$key]['date'] = date("F d Y H:i:s", $fileDate);
                }
            }
        }

        $this->view->setVar('current', $current);
        $this->view->setVar('old', $old);
    }
}
