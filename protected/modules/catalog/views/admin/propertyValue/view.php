<?php
/* @var $this PropertyValueController */
/* @var $model PropertyValue */
?>

<?php
$this->breadcrumbs=array(
	'Property Values'=>array('index'),
	$model->id,
);

$this->menu=array(
  array('label'=>'Property Value'),
	array('label'=>'List PropertyValue', 'url'=>array('index', 'item_id'=>$model->entity_id)),
	array('label'=>'Update PropertyValue', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete PropertyValue', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PropertyValue', 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>'Return Item','url'=>array('/catalog/admin/default/update', 'id'=>$model->entity_id)),
);
?>

<?php echo TbHtml::pageHeader('View  Property Value '.$model->system_name); ?>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'property_id',
		'entity_id',
		'value',
	),
)); ?>
