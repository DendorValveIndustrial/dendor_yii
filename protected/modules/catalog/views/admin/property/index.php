<?php
/* @var $this PropertyController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Properties',
);

$this->menu=array(
	array('label'=>'Create Property','url'=>array('create')),
	array('label'=>'Manage Property','url'=>array('admin')),
);
?>

<h1>Properties</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>