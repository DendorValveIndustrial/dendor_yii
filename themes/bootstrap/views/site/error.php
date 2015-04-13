<?php
  $this->pageTitle=Yii::app()->name . ' - Error';
  $this->breadcrumbs=array(
    'Error',
  );

  echo TbHtml::tag('h2',array('class'=>'h2'),$code);
  echo TbHtml::tag('div',array('class'=>'error'), CHtml::encode($message));
