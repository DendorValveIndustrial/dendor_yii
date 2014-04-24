<?php
  foreach ($slides as $slide) {
    echo CHtml::tag('div', array('class'=>'slider-item', 'data-slidr' => $slide->data_slidr),false, false);
    echo CHtml::tag('div', array('class'=>'item-content'), false, false);
    echo CHtml::tag('p',array(),CHtml::encode($slide->text));
    echo CHtml::closeTag('div');
    echo CHtml::closeTag('div');
  }
