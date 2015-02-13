<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List CatalogGroup', 'url'=>array('index')),
	array('label'=>'Create CatalogGroup', 'url'=>array('create')),
	array('label'=>'Update CatalogGroup', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete CatalogGroup', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CatalogGroup', 'url'=>array('admin')),
);
?>

<h1>View CatalogGroup #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'parent_id',
		'image',
		'url',
		'active',
		'sorting',
		'page_size',
		'deleted',
	),
)); ?>