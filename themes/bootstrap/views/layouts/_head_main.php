<div class="container">
  <div class="row-fluid head">
    <div class="span3">
      <div class="logo text-center">
        <?php echo CHtml::link(CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/logo-wite193.png'),CHtml::encode(Yii::app()->name), array('width'=>'194', 'height'=>'59')),Yii::app()->createUrl('site/index')) ?>
      </div>
      <div class="contact-top text-center" role="contentinfo">
        <!-- <div class="address">ul. Jaśkowa Dolina 81<br/>80-286 Gdańsk, Polska</div> -->
        <div class="tel"><?php echo CHtml::encode(Yii::app()->params['telOfficePol']);?></div>
        <div class="email">
          <?php
            echo TbHtml::icon(TbHtml::ICON_ENVELOPE, array('color'=>TbHtml::ICON_COLOR_WHITE));
            echo "&#xa0;";
            echo TbHtml::mailto(Yii::app()->params['officeEmail'],Yii::app()->params['officeEmail']);
          ?>
        </div>
      </div>
    </div>
    <div class="span9">
      <div class="wrap-slider">
        <h1><?php echo $this->pageHeader; ?></h1>
        <div class="subtext-header"><?php echo $this->subtextHeader; ?></div>
        <div class="pull-right img-slider">
          <?php
            if(isset($this->imgSlider))
              echo CHtml::image($this->imgSlider,$this->pageHeader, array('width'=>'150', 'height'=>'240'));
          ?>
        </div>
      </div>
    </div>
  </div>
</div>
