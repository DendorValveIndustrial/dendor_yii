<?php
/* @var $this CertificatesController */
/* @var $model Certificates */
?>

<?php
$this->breadcrumbs=array(
	'Certificates'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Certificates', 'url'=>array('index')),
	array('label'=>'Create Certificates', 'url'=>array('create')),
	array('label'=>'Update Certificates', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Certificates', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Certificates', 'url'=>array('admin')),
);
?>

<h1>View Certificates #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'image',
		'file',
		'active',
		'deleted',
	),
)); ?>
