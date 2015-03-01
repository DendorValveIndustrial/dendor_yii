<?php
  if($data['system_name'] != 'article'){
    echo CHtml::tag('p',array(),CHtml::encode($data['label']).': '.CHtml::tag('strong',array(),CHtml::encode($data['value'])));
  }
  else{
    echo CHtml::tag('p',array('class'=>'name-type'),CHtml::encode($data['label']).' '.CHtml::tag('strong',array(),CHtml::encode($data['value'])));
  }
?>
