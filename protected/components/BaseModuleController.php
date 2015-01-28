<?php

class BaseModuleController extends Controller {

  public function getUrl($ampersand = '&')
  {
    $result = Yii::app()->urlManager->createUrl($this->module->id.'/'.$this->id.'/'.$this->action->id, $_GET, $ampersand, false);
    return $result;
  }
}
