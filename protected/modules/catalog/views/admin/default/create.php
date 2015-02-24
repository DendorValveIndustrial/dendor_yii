<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	'Create',
);

$this->menu=array(
  array('label'=>'Items'),
  array('label'=>'Create New Item', 'url'=>array('create')),
  array('label'=>'Groups'),
  array('label'=>'Manage Groups', 'url'=>array('/catalog/admin/catalogGroup/admin')),
  array('label'=>'Property'),
  array('label'=>'Manage Prperty', 'url'=>array('/catalog/admin/property/admin')),
);
?>

<h1>Create Catalog Item</h1>

<?php $this->renderPartial('_form', array('model'=>$model, 'properties'=>$properties)); ?>
