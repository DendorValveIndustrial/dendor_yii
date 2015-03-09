<?php
  $this->layout = '//layouts/news/column1';
  $model = Pages::model()->pageCategory('about')->find();
  $this->breadcrumbs=array(
    CHtml::encode($model->title),
  );
  $this->pageTitle=CHtml::encode($model->meta_title);
  $this->metaDescription=CHtml::encode($model->meta_description);
  $this->metaKeywords=CHtml::encode($model->meta_keywords);

  $this->pageHeader=CHtml::encode($model->title);

?>

<div class="span9 pull-right">
  <div class="main-content" id="content">
    <div class="text-item">
      <?php echo $model->full_description; ?>
    </div>
  </div>
</div>
<div class="span3 pull-left left-bar text-right">
  <div class="span10">
    <?php if($model->image) echo TbHtml::tag('p',array(),TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].'pages/'.$model->image, $model->title)); ?>
  </div>
</div>
