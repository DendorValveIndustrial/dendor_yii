<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List CatalogItems', 'url'=>array('index')),
	array('label'=>'Create CatalogItems', 'url'=>array('create')),
	array('label'=>'Update CatalogItems', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete CatalogItems', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CatalogItems', 'url'=>array('admin')),
);
?>

<h1>View CatalogItems #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'group_id',
		'modification_id',
		'created',
		'publish',
		'end_date',
		'url',
		'image',
		'price',
		'active',
		'sorting',
		'deleted',
	),
)); ?>