<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatalogItems', 'url'=>array('index')),
	array('label'=>'Create CatalogItems', 'url'=>array('create')),
	array('label'=>'View CatalogItems', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage CatalogItems', 'url'=>array('admin')),
);
?>

    <h1>Update CatalogItems <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>