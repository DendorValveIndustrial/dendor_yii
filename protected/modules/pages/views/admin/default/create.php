<?php
/* @var $this PagesController */
/* @var $model Pages */
?>

<?php
$this->breadcrumbs=array(
	'Pages'=>array('index'),
	'Create',
);

$this->menu=array(
  array('label'=>Yii::t('admin','pages')),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create'),Yii::t('admin','pages')); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
