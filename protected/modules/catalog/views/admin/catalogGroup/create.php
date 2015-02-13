<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CatalogGroup', 'url'=>array('index')),
	array('label'=>'Manage CatalogGroup', 'url'=>array('admin')),
);
?>

<h1>Create CatalogGroup</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>