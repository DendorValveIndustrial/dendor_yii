<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
?>

<?php
$this->breadcrumbs=array(
	'Catalog Items'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
  array('label'=>Yii::t('admin','Items')),
  array('label'=>Yii::t('admin','View'), 'url'=>$model->viewUrl),
  array('label'=>Yii::t('admin','Create New Item'), 'url'=>array('create'), 'visible'=>(Yii::app()->user->name === 'admin')),
  array('label'=>Yii::t('admin','Copy Item'), 'url'=>array('copy', 'id'=>$model->id), 'visible'=>(Yii::app()->user->name === 'admin')),
  array('label'=>Yii::t('admin','Manage Items'), 'url'=>array('admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Property')),
  //array('label'=>Yii::t('admin','Manage Property'), 'url'=>array('/catalog/admin/property/admin')),
  array('label'=>Yii::t('admin','Property values item'), 'url'=>array('/catalog/admin/propertyValue/index', 'item_id'=>$model->id)),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Groups')),
  array('label'=>Yii::t('admin','Manage Groups'), 'url'=>array('/catalog/admin/catalogGroup/admin')),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Update'), $model->name) ?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
