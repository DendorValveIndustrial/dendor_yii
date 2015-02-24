<?php
/* @var $this PropertyValueController */
/* @var $model PropertyValue */
?>

<?php
$this->breadcrumbs=array(
	'Property Values'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List PropertyValue', 'url'=>array('index')),
	array('label'=>'Manage PropertyValue', 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader('Create Property Value', $item->name); ?>

<?php $this->renderPartial('_form', array('model'=>$model, 'item'=>$item)); ?>
