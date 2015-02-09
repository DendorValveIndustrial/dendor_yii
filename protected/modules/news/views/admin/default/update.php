<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
	'News'=>array('news/index'),
	$model->title=>$model->viewUrl,
	'Update',
);

$this->menu=array(
  array('label'=>'Manage News', 'url'=>array('index')),
	array('label'=>'Create News', 'url'=>array('create')),
	array('label'=>'View News', 'url'=>$model->viewUrl),
  array('label'=>Yii::t('app', 'logout'), 'url'=>array('/site/logout')),
);
?>

<h1>Update News <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
