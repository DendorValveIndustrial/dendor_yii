<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
  'News'=>array('news/index'),
  'Manage',
);

$this->menu=array(
  array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Category')),
  array('label'=>Yii::t('admin','Manage Category'), 'url'=>array('/news/admin/newsCategory/admin')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
  $('.search-form').toggle();
  return false;
});
$('.search-form form').submit(function(){
  $('#news-grid').yiiGridView('update', {
    data: $(this).serialize()
  });
  return false;
});
");
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Manage'),Yii::t('app','news')); ?>

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
  'id'=>'news-grid',
  'dataProvider'=>$model->search(),
  'filter'=>$model,
  'columns'=>array(
    array(
      'name'=>'id',
      'value' => '$data->id',
      'htmlOptions'=>array('class'=>'span1'),
    ),
    array(
      'name'=>'category_id',
      'value'=>'NewsCategory::model()->getNameById($data->category_id)',
      'filter'=>TbHtml::activeDropDownList($model,'category_id',NewsCategory::model()->listCategory)
    ),
    array(
      'name'=>'title',
      'value'=>'CHtml::link($data->title, $data->viewUrl)',
      'type'=>'raw',
    ),
    'status',
    'publish_date',
    /*
    'created',
    'updated',
    'layout',
    'image',
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
