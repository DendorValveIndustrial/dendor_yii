<?php
/* @var $this NewsCategoryController */
/* @var $model NewsCategory */
?>

<?php
$this->breadcrumbs=array(
	'News Categories'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List NewsCategory', 'url'=>array('index')),
	array('label'=>'Create NewsCategory', 'url'=>array('create')),
	array('label'=>'Update NewsCategory', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete NewsCategory', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage NewsCategory', 'url'=>array('admin')),
  array('label'=>Yii::t('app', 'logout'), 'url'=>array('/site/logout')),
);
?>

<h1>View NewsCategory #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView',array(
    'htmlOptions' => array(
        'class' => 'table table-striped table-condensed table-hover',
    ),
    'data'=>$model,
    'attributes'=>array(
		'id',
		'parent_id',
		'url',
		'full_url',
		'layout',
		'image',
		'created',
		'updated',
		'page_size',
	),
)); ?>
