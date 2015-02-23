<?php

class DefaultController extends BaseAdminController
{
  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id)
  {
    $this->render('view',array(
      'model'=>$this->loadModel($id),
    ));
  }

  /**
   * Creates a new model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   */
  public function actionCreate()
  {
    $model=new CatalogItems;

    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);

    $atts = Property::model()->findAll();

    // Строим массив полей
    $items = array();
    foreach ($atts as $attr)
    {
      $items[$attr->id] = array(
        'name'=>$attr->system_name,
        'value'=>''
      );
    }

    // Заполняем текущими значениями
    $attValues = $model->property_values;
    foreach ($attValues as $attValue)
      $items[$attValue->property->id]['value'] = $attValue->value;


    if (isset($_POST['CatalogItems'])) {
      $model->attributes=$_POST['CatalogItems'];

      if($model->validate())
        $dir = Yii::getPathOfAlias('webroot').CatalogGroup::model()->getUploadPath($model->group_id);

      $model->img = CUploadedFile::getInstance($model,'img');
      if($model->img)
        $model->image = $model->img->getName();

      if ($model->save()) {

        if (is_object($model->img))
          $model->img->saveAs($dir.$model->img->getName());

        $this->redirect(array('update','id'=>$model->id));
      }
    }

    $this->render('create',array(
      'model'=>$model,
      'properties'=>$items,
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

    if (isset($_POST['CatalogItems'])) {
      $model->attributes=$_POST['CatalogItems'];

      if($model->validate())
        $dir = Yii::getPathOfAlias('webroot').CatalogGroup::model()->getUploadPath($model->group_id);
      //var_dump(Yii::getPathOfAlias('webroot').$dir);

      $model->img = CUploadedFile::getInstance($model,'img');
      if($model->img)
        $model->image = $model->img->getName();

      if ($model->save()) {

        if (is_object($model->img))
          $model->img->saveAs($dir.$model->img->getName());

        $this->redirect(array('update','id'=>$model->id));
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
  public function actionIndex()
  {
    $dataProvider=new CActiveDataProvider('CatalogItems');
    $this->render('index',array(
      'dataProvider'=>$dataProvider,
    ));
  }

  /**
   * Manages all models.
   */
  public function actionAdmin()
  {
    $model=new CatalogItems('search');
    $model->unsetAttributes();  // clear any default values
    if (isset($_GET['CatalogItems'])) {
      $model->attributes=$_GET['CatalogItems'];
    }

    $this->render('admin',array(
      'model'=>$model,
    ));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return CatalogItems the loaded model
   * @throws CHttpException
   */
  public function loadModel($id)
  {
    //$model=News::model()->findByPk($id);
    $currAppLang = Yii::app()->languageManager->getIdByCode();
    $model = CatalogItems::model()
      ->language($currAppLang)
      ->findByPk($id);
    if($model===null)
      throw new CHttpException(404,'The requested page does not exist.');
    return $model;
  }

  public function getUploadPath($group_id)
  {
    $path = $path = Yii::app()->params['uploadPath'].'catalog';

    $oGroup = CatalogGroup::model()
      ->findByPk($group_id);
    if($oGroup===null)
      throw new CHttpException(404,'The requested page does not exist.');

    if(!empty($oGroup->upload_path))
      $path .= '/'.$oGroup->upload_path.'/';

    return $path;
  }

  /**
   * Performs the AJAX validation.
   * @param CatalogItems $model the model to be validated
   */
  protected function performAjaxValidation($model)
  {
    if (isset($_POST['ajax']) && $_POST['ajax']==='catalog-items-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }
}
