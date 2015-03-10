<?php
/* @var $this PropertyValueController */
/* @var $model PropertyValue */
?>

<?php
$this->breadcrumbs=array(
	'Property Values'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
  array('label'=>Yii::t('admin','Create Property Value'),'url'=>array('/catalog/admin/propertyValue/create', 'item_id'=>$model->entity_id), 'visible'=>(Yii::app()->user->name === 'admin')),
  array('label'=>Yii::t('admin','Property')),
  array('label'=>Yii::t('admin','Manage Property'), 'url'=>array('/catalog/admin/property/admin')),
  TbHtml::menuDivider(),
  array('label'=>'Return Manage','url'=>array('/catalog/admin/propertyValue/index', 'item_id'=>$model->entity_id)),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update Property Value'),$model->catalog_item->name) ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
