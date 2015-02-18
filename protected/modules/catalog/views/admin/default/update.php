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
  array('label'=>'Catalog Items'),
  array('label'=>'Create', 'url'=>array('create')),
  array('label'=>'View', 'url'=>array('view', 'id'=>$model->id)),
  array('label'=>'Manage', 'url'=>array('admin')),
	array('label'=>'Catalog Group'),
	array('label'=>'Manage', 'url'=>array('/catalog/admin/catalogGroup/admin')),
);
?>

    <h1>Update CatalogItems <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
