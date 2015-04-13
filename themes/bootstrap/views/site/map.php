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
    $this->widget('zii.widgets.CMenu', array(
      'items'=>array(
        array(
          'label'=>Pages::model()->pageCategory('home')->find()->name,
          'url'=>array('/site/index')
        ),
        array(
          'label'=>Pages::model()->pageCategory('about')->find()->name,
          'url'=>array('/site/page', 'view'=>'about')
        ),
        array(
          'label'=>Pages::model()->pageCategory('productions')->find()->name,
          'url'=>array('/catalog/catalog/index'),
          'items'=>$catalogMap,
        ),
        array(
          'label'=>Pages::model()->pageCategory('news')->find()->name,
          'url'=> array('/news/news/index'),
          'items'=>$newsMap,
        ),
        array(
          'label'=>Pages::model()->pageCategory('price')->find()->name,
          'url'=>array('/site/page', 'view'=>'price')
        ),
        array(
          'label'=>Pages::model()->pageCategory('certificate')->find()->name,
          'url'=>array('/site/page', 'view'=>'certificates')
        ),
        array(
          'label'=>Pages::model()->pageCategory('contact')->find()->name,
          'url'=>array('/site/contact'),
        ),
        array(
          'label'=>$modelPage->name,
          'url'=>array('/site/map'),
        ),
      ),
    ));
  ?>
</div>
