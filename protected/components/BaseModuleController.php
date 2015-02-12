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

  /**
   * Specifies the access control rules.
   * This method is used by the 'accessControl' filter.
   * @return array access control rules
   */
  public function accessRules()
  {
    return array(
      /*array('allow',  // allow all users to perform 'index' and 'view' actions
        'actions'=>array('index','view'),
        'users'=>array('*'),
      ),
      array('allow', // allow authenticated user to perform 'create' and 'update' actions
        'actions'=>array('create','update'),
        'users'=>array('@'),
      ),
      array('allow', // allow admin user to perform 'admin' and 'delete' actions
        'actions'=>array('admin','delete'),
        'users'=>array('admin'),
      ),*/
      array('allow', // allow admin user to perform 'admin' and 'delete' actions
        'users'=>array('admin'),
      ),
      array('deny',  // deny all users
        'users'=>array('*'),
      ),
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

  public function createDir($dir, $mode = 0775)
  {
    if (is_dir($dir)) {
      return true;
    }
    $result = mkdir($dir, $mode);
    chmod($dir, $mode);
    return $result;
  }
}
