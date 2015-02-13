<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatalogGroup', 'url'=>array('index')),
	array('label'=>'Create CatalogGroup', 'url'=>array('create')),
	array('label'=>'View CatalogGroup', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage CatalogGroup', 'url'=>array('admin')),
);
?>

    <h1>Update CatalogGroup <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>