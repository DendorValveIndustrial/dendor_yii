<?php
/* @var $this PropertyController */
/* @var $model Property */
?>

<?php
$this->breadcrumbs=array(
	'Properties'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Property', 'url'=>array('index')),
	array('label'=>'Manage Property', 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create Property'),''); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
