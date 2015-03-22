<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */
?>


<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
  'id'=>'contact-form',
  'enableClientValidation'=>true,
  'clientOptions'=>array(
    'validateOnSubmit'=>true,
  ),
  'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

  <fieldset>
    <legend><?php echo Yii::t('app', 'Contact Form') ?></legend>
    <?php //echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_WARNING, Yii::t('admin','fields_required'), array('class'=>'text-center')); ?>
    <?php echo $form->errorSummary($model); ?>

    <?php echo $form->textFieldControlGroup($model,'name',array('span'=>12, 'placeholder'=>Yii::t('app','Name_surname').'...')); ?>
    <?php echo $form->textFieldControlGroup($model,'email',array('span'=>12, 'placeholder'=>Yii::t('app','Email').'...')); ?>
    <?php echo $form->textFieldControlGroup($model,'tel',array('span'=>12, 'placeholder'=>Yii::t('app','Phone number').'...')); ?>
    <?php echo $form->dropDownListControlGroup($model, 'subject', ContactForm::subjects(), array('span'=>12)); ?>

    <?php echo $form->textAreaControlGroup($model,'body',array('rows'=>6,'span'=>12, 'placeholder'=>Yii::t('app','Message').'...')); ?>

    <div class="captcha">
    <?php if(CCaptcha::checkRequirements()): ?>
      <?php echo $form->labelEx($model,'verifyCode'); ?>
      <?php echo $form->textField($model,'verifyCode',array('span'=>6)); ?>
      <?php $this->widget('CCaptcha',array(
        'buttonLabel' => '<i class="fa fa-refresh"></i>',
        'buttonOptions' => array ('class' => 'btn'),
      )); ?>
      <?php echo $form->error($model,'verifyCode'); ?>
      <p class="muted"><?php echo Yii::t('app','enter_letters_from_image').Yii::t('app','letters_not_case_sensitive') ?></p>
    <?php endif; ?>
    </div>

    <?php echo TbHtml::submitButton(Yii::t('app','Submit')); ?>
  </fieldset>
<?php $this->endWidget(); ?>
