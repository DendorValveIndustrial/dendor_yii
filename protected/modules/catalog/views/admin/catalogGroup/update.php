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
	array('label'=>'Catalog Group'),
	array('label'=>'Create', 'url'=>array('create')),
	array('label'=>'View', 'url'=>array('view', 'id'=>$model->id)),
  array('label'=>'Manage', 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>'Catalog Items'),
	array('label'=>'Manage Items', 'url'=>array('/catalog/admin/default/admin')),
);
?>

<?php echo TbHtml::pageHeader('Update Catalog Group',$model->name); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
