<?php
  foreach ($aProperty as $oProperty) {
    if($oProperty->system_name != 'article'){
      echo CHtml::tag('p',array(),CHtml::encode($oProperty->name).': '.CHtml::tag('strong',array(),CHtml::encode($oProperty->propertyValues(array('condition'=>'entity_id='.$model->id))[0]->value)));
    }
    else{
      echo CHtml::tag('p',array('class'=>'name-type'),CHtml::encode($oProperty->name).' '.CHtml::tag('strong',array(),CHtml::encode($oProperty->propertyValues(array('condition'=>'entity_id='.$model->id))[0]->value)));
    }
  }
?>
