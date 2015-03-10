<?php
/* @var $this NewsCategoryController */
/* @var $model NewsCategory */
?>

<?php
$this->breadcrumbs=array(
	'News Categories'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>Yii::t('admin', 'Category')),
	array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('app','news')),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('/news/admin/default/index')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create'),Yii::t('admin','Category')); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
