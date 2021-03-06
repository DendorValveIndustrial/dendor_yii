<?php
  return array(
    '' => array('site/index', 'urlSuffix'=>''),
    '<action:(contact|search|login|map)>' => array('site/<action>', 'urlSuffix'=>'.html'),
    '<action:(sitemap)>' => array('site/<action>', 'urlSuffix'=>'.xml'),
    '<action:(logout|captcha)>' => 'site/<action>',
    '<view:(about|price)>' => array('site/page', 'urlSuffix'=>'.html'),

    'admin'=>'admin/default/index',

    'admin/<module:\w+>'=>'<module>/admin/default',
    'admin/<module:\w+>/<controller:\w+>'=>'<module>/admin/<controller>',
    'admin/<module:\w+>/<controller:\w+>/<action:\w+>'=>'<module>/admin/<controller>/<action>',
    'admin/<module:\w+>/<controller:\w+>/<action:\w+>/*'=>'<module>/admin/<controller>/<action>',

    'gii'=>'gii/default/login',
    'gii/<controller:\w+>'=>'gii/<controller>',
    'gii/<controller:\w+>/<action:\w+>'=>'gii/<controller>/<action>',
  );
