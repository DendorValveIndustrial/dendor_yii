<?php
  $this->pageTitle = CHtml::encode($model->meta_title);
  $this->metaDescription = CHtml::encode($model->meta_description);
  $this->metaKeywords = CHtml::encode($model->meta_keywords);
  $this->pageHeader = Yii::t('app', 'pipeline_valves');
  $this->imgSlider = CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/slide1.png');
  $this->showSlider = true;
?>
<div class="row-fluid home-page">
  <div class="span3">
    <div class="aside-sidebar">
      <?php
        $this->widget('bootstrap.widgets.TbNav', array(
          'type' => TbHtml::NAV_TYPE_LIST,
          'items' => CatalogGroup::model()->getListMenu(Yii::t('app','productions'))
        ));
      ?>
    </div>
  </div>
  <div class="span9">
    <div class="row-fluid">
      <div class="span10 offset1">
        <div class="home-title">
          <h2><?php echo CHtml::encode(Yii::app()->name); ?></h2>
          <?php echo TbHtml::quote(CHtml::encode($model->short_description), array(
            'source' => TbHtml::link(Yii::t('app','more_info'),array('/site/page', 'view'=>'about'),array()),
          )); ?>
        </div>
      </div>
    </div>
    <div class='line line-dotted'></div>
    <?php $this->renderPartial('partial/_home_news_event'); ?>
    <div class='line line-dotted'></div>
    <?php $this->renderPartial('partial/_home_new_products'); ?>
    <div class='line line-dotted'></div>
    <?php $this->renderPartial('partial/_home_info'); ?>
  </div>
</div>
<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/home.css')); ?>
