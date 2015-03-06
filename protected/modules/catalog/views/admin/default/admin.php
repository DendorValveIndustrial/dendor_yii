<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */


$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Items'),
	array('label'=>'Create New Item', 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
	array('label'=>'Groups'),
	array('label'=>'Manage Groups', 'url'=>array('/catalog/admin/catalogGroup/admin')),
	array('label'=>'Property'),
	array('label'=>'Manage Property', 'url'=>array('/catalog/admin/property/admin')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#catalog-items-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Catalog Items</h1>

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
	'id'=>'catalog-items-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
			'name'=>'id',
			'value' => '$data->id',
			'htmlOptions'=>array('class'=>'span1'),
		),
		array(
			'name'=>'group_id',
			'value'=>'CatalogGroup::model()->getNameById($data->group_id)',
			'filter'=>TbHtml::activeDropDownList($model,'group_id',CatalogGroup::model()->listSelect),
		),
		'name',
		array(
			'name'=>'url',
			'value'=>'CHtml::link($data->url, $data->viewUrl)',
			'type'=>'raw',
		),
		array(
			'name'=>'active',
			'value' => '$data->active',
			'htmlOptions'=>array('class'=>'span1'),
		),
		array(
			'name'=>'sorting',
			'value' => '$data->sorting',
			'htmlOptions'=>array('class'=>'span1'),
		),
		/*
		'modification_id',
		'created',
		'publish',
		'end_date',
		'image',
		'price',
		'deleted',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'buttons'=>array(
				'delete'=>array(
					'visible'=>'Yii::app()->user->name === "admin"',
				),
			),
			'viewButtonUrl'=>'$data->viewUrl',
		),
	),
)); ?>
