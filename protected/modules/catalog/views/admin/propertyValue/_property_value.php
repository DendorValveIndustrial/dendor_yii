<li>
  <div class="row">
    <?php echo CHtml::activeLabel($model,"[$index]property_id"); ?>
    <?php echo CHtml::activeTextField($model,"[$index]property_id"); ?>
  </div>
  <div class="row">
    <?php echo CHtml::activeLabel($model,"[$index]entity_id"); ?>
    <?php echo CHtml::activeTextField($model,"[$index]entity_id"); ?>
  </div>
  <div class="row">
    <?php echo CHtml::activeLabel($model,"[$index]value"); ?>
    <?php echo CHtml::activeTextField($model,"[$index]value"); ?>
  </div>
</li>
