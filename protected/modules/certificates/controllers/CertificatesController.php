<?php

class CertificatesController extends BaseModuleController
{

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array();
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$this->render('index');
	}

}
