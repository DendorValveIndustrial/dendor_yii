<?php
foreach($aProperty as $oProperty){
  echo CHtml::openTag('div', array('class'=>'item-property'));
  echo CHtml::tag('h3', array('class'=>'h3'), $oProperty->name);
  echo CHtml::openTag('ul');
  foreach ($oProperty->propertyValues(array('condition'=>'entity_id='.$model->id)) as $propertyValue)
    echo CHtml::tag('li', array(), $propertyValue->value);
  echo CHtml::closeTag('ul');
  echo CHtml::closeTag('div');
}
?>
