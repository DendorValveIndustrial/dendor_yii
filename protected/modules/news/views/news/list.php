<?php
/* @var $this NewsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
  'News'=>array('index'),
  $category->name,
);

$this->sidebar[] = array('label' => Yii::t('app','category'));
$aCategory = NewsCategory::model()->findAll();
foreach ($aCategory as $oCategory) {
  $this->sidebar[]=array('label' => $oCategory->name, 'url' => Yii::app()->createUrl('news/news/list', array('path'=>$oCategory->url)));
}
$this->sidebar[] = TbHtml::menuDivider();
$this->sidebar[] = array('label' => Yii::t('app','all_news'), 'url' => Yii::app()->createUrl('news/news/index'));

$this->menu=array(
  array('label'=>'Admin'),
  array('label'=>'Create News', 'url'=>array('create')),
  array('label'=>'Manage News', 'url'=>array('admin')),
  array('label'=>'Manage News Category', 'url'=>array('newsCategory/admin')),
);
?>

<?php $this->widget('zii.widgets.CListView', array(
  'dataProvider'=>$dataProvider,
  'itemView'=>'_view',
  'summaryText' => 'Страница {page}',
  'template' => '{items}{pager}{summary}',
)); ?>
