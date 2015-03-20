<?php
/* @var $this NewsController */
/* @var $dataProvider CActiveDataProvider */
$this->layout = '//layouts/left_bar';

$this->breadcrumbs=array(
	Yii::t('app','news'),
);

$this->sidebar[] = array('label' => Yii::t('app','category'));
$aCategory = NewsCategory::model()->findAll();
foreach ($aCategory as $oCategory) {
  $this->sidebar[]=array('label' => $oCategory->name, 'url' => Yii::app()->createUrl('news/news/list', array('path'=>$oCategory->url)));
}
$this->sidebar[] = TbHtml::menuDivider();
$this->sidebar[] = array('label' => Yii::t('app','all_news'), 'url' => Yii::app()->createUrl('news/news/index'));


$this->menu=array(
	array('label'=>'Create News', 'url'=>array('admin/default/create')),
  array('label'=>'Manage News', 'url'=>array('admin/default')),
  array('label'=>'Manage News Category', 'url'=>array('admin/newsCategory/admin')),
  array('label'=>Yii::t('app', 'logout'), 'url'=>array('/site/logout')),
);
?>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
  'summaryText' => Yii::t('app','page').' {page}',
  'template' => '{items}{pager}{summary}',
  'pager' => array('class' => 'bootstrap.widgets.TbPager'),
  'pagerCssClass' => 'pagination pagination-centered',
)); ?>
