<?php
/* @var $this NewsController */
/* @var $model News */
/* @var $form CActiveForm */
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
			<div class="span6">
				<?php echo $form->dropDownListControlGroup($model, 'category_id', NewsCategory::model()->listCategory); ?>
			</div>
			<div class="span6">
				<?php echo TbHtml::link(Yii::t('admin','new_category'), Yii::app()->createUrl('news/newsCategory/create')); ?>
			</div>
		</div>
		<?php echo TbHtml::imagePolaroid(Yii::app()->params['uploadPath'].$model->view); ?>
		<div class="row-fluid">
			<?php echo $form->textFieldControlGroup($model,'title',array('span'=>12,'maxlength'=>255)); ?>
			<?php echo $form->textFieldControlGroup($model,'url',array('span'=>12)); ?>
			<div class="line line-dotted"></div>
			<?php
				$this->widget('bootstrap.widgets.TbTabs', array(
					'tabs' => array(
						array('label' => Yii::t('admin', 'additionally'), 'content' =>
							$form->textFieldControlGroup($model,'created',array('span'=>12)).
							$form->textFieldControlGroup($model,'updated',array('span'=>12)).
							$form->textFieldControlGroup($model,'publish_date',array('span'=>12)).
							$form->dropDownListControlGroup($model, 'status', News::statuses()).
							$form->textFieldControlGroup($model,'layout',array('span'=>12)).
							$form->fileFieldControlGroup($model,'view').
							$form->textFieldControlGroup($model,'view',array('span'=>12))
							, 'htmlOptions'=>array('class'=>'pull-right')
						),
						array('label' => Yii::t('admin', 'seo'), 'content' =>
							$form->textFieldControlGroup($model,'meta_title',array('span'=>12)).
							$form->textAreaControlGroup($model,'meta_description',array('rows'=>6,'span'=>12)).
							$form->textFieldControlGroup($model,'meta_keywords',array('span'=>12))
							, 'htmlOptions'=>array('class'=>'pull-right')
						),
						array('label' => Yii::t('admin', 'content'), 'content' =>
							$form->textAreaControlGroup($model,'short_description',array('rows'=>6,'span'=>12)).
							$form->textAreaControlGroup($model,'full_description',array('rows'=>6,'span'=>12))
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
