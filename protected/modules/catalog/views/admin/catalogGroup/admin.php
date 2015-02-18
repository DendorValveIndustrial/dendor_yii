<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */


$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Catalog Group'),
	array('label'=>'New catalog group', 'url'=>array('create')),
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

<h1>Manage Catalog Groups</h1>

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
			'value' => $model->getNameById($data->id)
		),
		'name',
		array(
			'type'=>'raw',
			'name' => 'image',
			'value' => 'CHtml::link($data->image, array(Yii::app()->params["uploadPath"]."catalog/".$data->upload_path."/".$data->image));',
		),

		'url',
		'active',
		'sorting',
		/*
		'page_size',
		'deleted',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
