<div class="container top-header">
  <div class="row-fluid">
    <div class="span3">
      <?php echo CHtml::link(CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/logo-wite193.png'),CHtml::encode(Yii::app()->name), array('width'=>'194', 'height'=>'59')),Yii::app()->createUrl('site/index')) ?>
    </div>
    <div class="span9">
      <!-- <?php echo TbHtml::tag('h1',array('class'=>'impact wite'),$this->pageHeader); ?> -->
      <div class="top-contact pull-right">
        <div class="tel text-center"><?php echo CHtml::encode(Yii::app()->params['telOfficePol']); ?></div>
        <div class="mail text-center"><?php echo CHtml::mailto(Yii::app()->params['officeEmail']); ?></div>
      </div>
    </div>
  </div>
</div>
