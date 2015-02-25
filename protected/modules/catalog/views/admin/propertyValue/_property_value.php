<div class="field">
  <?php echo TbHtml::activeHiddenField($model,"[$index]entity_id",array('value'=>$item->id)); ?>
  <div class="row-fluid">
    <div class="span6">
      <?php echo TbHtml::activeDropDownListControlGroup($model, "[$index]property_id", Property::model()->listSelect); ?>
    </div>
    <div class="span6">
      <?php echo TbHtml::activeTextFieldControlGroup($model,"[$index]value"); ?>
    </div>
  </div>
</div>
