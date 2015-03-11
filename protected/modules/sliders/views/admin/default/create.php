<?php
/* @var $this SliderController */
/* @var $model Slider */

$this->breadcrumbs=array(
	'Sliders'=>array('index'),
	'Create',
);

$this->menu=array(
  array('label'=>Yii::t('admin','sliders')),
	array('label'=>Yii::t('admin','Manage'), 'url'=>array('admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create'),Yii::t('admin','sliders')); ?>
<?php $this->renderPartial('_form', array('model'=>$model)); ?>
