<?php
/* @var $this PropertyValueController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Property Values',
);

$this->menu=array(
	array('label'=>'Create PropertyValue','url'=>array('create')),
	array('label'=>'Manage PropertyValue','url'=>array('admin')),
);
?>

<h1>Property Values</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>