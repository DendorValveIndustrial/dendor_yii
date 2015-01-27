<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
    $model = new News();

    /*if (!empty($_GET['News']))
      $model->attributes = $_GET['News'];

    $dataProvider = $model->search();
    $dataProvider->pagination->pageSize = 20;*/

    $this->render('index', array(
      'model'=>$model
      //,'dataProvider'=>$dataProvider
    ));
	}

  public function getUrl($ampersand = '&')
  {
    $result = Yii::app()->urlManager->createUrl($this->module->id, $_GET, $ampersand, false);
    return $result;
  }
}
