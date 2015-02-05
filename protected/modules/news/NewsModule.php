<?php

class NewsModule extends CWebModule
{
	public function init()
	{
		// this method is called when the module is being created
		// you may place code here to customize the module or the application

		// import the module-level models and components
		$this->setImport(array(
			'news.models.*',
			'news.components.*',
		));
	}

	public function beforeControllerAction($controller, $action)
	{
		if(parent::beforeControllerAction($controller, $action))
		{
			// this method is called before any module controller action is performed
			// you may place customized code here
			return true;
		}
		else
			return false;
	}

	public $urlRules = array(
		'news' => 'news/news/index',
		'news/<path:\w+>'=>'news/news/list',
		'news/<controller:\w+>/<id:\d+>'=>'news/<controller>/view',
		'news/<controller:\w+>/<action:\w+>/<id:\d+>'=>'news/<controller>/<action>',
		'news/<controller:\w+>/<action:\w+>'=>'news/<controller>/<action>',
	);
}
