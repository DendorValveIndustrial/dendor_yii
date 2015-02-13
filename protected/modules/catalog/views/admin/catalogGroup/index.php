<?php
/* @var $this CatalogGroupController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Groups',
);

$this->menu=array(
	array('label'=>'Create CatalogGroup','url'=>array('create')),
	array('label'=>'Manage CatalogGroup','url'=>array('admin')),
);
?>

<h1>Catalog Groups</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>