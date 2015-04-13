<div class='home-info'>
  <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','info')) ?>
  <div class="row-fluid">
    <?php
      $modelPage = Pages::model()->pageCategory('price')->find();
      $this->renderPartial('partial/_home_info_view', array('model'=>$modelPage));

      $modelPage = Pages::model()->pageCategory('certificate')->find();
      $this->renderPartial('partial/_home_info_view', array('model'=>$modelPage));
    ?>
    <!-- <div class="span6">
      <div class="media">
        <a href="#" class="pull-left home-catalog">
          <img alt="catalog 2015 Dendor Valve Industrial" src="<?php echo Yii::app()->params['uploadPath'].'catalog_pol.png' ?>" width="120" height="85" class="media-object img-hover img-polaroid"/>
        </a>
        <div class="media-body">
          <?php echo TbHtml::tag('h3', array('class'=>'h2 line-dotted'), Yii::t('app', 'Catalogue')) ?>
          <p>Обновленный печатный каталог продукции Dendor Valve Industrial 2015 г... </p>
          <div class="text-right">
            <a href="#" class="btn-link"><?php echo Yii::t('app', 'download'); ?>, zip, 8.5Mb</a>
          </div>
        </div>
      </div>
    </div> -->
  </div>
</div>
