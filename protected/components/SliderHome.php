<?php
class SliderHome extends CWidget {
  public function init(){
    $baseUrl = Yii::app()->baseUrl;
    $cs=Yii::app()->clientScript;
    $cs->registerScriptFile($baseUrl.'/js/slidr/slidr.min.js', CClientScript::POS_END);
    $cs->registerScriptFile($baseUrl.'/js/slidr/slidr-example.js', CClientScript::POS_END);
  }

  public function run(){
    $slides = Slider::model()->findAll();
    $this->render('sliderHome',array('slides'=>$slides));
  }
}
