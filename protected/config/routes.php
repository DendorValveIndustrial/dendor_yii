<?php
  return array(
    '' => array('site/index', 'urlSuffix'=>''),
    '<action:(contact|search|login)>' => array('site/<action>', 'urlSuffix'=>'.html'),
    '<action:(logout|captcha)>' => 'site/<action>',
    '<view:about>' => array('site/page', 'urlSuffix'=>'.html'),

    'admin'=>'admin/default/index',
    // //'admin/user'=>'admin/user/admin',
    // 'admin/<controller:\w+>'=>'admin/<controller>',
    // 'admin/<controller:\w+>/<action:\w+>'=>'admin/<controller>/<action>',
    // 'admin/<controller:\w+>/<action:\w+>/*'=>'admin/<controller>/<action>',

    'admin/<module:\w+>'=>'<module>/admin/default',
    'admin/<module:\w+>/<controller:\w+>'=>'<module>/admin/<controller>',
    'admin/<module:\w+>/<controller:\w+>/<action:\w+>'=>'<module>/admin/<controller>/<action>',
    'admin/<module:\w+>/<controller:\w+>/<action:\w+>/*'=>'<module>/admin/<controller>/<action>',

    'gii'=>'gii/default/login',
    'gii/<controller:\w+>'=>'gii/<controller>',
    'gii/<controller:\w+>/<action:\w+>'=>'gii/<controller>/<action>',
  );
