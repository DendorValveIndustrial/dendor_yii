<?php

class PropertyValueController extends BaseAdminController
{

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
			'ajaxOnly + field',
		);
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate($item_id)
	{
		$model=new PropertyValue;

		$item = CatalogItems::model()->findByPk($item_id);
		if ($item===null)
			throw new CHttpException(404,'Товар не найден.');

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if (isset($_POST['PropertyValue'])) {
			$model->attributes=$_POST['PropertyValue'];
			if ($model->save()) {
				$this->redirect(array('index','item_id'=>$item->id));
			}
		}

		$this->render('create',array(
			'model'=>$model,
			'item'=>$item,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if (isset($_POST['PropertyValue'])) {
			$model->attributes=$_POST['PropertyValue'];
			if ($model->save()) {
				//$this->redirect(array('view','id'=>$model->id));
				$this->redirect(array('index','item_id'=>$model->entity_id));
			}
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if (Yii::app()->request->isPostRequest) {
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if (!isset($_GET['ajax'])) {
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
			}
		} else {
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
		}
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex($item_id)
	{
		$item = CatalogItems::model()->findByPk($item_id);
		if ($item===null)
			throw new CHttpException(404,'Товар не найден.');

		$new_models = array();
		if (!empty($_POST['PropertyValue'])) {
			foreach ($_POST['PropertyValue'] as $propertyData){
				$model = new PropertyValue();
				$model->setAttributes($propertyData);
				if($model->validate())
					$new_models[] = $model;
			}
		}
		if (!empty($new_models)) {
			foreach ($new_models as $model) {
				$model->save();
			}
		}
		else
			$new_models[] = new PropertyValue();

		$model = PropertyValue::model()->filterByEntity($item_id);
		$model->unsetAttributes();  // clear any default values
		if (isset($_GET['PropertyValue'])) {
			$model->attributes=$_GET['PropertyValue'];
		}

		$this->render('index',array(
			'model'=>$model,
			'new_models'=>$new_models,
			'item'=>$item,
		));
	}

	public function actionField($index, $item_id) {
		$model = new PropertyValue();
		$item = CatalogItems::model()->findByPk($item_id);
		$this->renderPartial('_property_value', array(
			'model'=> $model,
			'index'=> $index,
			'item'=>$item,
		));
	}

	public function renrerActionFormField($model, $fieldName, $htmlOptions = array()){
		$typeField = $model->property->type;
		switch ($typeField) {
			case 1:
				return TbHtml::activeTextFieldControlGroup($model, $fieldName, array('span'=>6));
				break;

			case 2:
				return TbHtml::activeTextAreaControlGroup($model, $fieldName, array('rows'=>3,'span'=>8));
				break;

			default:
				return TbHtml::activeTextFieldControlGroup($model, $fieldName, $htmlOptions);
				break;
		}
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin($item_id)
	{
		$this->actionIndex($item_id);
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return PropertyValue the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$currAppLang = Yii::app()->languageManager->getIdByCode();
		$model=PropertyValue::model()
			->language($currAppLang)
			->findByPk($id);
		if ($model===null) {
			throw new CHttpException(404,'The requested page does not exist.');
		}
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param PropertyValue $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if (isset($_POST['ajax']) && $_POST['ajax']==='property-value-form') {
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
