<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
  array('label'=>'Catalog Items'),
  array('label'=>'Manage', 'url'=>array('admin')),
  array('label'=>'Create', 'url'=>array('create'), 'visible'=>(Yii::app()->user->name === 'admin')),
  array('label'=>'Copy', 'url'=>array('copy', 'id'=>$model->id), 'visible'=>(Yii::app()->user->name === 'admin')),
  array('label'=>'View', 'url'=>$model->viewUrl),
  TbHtml::menuDivider(),
  array('label'=>'Property'),
  array('label'=>'Property values item', 'url'=>array('/catalog/admin/propertyValue/index', 'item_id'=>$model->id)),
  array('label'=>'Manage Property', 'url'=>array('/catalog/admin/property/admin')),
  //array('label'=>'View', 'url'=>array('view', 'id'=>$model->id)),
  TbHtml::menuDivider(),
  array('label'=>'Catalog Group'),
  array('label'=>'Manage', 'url'=>array('/catalog/admin/catalogGroup/admin')),
);
?>

<?php echo TbHtml::pageHeader('Update', $model->name) ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
