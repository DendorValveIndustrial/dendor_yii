<?php
/* @var $this SliderController */
/* @var $model Slider */

$this->breadcrumbs=array(
	'Sliders'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
  array('label'=>Yii::t('admin','sliders')),
  array('label'=>Yii::t('admin','Create'), 'url'=>array('create'), 'visible'=>Yii::app()->user->name === 'admin'),
  array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'),$model->name); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
