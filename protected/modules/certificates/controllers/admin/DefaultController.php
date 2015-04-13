<?php

class DefaultController extends BaseAdminController
{

  /**
   * Creates a new model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   */
  public function actionCreate()
  {
    $model=new Certificates;

    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);

    $dir = Yii::getPathOfAlias('webroot.upload.certificates');
    $this->createDir($dir);

    if (isset($_POST['Certificates']))
    {
      $model->attributes=$_POST['Certificates'];

      $model->img = CUploadedFile::getInstance($model,'img');
      if($model->img)
        $model->image = $model->img->getName();

      $model->pdf = CUploadedFile::getInstance($model,'pdf');
      if($model->pdf)
        $model->file = $model->pdf->getName();

      if ($model->save())
      {
        if (is_object($model->img)) {
          $model->img->saveAs($dir.'/'.$model->img->getName());
        }
        if (is_object($model->pdf)) {
          $model->pdf->saveAs($dir.'/'.$model->pdf->getName());
        }

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

    $dir = Yii::getPathOfAlias('webroot.upload.certificates');
    $this->createDir($dir);

    if (isset($_POST['Certificates'])) {
      $model->attributes=$_POST['Certificates'];

      $model->img = CUploadedFile::getInstance($model,'img');
      if($model->img)
        $model->image = $model->img->getName();

      $model->pdf = CUploadedFile::getInstance($model,'pdf');
      if($model->pdf)
        $model->file = $model->pdf->getName();

      if ($model->save()) {
        if (is_object($model->img)) {
          $model->img->saveAs($dir.'/'.$model->img->getName());
        }
        if (is_object($model->pdf)) {
          $model->pdf->saveAs($dir.'/'.$model->pdf->getName());
        }

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
    $this->actionAdmin();
  }

  /**
   * Manages all models.
   */
  public function actionAdmin()
  {
    $model=new Certificates('search');
    $model->unsetAttributes();  // clear any default values
    if (isset($_GET['Certificates'])) {
      $model->attributes=$_GET['Certificates'];
    }

    $this->render('admin',array(
      'model'=>$model,
    ));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return Certificates the loaded model
   * @throws CHttpException
   */
  public function loadModel($id)
  {
    $model=Certificates::model()->findByPk($id);
    if ($model===null) {
      throw new CHttpException(404,'The requested page does not exist.');
    }
    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param Certificates $model the model to be validated
   */
  protected function performAjaxValidation($model)
  {
    if (isset($_POST['ajax']) && $_POST['ajax']==='certificates-form') {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }
}
