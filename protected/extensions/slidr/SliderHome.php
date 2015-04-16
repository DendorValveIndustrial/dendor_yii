<?php
class SliderHome extends CWidget {
  public function init(){
    $this -> publishAssets();
  }

  public function run(){
    $slides = Slider::model()
      ->language(Yii::app()->languageManager->getIdByCode())
      ->findAll();
    $this->render(
      'sliderHome',
      array('slides'=>$slides)
      );
  }

  public function publishAssets(){
    $assets = dirname(__FILE__) . '/assets';
    $baseUrl = Yii::app() -> assetManager -> publish($assets);
    if (is_dir($assets)) {
      $cs = Yii::app()->clientScript;
      $cs->registerScriptFile($baseUrl.'/js/slidr.min.js', CClientScript::POS_END);
      //$cs->registerScriptFile($baseUrl.'/js/slidr-example.js', CClientScript::POS_END);
      $cs->registerScript('slidr-example','$(function(){var o=slidr.create("slider",{breadcrumbs:!0,controls:"none",transition:"cube",overflow:!0,pause:!0}).add("h",["one","two","three","one"]);o.auto(1e4,"right")});', CClientScript::POS_END);
    } else {
        throw new CHttpException(500, __CLASS__ . ' - Error: Couldn\'t find assets to publish.');
    }
  }
}
