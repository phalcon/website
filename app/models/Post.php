<?php

class Post extends Phalcon_Model_Base {

	public function initialize(){
		$this->setSource('post');
	}

}
