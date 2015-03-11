<?php

class DefaultController extends BaseAdminController
{

  /**
   * Creates a new model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   */
  public function actionCreate()
  {
    $model=new Slider;

    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);

    $dir = Yii::getPathOfAlias('webroot.upload.sliders');
    $this->createDir($dir);

    if(isset($_POST['Slider']))
    {
      $model->attributes=$_POST['Slider'];

      $model->img_file = CUploadedFile::getInstance($model,'img_file');
      if($model->img_file)
        $model->img = $model->img_file->getName();

      if($model->save()){

        if (is_object($model->img_file))
          $model->img_file->saveAs($dir.'/'.$model->img_file->getName());

        $this->redirect(array('update','id'=>$model->id));
      }
    }

    $this->render('create',array(
      'model'=>$model,
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

    $dir = Yii::getPathOfAlias('webroot.upload.sliders');
    $this->createDir($dir);

    if(isset($_POST['Slider']))
    {
      $model->attributes=$_POST['Slider'];

      $model->img_file = CUploadedFile::getInstance($model,'img_file');
      if($model->img_file)
        $model->img = $model->img_file->getName();

      if($model->save()){
        if (is_object($model->img_file))
          $model->img_file->saveAs($dir.'/'.$model->img_file->getName());
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
    $this->loadModel($id)->delete();

    // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
    if(!isset($_GET['ajax']))
      $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
  }

  /**
   * Lists all models.
   */
  public function actionIndex()
  {
    /*$dataProvider=new CActiveDataProvider('Slider');
    $this->render('index',array(
      'dataProvider'=>$dataProvider,
    ));*/
    $this->actionAdmin();
  }

  /**
   * Manages all models.
   */
  public function actionAdmin()
  {
    $model=new Slider('search');
    $model->unsetAttributes();  // clear any default values
    if(isset($_GET['Slider']))
      $model->attributes=$_GET['Slider'];

    $this->render('admin',array(
      'model'=>$model,
    ));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Slider the loaded model
   * @throws CHttpException
   */
  public function loadModel($id)
  {
    //$model=Slider::model()->findByPk($id);
    $currAppLang = Yii::app()->languageManager->getIdByCode();
    $model = Slider::model()
      ->language($currAppLang)
      ->findByPk($id);
    if($model===null)
      throw new CHttpException(404,'The requested page does not exist.');
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Slider $model the model to be validated
   */
  protected function performAjaxValidation($model)
  {
    if(isset($_POST['ajax']) && $_POST['ajax']==='slider-form')
    {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }
}
