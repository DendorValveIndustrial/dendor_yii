<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	'Create',
);

$this->menu=array(
  array('label'=>Yii::t('admin','Items')),
  array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('admin')),
  array('label'=>Yii::t('admin','Groups')),
  array('label'=>Yii::t('admin','Manage Groups'), 'url'=>array('/catalog/admin/catalogGroup/admin')),
  array('label'=>Yii::t('admin','Property')),
  array('label'=>Yii::t('admin','Manage Property'), 'url'=>array('/catalog/admin/property/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create New Item'),''); ?>

<?php $this->renderPartial('_form', array('model'=>$model, 'properties'=>$properties)); ?>
