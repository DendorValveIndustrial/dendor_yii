<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
  'News'=>array('news/index'),
  'Manage',
);

$this->menu=array(
  array('label'=>'Manage Category News', 'url'=>array('/news/admin/newsCategory/admin')),
  array('label'=>'Create News', 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
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

<h1>Manage News</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
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
      'name'=>'url',
      'value'=>'CHtml::link($data->url, $data->viewUrl)',
      'type'=>'raw',
    ),
    'status',
    'created',
    /*
    'updated',
    'publish_date',
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
