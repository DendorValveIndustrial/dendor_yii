<?php
/* @var $this CertificatesController */
/* @var $model Certificates */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'id'=>'certificates-form',
	'enableAjaxValidation'=>false,
    'layout' => TbHtml::FORM_LAYOUT_HORIZONTAL,
    'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

    <?php echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_WARNING, Yii::t('admin','fields_required'), array('class'=>'text-center')); ?>

    <?php echo $form->errorSummary($model); ?>

    <div class="row-fluid">
        <div class="span8">

            <?php echo $form->textFieldControlGroup($model,'name',array('span'=>12)); ?>
            <?php echo $form->textFieldControlGroup($model,'title',array('span'=>12)); ?>

            <?php echo $form->fileFieldControlGroup($model,'img') ?>
            <?php echo $form->hiddenField($model,'image'); ?>

            <?php echo $form->fileFieldControlGroup($model,'pdf') ?>
            <?php echo $form->hiddenField($model,'file'); ?>

            <?php echo $form->textAreaControlGroup($model,'description',array('rows'=>6,'span'=>12)); ?>

            <?php echo $form->checkBoxControlGroup($model,'active'); ?>

        </div>
        <div class="span4">
            <?php
                if(!$model->isNewRecord)
                    echo TbHtml::link(TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].$this->module->id.'/'.$model->image, $model->title),Yii::app()->params['uploadPath'].$this->module->id.'/'.$model->file, array('target'=>'_blank'));
            ?>
        </div>
    </div>


        <div class="form-actions">
            <?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
    		    'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
    		    'size'=>TbHtml::BUTTON_SIZE_LARGE,
    		)); ?>
        </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->
