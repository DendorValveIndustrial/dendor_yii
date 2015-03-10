<?php
/* @var $this NewsController */
/* @var $model News */

$this->breadcrumbs=array(
	'News'=>array('index'),
	'Create',
);

$this->menu=array(
  array('label'=>Yii::t('app','news')),
	array('label'=>Yii::t('admin','Manage'), 'url'=>array('index')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Category')),
  array('label'=>Yii::t('admin','Manage Category'), 'url'=>array('/news/admin/newsCategory/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create'),Yii::t('app','news')); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
