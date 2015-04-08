<?php
  $this->pageTitle = CHtml::encode($model->meta_title).' - '.CHtml::encode(Yii::app()->name);
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
    <div class="home-news-events">
      <div class="row-fluid">
        <div class="span6">
          <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','news')) ?>
          <?php
            $latest_news = News::model()->filterByCategory(1)->find();
            echo TbHtml::media(
              $latest_news->image ? NewsCategory::model()->getUploadPath($latest_news->category_id).$latest_news->image : false,
              $latest_news->title,
              substr($latest_news->short_description, 0, 150).'...'
            );
          ?>
        </div>
        <div class="span6">
          <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','events')) ?>
          <?php
            $latest_news = News::model()->filterByCategory(2)->find();
            echo TbHtml::media(
              $latest_news->image ? NewsCategory::model()->getUploadPath($latest_news->category_id).$latest_news->image : false,
              $latest_news->title,
              substr($latest_news->short_description, 0, 150).'...'
            );
          ?>
        </div>
      </div>
    </div>
    <div class='line line-dotted'></div>
    <div class="home-new-products">
      <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','New products')); ?>
      <?php $aNewProduct = CatalogItems::model()->new()->findAll(); ?>
      <?php
        $thumbnails = array();
        foreach ($aNewProduct as $oItem) {
          $thumbnails[] = array('image' => CatalogGroup::model()->getUploadPath($oItem->group_id).$oItem->image, 'label' => false, 'caption' => $oItem->name, 'htmlOptions'=>array('class' => 'new-products-item'), 'url'=>$oItem->viewUrl);
        }
        echo TbHtml::thumbnails($thumbnails, array('span' => 3));
      ?>
    </div>
    <div class='line line-dotted'></div>
    <div class='home-news'>
      <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','news')) ?>
      <ul class="thumbnails">
        <li class="span6">
            <p>
              <?php
                $latest_news = News::model()->find();
                echo CHtml::encode($latest_news->short_description);
              ?>
            </p>
            <p class='text-right'>
              <?php echo CHtml::link(Yii::t('app','read_more'),$latest_news->viewUrl); ?>
            </p>
        </li>
        <li class="span3">
          <a href="#" class="thumbnail span10 offset2">
            <img alt="lorem_image" src="http://placehold.it/180x120" style="width: 180px; height: 120px;"/>
            <div class="caption text-center">Catalogue</div>
          </a>
        </li>
        <li class="span3">
          <a href="#" class="thumbnail span10 offset2">
            <img alt="lorem_image" src="http://placehold.it/180x120" style="width: 180px; height: 120px;"/>
            <div class="caption text-center">Сertificate</div>
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>
<?php Yii::app()->clientScript->registerCssFile(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/css/home.css')); ?>
