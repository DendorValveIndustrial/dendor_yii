<?php
/* @var $this PropertyValueController */
/* @var $dataProvider CActiveDataProvider */
?>

<?php
$this->breadcrumbs=array(
	'Property Values',
);

$this->menu=array(
  array('label'=>Yii::t('admin','Property')),
  array('label'=>Yii::t('admin','Manage Property'), 'url'=>array('/catalog/admin/property/admin')),
  TbHtml::menuDivider(),
  array('label'=>Yii::t('admin','Return item'),'url'=>array('/catalog/admin/default/update', 'id'=>$item->id)),
);
?>

<?php echo TbHtml::pageHeader(Yii::t('admin','Property values item'), $item->name) ?>

<?php echo TbHtml::alert(TbHtml::ALERT_COLOR_SUCCESS, Yii::t('admin','language'), array('class'=>'text-center')); ?>

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
      'value' => '$data->property->name',
      'htmlOptions' => array('class'=>'span3'),
    ),
    //'entity_id',
    'value',
    array(
      'class'=>'bootstrap.widgets.TbButtonColumn',
      'buttons'=>array(
        'delete'=>array(
          'visible'=>'Yii::app()->user->name === "admin"',
        ),
        'view' => array(
          'visible'=>'false',
        ),
      ),
    ),
  ),
)); ?>
<hr>
<?php if(Yii::app()->user->name === 'admin'): ?>
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
          data: { index: $(".property .field").size(), item_id: <?php echo $item->id; ?> },
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
<?php endif; ?>
</div>
