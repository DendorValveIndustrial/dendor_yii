<?php

return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Dendor Valve Industrial',
	'theme'=>'bootstrap',
	'language'=>'pl',

	'aliases' => array(
		'bootstrap' => dirname(__FILE__).DIRECTORY_SEPARATOR.'../extensions/yiistrap',
		'fontawesome' => dirname(__FILE__).DIRECTORY_SEPARATOR.'../extensions/fontAwesome',
	),

	'preload'=>array('log'),

	'import'=>require(dirname(__FILE__).'/import.php'),

	'modules'=>array(
		'pages',
		'news',
		'certificates',
		'catalog',
		'sliders',
		'languages',
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
			),
		),
		'bootstrap' => array(
			'class' => 'bootstrap.components.TbApi',
		),
		'fontawesome' => array(
			'class' => 'fontawesome.components.FaApi',
		),
		'languageManager'=>array(
			'class'=>'LanguageManager',
		),
		'thumbnailImage' => array(
			'class'=> 'ThumbnailImageManager',
		),
	),

	'onBeginRequest' => array(
		'ModuleUrlManager', 'collectRules'
	),

	'params'=>require(dirname(__FILE__).'/params.php'),
);
