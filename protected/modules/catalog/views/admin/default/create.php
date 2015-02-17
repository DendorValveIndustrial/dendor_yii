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
  array('label'=>'Catalog Items'),
	array('label'=>'List Items', 'url'=>array('admin')),
  array('label'=>'Catalog Group'),
  array('label'=>'List Group', 'url'=>array('/catalog/admin/catalogGroup/admin')),
);
?>

<h1>Create CatalogItems</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
