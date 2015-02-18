<?php

class BaseModuleController extends Controller {

  private $_title;

  /**
   * @return array action filters
   */
  public function filters()
  {
    return array(
      'accessControl', // perform access control for CRUD operations
      'postOnly + delete', // we only allow deletion via POST request
    );
  }

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

  /*public function createDir($dir, $mode = 0775)
  {
    if (is_dir($dir)) {
      return true;
    }
    $result = mkdir($dir, $mode);
    chmod($dir, $mode);
    return $result;
  }*/
 	public static function createDir($path, $mode = 0775, $recursive = true)
	{
		if (is_dir($path)) {
			return true;
		}
		$parentDir = dirname($path);
		if ($recursive && !is_dir($parentDir)) {
			static::createDir($parentDir, $mode, true);
		}
		$result = mkdir($path, $mode);
		chmod($path, $mode);
		return $result;
	}
}
