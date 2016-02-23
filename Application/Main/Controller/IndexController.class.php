<?php
namespace Main\Controller;

use Think\Controller;

class IndexController extends Controller {
	public function index(){
		$this->display();
	}

	public function advertisement(){
		$this->display();
	}

	public function ecommerce(){
		$this->display();
	}

	public function graphic(){
		$this->display();
	}

	public function movies(){
		$this->display();
	}


	public function personal(){
		$this->display("personal");
	}

	public function quote(){
		$this->display();
	}
}