<?php
/* @var $this NewsController */
/* @var $dataProvider CActiveDataProvider */
$this->pageTitle = CHtml::encode($group->meta_title);
$this->metaDescription = CHtml::encode($group->meta_description);
$this->metaKeywords = CHtml::encode($group->meta_keywords);

$this->breadcrumbs=array(
  $group->name,
);

/*$this->sidebar[] = array('label' => Yii::t('app','group'));
$aGroup = NewsCategory::model()->findAll();
foreach ($aGroup as $oCategory) {
  $this->sidebar[]=array('label' => $oCategory->name, 'url' => Yii::app()->createUrl('news/news/list', array('path'=>$oCategory->url)));
}
$this->sidebar[] = TbHtml::menuDivider();
$this->sidebar[] = array('label' => Yii::t('app','all_news'), 'url' => Yii::app()->createUrl('news/news/index'));

$this->menu=array(
  array('label'=>'Create News', 'url'=>array('admin/default/create')),
  array('label'=>'Manage News', 'url'=>array('admin/default')),
  array('label'=>'Manage News Category', 'url'=>array('newsCategory/admin')),
  array('label'=>Yii::t('app', 'logout'), 'url'=>array('/site/logout')),
);*/
?>

<?php $this->widget('zii.widgets.CListView', array(
  'dataProvider'=>$dataProvider,
  'itemView'=>'_view',
  'summaryText' => Yii::t('app','page').' {page}',
  'template' => '{items}{pager}{summary}',
  'pager' => array('class' => 'bootstrap.widgets.TbPager'),
  'pagerCssClass' => 'pagination pagination-centered',
)); ?>
