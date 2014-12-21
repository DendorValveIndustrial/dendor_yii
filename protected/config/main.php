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
	//'sourceLanguage'=>'en',

	'aliases' => array(
		'bootstrap' => dirname(__FILE__).DIRECTORY_SEPARATOR.'../extensions/yiistrap',
	),

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'bootstrap.helpers.TbHtml',
		'bootstrap.helpers.TbArray',
		'bootstrap.behaviors.TbWidget',
		'ext.langChange.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'12345qwerty',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
			'generatorPaths' => array('bootstrap.gii'),
		),
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
			'rules' => array(
				'' => 'site/index',
				'contact' => 'site/contact',
				'search' => 'site/search',
				'login' => 'site/login',
				'<view:\w+>' => 'site/page',
				'admin/<controller:\w+>' => '<controller>/admin',
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
			'showScriptName'=>false,
			'urlSuffix'=>'.html',
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
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'admin@dendor.pl',
		'officeEmail'=>'info@dendor.pl',
	),
);
