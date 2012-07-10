<?php

use Phalcon\Model\Base as Model;

class Subscribers extends Model
{
    public function initialize()
    {
        $this->setSource('subscribers');
    }
}
