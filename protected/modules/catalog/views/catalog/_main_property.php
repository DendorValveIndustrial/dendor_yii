<?php
  foreach ($aProperty as $oProperty) {
    $aPropertyValues = $oProperty->propertyValues(array('condition'=>'entity_id='.$model->id));
    $value = $aPropertyValues[0]->value;
    if($oProperty->system_name != 'article'){
      echo CHtml::tag('p',array(),CHtml::encode($oProperty->name).': '.CHtml::tag('strong',array(),CHtml::encode($value)));
    }
    else{
      echo CHtml::tag('p',array('class'=>'name-type'),CHtml::encode($oProperty->name).' '.CHtml::tag('strong',array(),CHtml::encode($value)));
    }
  }
?>
