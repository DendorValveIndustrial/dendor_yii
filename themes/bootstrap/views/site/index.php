<?php
  $this->pageTitle = Yii::t('app','pipeline_valves').' - '.CHtml::encode(Yii::app()->name);;
?>
<div class="row">
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
    <div class='row-fluid'>
      <div class='span6'>
        <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','news')) ?>
        <p>
          <?php
            $latest_news = News::model()->find();
            echo CHtml::encode($latest_news->short_description);
          ?>
        </p>
        <p class='text-right'>
          <?php echo CHtml::link(Yii::t('app','read_more'),$latest_news->viewUrl); ?>
        </p>
      </div>
      <div class='span6'>
        <ul class='thumbnails'>
          <li class='span5 offset1'>
            <div class='thumbnail text-center'>
              <a href="#"><img alt="lorem_image" height="180" src="http://placehold.it/180x180" width="180" /></a>
              <h5>Catalogue</h5>
            </div>
          </li>
          <li class='span5 offset1'>
            <div class='thumbnail text-center'>
              <a href="#"><img alt="lorem_image" height="180" src="http://placehold.it/180x180" width="180" /></a>
              <h5>Сertificate</h5>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
