<?php
/* @var $this SystemLanguageController */
/* @var $model SystemLanguage */

$this->breadcrumbs=array(
	'System Languages'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List SystemLanguage', 'url'=>array('index')),
	array('label'=>'Manage SystemLanguage', 'url'=>array('admin')),
);
?>

<h1>Create SystemLanguage</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>