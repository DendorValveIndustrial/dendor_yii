<?php
/* @var $this PropertyController */
/* @var $model Property */
?>

<?php
$this->breadcrumbs=array(
	'Properties'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>Yii::t('admin','Property')),
	array('label'=>Yii::t('admin','Create Property'), 'url'=>array('create'), 'visible'=>(Yii::app()->user->name === 'admin')),
	array('label'=>Yii::t('admin','Manage Property'), 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Groups')),
  array('label'=>Yii::t('admin','Manage Groups'), 'url'=>array('/catalog/admin/catalogGroup/admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Items')),
  array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('/catalog/admin/default/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'), $model->name) ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
