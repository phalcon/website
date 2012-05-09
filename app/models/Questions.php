<?php

class Questions extends Phalcon_Model_Base {

	protected $number_views;

	public $number_favorites;

	public function initialize(){
		$this->setSource('questions');
	}

	public function getLink(){
		return 'questions/view/'.$this->id.'/'.str_replace(' ', '-', strtolower($this->subject));
	}

}
