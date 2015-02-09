<?php
/* @var $this SystemLanguageController */
/* @var $model SystemLanguage */

$this->breadcrumbs=array(
	'System Languages'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List SystemLanguage', 'url'=>array('index')),
	array('label'=>'Create SystemLanguage', 'url'=>array('create')),
	array('label'=>'Update SystemLanguage', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete SystemLanguage', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage SystemLanguage', 'url'=>array('admin')),
);
?>

<h1>View SystemLanguage #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'code',
		'locale',
		'default',
		'flag_name',
	),
)); ?>
