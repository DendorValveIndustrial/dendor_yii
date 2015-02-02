<?php

class BaseModuleController extends Controller {

  private $_title;

  public function getUrl($ampersand = '&')
  {
    $result = Yii::app()->urlManager->createUrl($this->module->id.'/'.$this->id.'/'.$this->action->id, $_GET, $ampersand, false);
    return $result;
  }

  public function setPageHeader($title)
  {
    $this->_title = $title;
  }

  public function getPageHeader()
  {
    return $this->_title;
  }
}
