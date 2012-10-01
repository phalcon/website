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
        $files = array(
            'win-050-g-539-x86-vc9'     => array(
                                            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP &gt; 5.3.9 (VC9)',
                                            'file' => 'files/phalcon-win-x86-php5.3-0.5-VC9.zip',
                                            'date' => '',
                                           ),
            'win-050-l-539-x86-vc9'     => array(
                                            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP &lt;= 5.3.9 (VC9)',
                                            'file' => 'files/phalcon-win-x86-php5.3.9-0.5-VC9.zip',
                                            'date' => '',
                                           ),
            'win-050-g-539-x86-vc9-nts' => array(
                                            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP &gt; 5.3.9 NTS (VC9)',
                                            'file' => 'files/phalcon-win-x86-php5.3-nts-0.5-VC9.zip',
                                            'date' => '',
                                           ),
            'win-050-g-539-x64-vc9'     => array(
                                            'name' => 'Phalcon 0.5.0 - Windows x64 for PHP &gt; 5.3.9 (VC9)',
                                            'file' => 'files/phalcon-win-x64-php5.3-0.5-VC9.zip',
                                            'date' => '',
                                           ),
            'win-050-l-539-x86-vc9'     => array(
                                            'name' => 'Phalcon 0.5.0 - Windows x64 for PHP &lt;= 5.3.9 (VC9)',
                                            'file' => 'files/phalcon-win-x64-php5.3.9-0.5-VC9.zip',
                                            'date' => '',
                                           ),
            'win-050-e-540-x86-vc9'     => array(
                                            'name' => 'Phalcon 0.5.0 - Windows x86 for PHP 5.4 (VC9)',
                                            'file' => 'files/phalcon-win-x86-php5.4-0.5-VC9.zip',
                                            'date' => '',
                                           ),
        );

        // Get the last modified date of each file
        foreach ($files as $key => $file) {

            $fileName = $file['file'];
            $fileDate = filemtime($fileName);

            if ($fileDate) {
                $files[$key]['date'] = date("F d Y H:i:s", $fileDate);
            }
        }

        $this->view->setVar('files', $files);
    }
}
