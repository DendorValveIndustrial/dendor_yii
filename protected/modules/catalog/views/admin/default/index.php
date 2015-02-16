<?php
/* @var $this CatalogItemsController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items',
);

$this->menu=array(
	array('label'=>'Create CatalogItems','url'=>array('create')),
	array('label'=>'Manage CatalogItems','url'=>array('admin')),
);
?>

<h1>Catalog Items</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>