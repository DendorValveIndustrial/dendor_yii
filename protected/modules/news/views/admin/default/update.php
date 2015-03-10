<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
	'News'=>array('news/index'),
	$model->title=>$model->viewUrl,
	'Update',
);

$this->menu=array(
  array('label'=>Yii::t('app','news')),
	array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('index')),
	array('label'=>Yii::t('admin','View'), 'url'=>$model->viewUrl),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Category')),
  array('label'=>Yii::t('admin','Manage Category'), 'url'=>array('/news/admin/newsCategory/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'),$model->title); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
