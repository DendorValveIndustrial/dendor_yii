<?php
class SliderHome extends CWidget {
  public function run(){
    $slides = Slider::model()->findAll();
    $this->render('sliderHome',array('slides'=>$slides));
  }
}
