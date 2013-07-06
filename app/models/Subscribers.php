<?php

use Phalcon\Mvc\Model\Message ,
    Phalcon\Mvc\Model\Validator\Email as EmailValidator ,
    Phalcon\Mvc\Model\Validator\Uniqueness as Uniqueness;

class Subscribers extends \Phalcon\Mvc\Model
{

    public $id;

    public $email;

    public $created_at;

    public function beforeValidation()
    {
        if ( !trim($this->email) ) {
            $this->appendMessage(new Message('Please provide a valid email'));

            return false;
        }
    }

    public function beforeCreate()
    {
        $this->created_at = new \Phalcon\Db\RawValue('now()');
    }

    public function validation()
    {

        $this->validate(
            new Uniqueness(array("field"   => "email" ,"message" => "You are already subscribed!"))
        );

        $this->validate(new EmailValidator(array( 'field' => 'email' )));

        return $this->validationHasFailed() != true;
    }

}
