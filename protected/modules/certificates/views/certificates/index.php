<?php
  $this->layout = '//layouts/left_bar_group_product';
  $modelPage = Pages::model()->pageCategory('certificate')->find();
  $this->breadcrumbs=array(
    CHtml::encode($modelPage->title),
  );
  $this->pageTitle=CHtml::encode($modelPage->meta_title);
  $this->metaDescription=CHtml::encode($modelPage->meta_description);
  $this->metaKeywords=CHtml::encode($modelPage->meta_keywords);

  $this->pageHeader=CHtml::encode($modelPage->title);


?>

<?php
  if(trim($modelPage->full_description) != '')
    echo TbHtml::tag('div',array('class'=>'text-item'),$modelPage->full_description);
 ?>

<?php $this->widget('zii.widgets.CListView', array(
  'dataProvider'=>$dataProvider,
  'itemView'=>'_view',
  'summaryText' => Yii::t('app','page').' {page}',
  'template' => '{items}{pager}{summary}',
  'pager' => array('class' => 'bootstrap.widgets.TbPager'),
  'pagerCssClass' => 'pagination pagination-centered',
  'itemsCssClass' => 'item-certificate',
)); ?>
