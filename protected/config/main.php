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

	'preload'=>array('log'),

	'import'=>require(dirname(__FILE__).'/import.php'),

	'modules'=>array(
		'news',
		'sliders',
		'languages',
		'pages',
		'catalog',
		'admin',
		'users',
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
			'allowAutoLogin'=>true,
		),
		'urlManager'=>array(
			'urlFormat' => 'path',
			'class'=>'UrlManager',
			'showScriptName'=>false,
			'useStrictParsing'=>true,
			'rules' => require(dirname(__FILE__).'/routes.php'),
		),
		'db'=>require(dirname(__FILE__).'/db.php'),
		'db2'=>require(dirname(__FILE__).'/db2.php'),
		'request'=>array(
			'class'=>'HttpRequest',
			'enableCsrfValidation'=>true,
			'enableCookieValidation'=>true,
			'noCsrfValidationRoutes'=>array(
			)
		),
		'errorHandler'=>array(
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

	'params'=>require(dirname(__FILE__).'/params.php'),
);
