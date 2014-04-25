<?php
class SliderHome extends CWidget {
  public function init(){
    /*$baseUrl = Yii::app()->baseUrl;
    $cs=Yii::app()->clientScript;
    $cs->registerScriptFile($baseUrl.'/js/slidr/slidr.min.js', CClientScript::POS_END);
    $cs->registerScriptFile($baseUrl.'/js/slidr/slidr-example.js', CClientScript::POS_END);*/
    $this -> publishAssets();
  }

  public function run(){
    $slides = Slider::model()->findAll();
    $this->render('sliderHome',array('slides'=>$slides));
  }

  public function publishAssets(){
    $assets = dirname(__FILE__) . '/assets';
    $baseUrl = Yii::app() -> assetManager -> publish($assets);
    if (is_dir($assets)) {
      $cs = Yii::app()->clientScript;
      $cs->registerScriptFile($baseUrl.'/js/slidr.min.js', CClientScript::POS_END);
      $cs->registerScriptFile($baseUrl.'/js/slidr-example.js', CClientScript::POS_END);
    } else {
        throw new CHttpException(500, __CLASS__ . ' - Error: Couldn\'t find assets to publish.');
    }
  }
}
