<?php
/* @var $this NewsCategoryController */
/* @var $model NewsCategory */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
        'id'=>'news-category-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation'=>false,
        //'layout' => TbHtml::FORM_LAYOUT_HORIZONTAL,
        'htmlOptions'=>array('enctype'=>'multipart/form-data'),
    )); ?>

        <p class="help-block">Fields with <span class="required">*</span> are required.</p>

        <?php echo $form->errorSummary($model); ?>
            <div class="row-fluid">
                <div class="span6">
                    <?php echo $form->textFieldControlGroup($model,'name',array('span'=>12)); ?>
                    <?php echo $form->textFieldControlGroup($model,'url',array('span'=>12,'maxlength'=>255)); ?>
                    <?php echo $form->checkBoxControlGroup($model, 'active'); ?>
                </div>
                <div class="span3">
                    <?php echo $form->dropDownListControlGroup($model, 'parent_id', $model->listSelect); ?>
                    <?php
                        if($this->action->id === 'create')
                            echo $form->textFieldControlGroup($model,'upload_path',array('span'=>12,'maxlength'=>255));
                    ?>
                    <?php echo $form->fileFieldControlGroup($model,'img') ?>
                </div>
                <div class="span3 text-right">
                    <br>
                    <?php if($model->image) echo TbHtml::imagePolaroid($this->getUploadPath($model->id).$model->image, $model->name); ?>
                </div>
            </div>
            <hr>
            <div class="row-fluid">
                <div class="span6">
                    <?php echo $form->textAreaControlGroup($model,'description',array('rows'=>6,'span'=>12)); ?>
                    <?php echo $form->textFieldControlGroup($model,'sorting',array('span'=>2)); ?>
                    <?php echo $form->numberFieldControlGroup($model,'page_size',array('span'=>2)); ?>
                </div>
                <div class="span6">
                    <?php echo $form->textAreaControlGroup($model,'meta_description',array('rows'=>6,'span'=>12,'maxlength'=>255)); ?>
                    <?php echo $form->textFieldControlGroup($model,'meta_title',array('span'=>12,'maxlength'=>255)); ?>
                    <?php echo $form->textFieldControlGroup($model,'meta_keywords',array('span'=>12,'maxlength'=>255)); ?>
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
