<?php
  $this->layout = '//layouts/left_bar_group_product';
  $model = Pages::model()->pageCategory('about')->find();
  $this->breadcrumbs=array(
    CHtml::encode($model->title),
  );
  $this->pageTitle=CHtml::encode($model->meta_title);
  $this->metaDescription=CHtml::encode($model->meta_description);
  $this->metaKeywords=CHtml::encode($model->meta_keywords);

  $this->pageHeader=CHtml::encode($model->title);
?>

<div class="text-item">
  <?php echo $model->full_description; ?>
</div>
