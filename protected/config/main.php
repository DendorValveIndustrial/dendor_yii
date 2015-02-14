<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Dendor Valve Industrial',
	'theme'=>'bootstrap',
	'language'=>'pl',
	//'sourceLanguage'=>'pl',

	'aliases' => array(
		'bootstrap' => dirname(__FILE__).DIRECTORY_SEPARATOR.'../extensions/yiistrap',
	),

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.widgets.*',
		'bootstrap.helpers.TbHtml',
		'bootstrap.helpers.TbArray',
		'bootstrap.behaviors.TbWidget',
	),

	'modules'=>array(
		'news',
		'sliders',
		'languages',
		'pages',
		'catalog',
		'admin',
		// uncomment the following to enable the Gii tool
		/*'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'12345qwerty',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
			'generatorPaths' => array('bootstrap.gii'),
		),*/
	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
		),
		// uncomment the following to enable URLs in path-format

		'urlManager'=>array(
			'urlFormat' => 'path',
			'class'=>'UrlManager',
			'showScriptName'=>false,
			'useStrictParsing'=>true,
			'rules' => array(
				'' => array('site/index', 'urlSuffix'=>''),
				'<action:(contact|search|login)>' => array('site/<action>', 'urlSuffix'=>'.html'),
				'<action:(logout|captcha)>' => 'site/<action>',
				'<view:about>' => array('site/page', 'urlSuffix'=>'.html'),

				//'admin'=>'site/login',
				'admin'=>'admin/default/index',

				'admin/<module:\w+>'=>'<module>/admin/default',
				'admin/<module:\w+>/<controller:\w+>'=>'<module>/admin/<controller>',
				'admin/<module:\w+>/<controller:\w+>/<action:\w+>'=>'<module>/admin/<controller>/<action>',
				'admin/<module:\w+>/<controller:\w+>/<action:\w+>/*'=>'<module>/admin/<controller>/<action>',

				'gii'=>'gii/default/login',
				'gii/<controller:\w+>'=>'gii/<controller>',
				'gii/<controller:\w+>/<action:\w+>'=>'gii/<controller>/<action>',
			),
		),

		/*'db'=>array(
			'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		),*/
		// uncomment the following to use a MySQL database

		'db'=>array(
			'connectionString' => 'mysql:host=localhost;dbname=dendor_yii1',
			'emulatePrepare' => true,
			'username' => 'root',
			'password' => '',
			'charset' => 'utf8',
		),
		'request'=>array(
			'class'=>'HttpRequest',
			'enableCsrfValidation'=>true,
			'enableCookieValidation'=>true,
			'noCsrfValidationRoutes'=>array(
			)
		),
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
		'viewRenderer'=>array(
			'class'=>'ext.phamlp.Haml',
			// delete options below in production
			'ugly' => false,
			'style' => 'nested',
			'debug' => 0,
			'cache' => false,
		),
		'bootstrap' => array(
			'class' => 'bootstrap.components.TbApi',
		),
		'languageManager'=>array(
			'class'=>'LanguageManager',
		),
	),

	'onBeginRequest' => array(
		'ModuleUrlManager', 'collectRules'
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'admin@dendor.pl',
		'officeEmail'=>'info@dendor.pl',
		'uploadPath'=>Yii::getPathOfAlias('webroot').'/upload/',
	),
);
