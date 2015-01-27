<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
		$this->render('index');
	}

  public function getUrl($ampersand = '&')
  {
    $result = Yii::app()->urlManager->createUrl($this->module->id, $_GET, $ampersand, false);
    return $result;
  }
}
