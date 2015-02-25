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

<div class="form">
  <?php echo CHtml::beginForm();?>
  <ul class="property">
    <?php
      for($i=0; $i<count($models); $i++) {
        $this->renderPartial('_property_value', array(
          'model'=>$models[$i],
          'index'=>$i,
        ));
      }
    ?>
  </ul>
  <div class="row buttons">
    <?php echo CHtml::button('Добавить свойство', array('class'=>'add-property')); ?>
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
          data: { index: $(".property li").size() },
          cache: false,
          dataTipe: 'html'
        });
      });
    </script>
    <?php echo CHtml::submitButton('Сохранить'); ?>
  </div>
  <?php echo CHtml::endForm(); ?>
</div>
