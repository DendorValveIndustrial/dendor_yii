<?php
/* @var $this PropertyValueController */
/* @var $model PropertyValue */
?>

<?php
$this->breadcrumbs=array(
	'Property Values'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List PropertyValue', 'url'=>array('index')),
	array('label'=>'Create PropertyValue', 'url'=>array('create')),
	array('label'=>'Update PropertyValue', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete PropertyValue', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PropertyValue', 'url'=>array('admin')),
);
?>

<h1>View PropertyValue #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'property_id',
		'entity_id',
		'value',
	),
)); ?>