<?php
/* @var $this PropertyValueController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Property Values',
);

$this->menu=array(
	array('label'=>'Create PropertyValue','url'=>array('create')),
	array('label'=>'Manage PropertyValue','url'=>array('admin')),
);
?>

<h1>Property Values</h1>

<?php $this->widget('bootstrap.widgets.TbGridView',array(
  'id'=>'property-value-grid',
  'dataProvider'=>$model->search(),
  'filter'=>$model,
  'columns'=>array(
    array(
      'name' => 'id',
      'value' => '$data->id',
      'htmlOptions' => array('class'=>'span2'),
    ),
    array(
      'name' => 'property_id',
      'value' => '$data->property->system_name',
      'htmlOptions' => array('class'=>'span3'),
    ),
    //'entity_id',
    'value',
    array(
      'class'=>'bootstrap.widgets.TbButtonColumn',
    ),
  ),
)); ?>
<hr>
<div class="form">
  <?php echo TbHtml::beginFormTb(TbHtml::FORM_LAYOUT_HORIZONTAL);?>
  <div class="property">
    <?php
      for($i=0; $i<count($new_models); $i++) {
        $this->renderPartial('_property_value', array(
          'model'=>$new_models[$i],
          'index'=>$i,
          'item'=>$item,
        ));
      }
    ?>
  </div>
  <div class="form-actions">
    <?php echo TbHtml::button('Добавить свойство', array(
      'class'=>'add-property',
      'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
    )); ?>
    <?php Yii::app()->clientScript->registerCoreScript("jquery"); ?>
    <script>
      $(".add-property").click(function(){
        var $this = $(this);
        console.log($this);
        $.ajax({
          success: function(html){
            $(".property").append(html);
          },
          type: 'get',
          url: '<?php echo $this->createUrl("field"); ?>',
          data: { index: $(".property .field").size() },
          cache: false,
          dataTipe: 'html'
        });
      });
    </script>
    <?php echo TbHtml::submitButton('Сохранить',array(
        //'color'=>TbHtml::BUTTON_COLOR_PRIMARY,
    )); ?>

  </div>
  <?php echo TbHtml::endForm(); ?>
</div>
