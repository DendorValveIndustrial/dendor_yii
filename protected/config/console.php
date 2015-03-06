<?php

// This is the configuration for yiic console application.
// Any writable CConsoleApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'My Console Application',

	// preloading 'log' component
	'preload'=>array('log'),

	'import'=>require(dirname(__FILE__).'/import.php'),

	// application components
	'components'=>array(
		'db'=>require(dirname(__FILE__).'/db.php'),
		'db2'=>require(dirname(__FILE__).'/db2.php'),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
			),
		),
	),

	'params'=>require(dirname(__FILE__).'/params.php'),
);
