<?php
/* @var $this PropertyValueController */
/* @var $model PropertyValue */
?>

<?php
$this->breadcrumbs=array(
	'Property Values'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List PropertyValue', 'url'=>array('index')),
	array('label'=>'Create PropertyValue', 'url'=>array('create')),
	array('label'=>'View PropertyValue', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage PropertyValue', 'url'=>array('admin')),
);
?>

    <h1>Update PropertyValue <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>