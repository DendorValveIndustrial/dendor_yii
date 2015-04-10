<?php
/* @var $this CertificatesController */
/* @var $model Certificates */
?>

<?php
$this->breadcrumbs=array(
	'Certificates'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Certificates', 'url'=>array('index')),
	array('label'=>'Create Certificates', 'url'=>array('create')),
	array('label'=>'View Certificates', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Certificates', 'url'=>array('admin')),
);
?>

    <h1>Update Certificates <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>