<?php
/* @var $this CatalogItemsController */
/* @var $model CatalogItems */
/* @var $form CActiveForm */
?>

<div class="wide form">

    <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

                    <?php echo $form->textFieldControlGroup($model,'id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'group_id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'modification_id',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'created',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'publish',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'end_date',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'url',array('span'=>5,'maxlength'=>255)); ?>

                    <?php echo $form->textFieldControlGroup($model,'image',array('span'=>5,'maxlength'=>255)); ?>

                    <?php echo $form->textFieldControlGroup($model,'price',array('span'=>5,'maxlength'=>12)); ?>

                    <?php echo $form->textFieldControlGroup($model,'active',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'sorting',array('span'=>5)); ?>

                    <?php echo $form->textFieldControlGroup($model,'deleted',array('span'=>5)); ?>

        <div class="form-actions">
        <?php echo TbHtml::submitButton('Search',  array('color' => TbHtml::BUTTON_COLOR_PRIMARY,));?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- search-form -->