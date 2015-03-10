<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */


$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'Группы товаров'),
	array('label'=>Yii::t('admin','Create New Group'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
	array('label'=>Yii::t('admin','Items')),
	array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('/catalog/admin/default/admin')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#catalog-group-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php echo TbHtml::pageHeader( Yii::t('admin','Groups'),''); ?>

<p>You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b> or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'catalog-group-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
			'name' => 'id',
			'value' => '$data->id',
			'htmlOptions' => array('class'=>'span1'),
		),
		array(
			'name' => 'parent_id',
			'value' => 'CatalogGroup::model()->getNameById($data->parent_id)',
		),
		'name',
		array(
			'type'=>'raw',
			'name' => 'image',
			'value' => 'CHtml::link($data->image, array(CatalogGroup::model()->getUploadPath($data->id).$data->image))',
		),
		array(
			'type'=>'raw',
			'name'=>'url',
			'value'=>'CHtml::link($data->url, $data->viewUrl)',
		),

		'active',
		'sorting',
		/*
		'page_size',
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
