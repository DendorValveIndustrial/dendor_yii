<?php
/* @var $this PropertyController */
/* @var $model Property */


$this->breadcrumbs=array(
	'Properties'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>Yii::t('admin','Create Property'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  array('label'=>Yii::t('admin','Items')),
	array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('/catalog/admin/default/admin')),
  array('label'=>Yii::t('admin','Groups')),
  array('label'=>Yii::t('admin','Manage Groups'), 'url'=>array('/catalog/admin/catalogGroup/admin')),

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

<?php echo TbHtml::pageHeader(Yii::t('admin','Property'),''); ?>

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
		'name',
		array(
			'name' => 'type',
			'value' => '$data->getTypeTitle($data->type)',
		),
		'main',
		'hidden',
		'sorting',
		/*
		'deleted',
		'description',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
			'buttons'=>array(
				'delete'=>array(
					'visible'=>'Yii::app()->user->name === "admin"',
				),
				'view' => array(
					'visible'=>'false',
				),
			),
		),
	),
)); ?>
