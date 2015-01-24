<?php
/* @var $this SystemLanguageController */
/* @var $model SystemLanguage */

$this->breadcrumbs=array(
	'System Languages'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List SystemLanguage', 'url'=>array('index')),
	array('label'=>'Create SystemLanguage', 'url'=>array('create')),
	array('label'=>'View SystemLanguage', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage SystemLanguage', 'url'=>array('admin')),
);
?>

<h1>Update SystemLanguage <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>