<?php
/* @var $this SliderController */
/* @var $model Slider */

$this->breadcrumbs=array(
	'Sliders'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>Yii::t('admin','sliders')),
	array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#slider-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Manage'),Yii::t('admin','sliders')); ?>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('bootstrap.widgets.TbGridView', array(
	'id'=>'slider-grid',
	'dataProvider'=>$model->language(Yii::app()->languageManager->getIdByCode())->search(),
	'filter'=>$model,
	'columns'=>array(
    array(
      'name'=>'id',
      'value' => '$data->id',
      'htmlOptions'=>array('class'=>'span1'),
    ),
		'data_slidr',
		'name',
		'img',
		'link',
		'active',
    //'text',
		array(
      'class'=>'bootstrap.widgets.TbButtonColumn',
      'buttons'=>array(
        'delete'=>array(
          'visible'=>'Yii::app()->user->name === "admin"',
        ),
        'view'=>array(
          'visible'=>'false',
        ),
      ),
		),
	),
)); ?>
