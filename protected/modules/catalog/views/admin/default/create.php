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
	array('label'=>'List CatalogItems', 'url'=>array('index')),
	array('label'=>'Manage CatalogItems', 'url'=>array('admin')),
);
?>

<h1>Create CatalogItems</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>