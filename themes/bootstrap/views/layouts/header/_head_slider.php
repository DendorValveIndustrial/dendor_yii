<div class="container">
  <div class="row-fluid head">
    <div class="span3">
      <div class="logo">
        <?php echo CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/logo-wite270.png'),CHtml::encode(Yii::app()->name), array('width'=>'269', 'height'=>'82')); ?>
      </div>
      <div class="contact-top text-center" role="contentinfo">
        <div class="address">ul. Jaśkowa Dolina 81<br/>80-286 Gdańsk, Polska</div>
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
        <h1 class="pull-left"><?php echo $this->pageHeader; ?></h1>
        <div class="pull-right img-slider">
          <?php
            if(isset($this->imgSlider))
              echo CHtml::image($this->imgSlider,$this->pageHeader, array('width'=>'245', 'height'=>'395'));
          ?>
        </div>
        <?php
          if ($this->showSlider)
            echo TbHtml::tag('div', array('class'=>'slider','id'=>'slider'), $this->widget('ext.slidr.SliderHome',array(), true));
        ?>
      </div>
    </div>
  </div>
</div>
