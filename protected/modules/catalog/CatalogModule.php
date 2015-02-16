<?php

class CatalogModule extends CWebModule
{
	public function init()
	{
		// this method is called when the module is being created
		// you may place code here to customize the module or the application

		// import the module-level models and components
		$this->setImport(array(
			'catalog.models.*',
			'catalog.components.*',
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
		'catalog' => array('catalog/catalog/index', 'urlSuffix'=>'.html'),
		'<group>'=>array('catalog/catalog/list', 'urlSuffix'=>'.html'),
		// 'catalog/<category:\w+>/<url>'=>array('catalog/catalog/view', 'urlSuffix'=>'.html'),
		// 'catalog/<url>'=>array('catalog/catalog/view', 'urlSuffix'=>'.html')
	);

}
