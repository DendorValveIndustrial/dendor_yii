<?php

class DefaultController extends BaseAdminController
{
  //public $layout='application.modules.admin.views.layouts.column2';

	public function actionIndex()
	{
		$this->render('index');
	}
}
