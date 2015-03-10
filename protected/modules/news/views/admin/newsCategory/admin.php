<?php
/* @var $this NewsCategoryController */
/* @var $model NewsCategory */


$this->breadcrumbs=array(
	'News Categories'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('app','news')),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('/news/admin/default/index')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#news-category-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Manage Category'),Yii::t('app','news')); ?>

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
	'id'=>'news-category-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
    array(
      'name'=>'id',
      'value' => '$data->id',
      'htmlOptions'=>array('class'=>'span1'),
    ),
    array(
      'name'=>'parent_id',
      'value'=>'NewsCategory::model()->getNameById($data->parent_id)',
      'filter'=>TbHtml::activeDropDownList($model,'parent_id',NewsCategory::model()->listCategory)
    ),
		'name',
    array(
      'name'=>'url',
      'value'=>'CHtml::link($data->url, $data->viewUrl)',
      'type'=>'raw',
    ),
		/*
		'parent_id',
		'url',
		'full_url',
		'layout',
		'image',
		'created',
		'updated',
		'page_size',
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
