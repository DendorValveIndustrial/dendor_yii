<?php
/* @var $this CatalogGroupController */
/* @var $model CatalogGroup */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Groups'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>Yii::t('admin','Groups')),
	array('label'=>Yii::t('admin','Manage Groups'), 'url'=>array('admin')),
  array('label'=>Yii::t('admin','Items')),
  array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('/catalog/admin/default/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Create New Group'),''); ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
