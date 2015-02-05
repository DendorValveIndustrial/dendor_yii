<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
	Yii::t('app','news')=>array('index'),
	$category->name => Yii::app()->createUrl('news/news/list', array('path'=>$category->url)),
	$model->title,
);

$this->menu=array(
	array('label'=>'Admin'),
	array('label'=>'List News', 'url'=>array('index')),
	array('label'=>'Create News', 'url'=>array('create')),
	array('label'=>'Update News', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete News', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage News', 'url'=>array('admin')),
);

$this->pageHeader = $model->title;
?>

<div class="text-item">
	<?php echo $model->full_description; ?>
</div>

<?php var_dump($category->url); ?>
<!-- <h1>View News #<?php echo $model->id; ?></h1> -->

<?php /*$this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'viewPath'=>'_view',
	'attributes'=>array(
		'id',
		'category_id',
		'url',
		'created',
		'updated',
		'publish_date',
		'status',
		'layout',
		'view',
		'title',
		'short_description',
		'full_description:html',
		'meta_title',
		'meta_keywords',
		'meta_description',
	),
));*/ ?>
