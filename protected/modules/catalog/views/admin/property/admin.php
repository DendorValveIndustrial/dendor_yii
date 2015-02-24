<?php
/* @var $this PropertyController */
/* @var $model Property */


$this->breadcrumbs=array(
	'Properties'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Items'),
	array('label'=>'Manage Items', 'url'=>array('/catalog/admin/default/admin')),
	array('label'=>'Groups'),
	array('label'=>'Manage Groups', 'url'=>array('/catalog/admin/catalogGroup/admin')),
	array('label'=>'Property'),
	array('label'=>'Create Property', 'url'=>array('create')),

);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#property-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Properties</h1>

<p>
    You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>
        &lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'property-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'system_name',
		'type',
		'inshort',
		'required',
		'sorting',
		/*
		'deleted',
		'name',
		'description',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
