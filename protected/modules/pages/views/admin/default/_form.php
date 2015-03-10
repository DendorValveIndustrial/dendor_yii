<?php
/* @var $this PagesController */
/* @var $model Pages */
/* @var $form TbActiveForm */
?>

<div class="form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
        'id'=>'news-form',
        'enableAjaxValidation'=>false,
        'layout' => TbHtml::FORM_LAYOUT_HORIZONTAL,
        'htmlOptions'=>array('enctype'=>'multipart/form-data'),
    )); ?>

        <?php echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_WARNING, Yii::t('admin','fields_required'), array('class'=>'text-center')); ?>

        <?php echo $form->errorSummary($model); ?>
        <div class="row-fluid">
            <div class="span10">
                <div class="row-fluid">
                    <div class="span9">
                        <?php echo $form->textFieldControlGroup($model, 'system_name', array('span'=>12,'maxlength'=>255)); ?>
                    </div>
                </div>
                <?php echo $form->textFieldControlGroup($model,'title',array('span'=>12,'maxlength'=>255)); ?>
                <?php echo $form->textFieldControlGroup($model,'url',array('span'=>12)); ?>
                <?php echo $form->fileFieldControlGroup($model,'img') ?>
            </div>
            <div class="span2">
                <?php
                    if($model->image) echo TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].$this->module->id.'/'.$model->image, $model->title);
                ?>
            </div>
        </div>
        <div class="line line-dotted"></div>
        <div class="row-fluid">
            <?php
                $this->widget('bootstrap.widgets.TbTabs', array(
                    'tabs' => array(
                        array('label' => Yii::t('admin', 'additionally'), 'content' =>
                            $form->textFieldControlGroup($model,'created',array('span'=>12)).
                            $form->dropDownListControlGroup($model, 'status', News::statuses()).
                            $form->textFieldControlGroup($model,'layout',array('span'=>12))
                            , 'htmlOptions'=>array('class'=>'pull-right')
                        ),
                        array('label' => Yii::t('admin', 'seo'), 'content' =>
                            $form->textFieldControlGroup($model,'meta_title',array('span'=>12)).
                            $form->textAreaControlGroup($model,'meta_description',array('rows'=>6,'span'=>12)).
                            $form->textFieldControlGroup($model,'meta_keywords',array('span'=>12))
                            , 'htmlOptions'=>array('class'=>'pull-right')
                        ),
                        array('label' => Yii::t('admin', 'content'), 'content' =>
                            $form->textAreaControlGroup($model,'full_description',array('rows'=>30,'span'=>12)).
                            $form->textAreaControlGroup($model,'short_description',array('rows'=>6,'span'=>12))
                         , 'active' => true, 'htmlOptions'=>array('class'=>'pull-right')),
                    ),
                    //'placement' => TbHtml::TABS_PLACEMENT_RIGHT,
                    )
                );
            ?>
        </div>
        <div class="form-actions">
            <?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
                'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
                'size'=>TbHtml::BUTTON_SIZE_LARGE,
            )); ?>
        </div>

    <?php $this->endWidget(); ?>
</div><!-- form -->
