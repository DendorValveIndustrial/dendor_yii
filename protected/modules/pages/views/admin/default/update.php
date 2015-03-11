<?php
/* @var $this PagesController */
/* @var $model Pages */
?>

<?php
$this->breadcrumbs=array(
	'Pages'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
  array('label'=>Yii::t('admin','pages')),
  array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
	array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'),$model->title); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
