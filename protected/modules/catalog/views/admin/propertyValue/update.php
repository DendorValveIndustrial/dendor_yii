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
  array('label'=>'Property'),
  array('label'=>'Manage Property', 'url'=>array('/catalog/admin/property/admin')),
  TbHtml::menuDivider(),
  array('label'=>'Return','url'=>array('/catalog/admin/propertyValue/index', 'item_id'=>$model->entity_id)),
);
?>

    <h1>Update PropertyValue <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
