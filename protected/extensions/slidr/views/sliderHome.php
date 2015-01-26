<?php
  foreach ($slides as $slide) {
    echo CHtml::tag('div', array('class'=>'slider-item', 'data-slidr' => $slide->data_slidr),false, false);
    echo CHtml::tag('div', array('class'=>'item-content'), false, false);
    echo CHtml::tag('p',array(),CHtml::encode($slide->text));
    echo Chtml::tag('p',array('class'=>'text-right'),CHtml::link(Yii::t('app', 'read_more').'...', $slide->link.'.html' ,array('class'=>'btn btn-link')));
    echo CHtml::closeTag('div');
    echo CHtml::closeTag('div');
  }
