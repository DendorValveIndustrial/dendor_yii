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
	)); ?>

		<?php echo TbHtml::blockAlert(TbHtml::ALERT_COLOR_WARNING, 'Fields with <span class="required">*</span> are required.', array('class'=>'text-center')); ?>

		<?php echo $form->errorSummary($model); ?>
		<div class="row-fluid">
			<div class="span6">
				<?php echo $form->dropDownListControlGroup($model, 'category_id', NewsCategory::model()->listCategory); ?>
			</div>
			<div class="span6">
				<?php echo TbHtml::link('Новая категория', Yii::app()->createUrl('news/newsCategory/create')); ?>
			</div>
		</div>
		<?php echo $form->textFieldControlGroup($model,'title',array('span'=>12,'maxlength'=>255)); ?>
		<?php echo $form->textFieldControlGroup($model,'url',array('span'=>12)); ?>
		<div class="line line-dotted"></div>
		<?php
			$this->widget('bootstrap.widgets.TbTabs', array(
				'tabs' => array(
					array('label' => Yii::t('admin', 'content'), 'content' =>
						$form->textAreaControlGroup($model,'short_description',array('rows'=>6,'span'=>12)).
						$form->textAreaControlGroup($model,'full_description',array('rows'=>6,'span'=>12))
					 , 'active' => true),
					array('label' => 'Мета данные', 'content' =>
						$form->textFieldControlGroup($model,'meta_title',array('span'=>12)).
						$form->textAreaControlGroup($model,'meta_description',array('rows'=>6,'span'=>12)).
						$form->textFieldControlGroup($model,'meta_keywords',array('span'=>12))
					),
					array('label' => 'Дополнительно', 'content' =>
						$form->textFieldControlGroup($model,'created',array('span'=>12)).
						$form->textFieldControlGroup($model,'updated',array('span'=>12)).
						$form->textFieldControlGroup($model,'publish_date',array('span'=>12)).
						$form->textFieldControlGroup($model,'status',array('span'=>12)).
						$form->textFieldControlGroup($model,'layout',array('span'=>12)).
						$form->textFieldControlGroup($model,'view',array('span'=>12))
					),
				),
				'placement' => TbHtml::TABS_PLACEMENT_LEFT,
				)
			);
		?>
		<div class="form-actions">
			<?php echo TbHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array(
				'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
				'size'=>TbHtml::BUTTON_SIZE_LARGE,
			)); ?>
		</div>

	<?php $this->endWidget(); ?>

</div><!-- form -->
