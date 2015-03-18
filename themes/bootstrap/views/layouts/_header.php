<?php
  if (!$showSlider) {
    $this->renderPartial('//layouts/header/_top_header');
    $this->renderPartial('//layouts/header/_navbar');
  }
  else {
    $this->renderPartial('//layouts/header/_head_slider');
    $this->renderPartial('//layouts/header/_navbar', array('fixed'=>true));
  }
