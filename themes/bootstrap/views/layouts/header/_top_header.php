<div class="container top-header">
  <div class="row-fluid">
    <div class="span6">
      <?php echo CHtml::link(CHtml::image(CHtml::asset(Yii::getPathOfAlias('webroot.themes.bootstrap.assets').'/img/logo/logo-blue193.png'),CHtml::encode(Yii::app()->name), array('width'=>'194', 'height'=>'59')),Yii::app()->createUrl('site/index')); ?>
    </div>
    <div class="span3">
      <div class="top-contact pull-right">
        <div class="tel text-center"><?php echo CHtml::encode(Yii::app()->params['telOfficePol']); ?></div>
        <div class="mail text-center"><?php echo CHtml::mailto(Yii::app()->params['officeEmail']); ?></div>
      </div>
    </div>
    <div class="span3">
      <?php echo TbHtml::searchForm(Yii::app()->createUrl('site/search'), 'get', array('class'=>'pull-right', 'inputOptions'=>array('name'=>'q', 'placeholder'=>Yii::t('app','search')))); ?>
    </div>
  </div>
</div>
