<?php
  $this->layout = '//layouts/left_bar_search';
  $modelPage = Pages::model()->pageCategory('map')->find();
  $this->breadcrumbs=array(
    CHtml::encode($modelPage->title),
  );
  $this->pageTitle=CHtml::encode($modelPage->meta_title);
  $this->metaDescription=CHtml::encode($modelPage->meta_description);
  $this->metaKeywords=CHtml::encode($modelPage->meta_keywords);

  $this->pageHeader=CHtml::encode($modelPage->title);

?>

<div class="text-item">
  <?php echo $modelPage->full_description; ?>
  <?php
  $mapsItems = array();
  foreach ($items as $item) {
    $mapsItems[] = array('label'=>$item->name, 'url'=>$item->getViewUrl());
  }
  echo TbHtml::menu($mapsItems);
  ?>
</div>
