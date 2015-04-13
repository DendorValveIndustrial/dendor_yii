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
		$dataProvider=new CActiveDataProvider('Certificates', array(
			'pagination'=>array(
				'pageSize'=>5,
			),
		));
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

}
