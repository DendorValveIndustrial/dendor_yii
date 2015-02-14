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
		'news' => array('news/news/index', 'urlSuffix'=>'.html'),
		'news/<path:\w+>'=>array('news/news/list', 'urlSuffix'=>'.html'),
		'news/<category:\w+>/<url>'=>array('news/news/view', 'urlSuffix'=>'.html'),
		'news/<url>'=>array('news/news/view', 'urlSuffix'=>'.html')
	);
}
