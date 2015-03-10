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
	array('label'=>Yii::t('admin','Property')),
	array('label'=>Yii::t('admin','Property values item'), 'url'=>array('admin', 'item_id'=>$item->id)),
);
?>

<?php echo TbHtml::pageHeader('Create Property Value', $item->name); ?>

<?php $this->renderPartial('_form', array('model'=>$model, 'item'=>$item)); ?>
