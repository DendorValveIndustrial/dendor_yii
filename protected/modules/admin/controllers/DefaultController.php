<?php

class DefaultController extends BaseAdminController
{
	public $layout='column1';

  public function actionIndex()
	{
		$this->render('index');
	}
}
