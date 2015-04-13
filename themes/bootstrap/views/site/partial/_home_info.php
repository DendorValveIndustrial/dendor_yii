<div class='home-info'>
  <?php echo CHtml::tag('h2',array('class'=>'h1'),Yii::t('app','info')) ?>
  <div class="row-fluid">
    <div class="span6">
      <!-- <div class="media">
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
      </div> -->
      <div class="media">
        <a href="<?php echo Yii::app()->createUrl('site/page', array('view'=>'price')); ?>" class="pull-left home-price">
          <img alt="Price Dendor Valve Industrial" src="<?php echo Yii::app()->params['uploadPath'].'price.png' ?>" width="120" height="85" class="media-object img-hover img-polaroid"/>
        </a>
        <div class="media-body">
          <?php echo TbHtml::tag('h3', array('class'=>'h2 line-dotted'), Yii::t('app', 'price')) ?>
          <p>Cennik do całego zakresu armatury przemysłowej produkcji Dendor... </p>
          <div class="text-right">
          <?php echo TbHtml::link(Yii::t('app', 'download_price'), (Yii::app()->language != 'pl')?Yii::app()->params['uploadPath'].'price/price_euro.pdf':Yii::app()->params['uploadPath'].'price/price_pol.pdf', array('class'=>'btn-link', 'target'=>'_blank')) ?>
          </div>
        </div>
      </div>
    </div>
    <div class="span6">
      <div class="media">
        <a href="<?php echo Yii::app()->createUrl('certificates/certificates/index'); ?>" class="pull-left home-certificate">
          <img alt="certificate Dendor Valve Industrial" src="<?php echo Yii::app()->params['uploadPath'].'certificate.png' ?>" width="120" height="85" class="media-object img-hover img-polaroid"/>
        </a>
        <div class="media-body">
          <?php echo TbHtml::tag('h3', array('class'=>'h2 line-dotted'), Yii::t('app', 'Сertificate')) ?>
          <p>Сертификаты соответствия на трубопроводную арматуру Dendor... </p>
          <div class="text-right">
            <?php echo TbHtml::link(Yii::t('app', 'more_info'), Yii::app()->createUrl('certificates/certificates/index'), array('class'=>'btn-link')) ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
