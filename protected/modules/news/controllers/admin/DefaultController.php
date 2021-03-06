<?php

class DefaultController extends BaseAdminController
{
  /**
   * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
   * using two-column layout. See 'protected/views/layouts/column2.php'.
   */
  //public $layout='application.modules.admin.views.layouts.column2';

  /**
   * Lists all models.
   */
  public function actionIndex()
  {
    $model=new News('search');
    $model->unsetAttributes();  // clear any default values
    if(isset($_GET['News']))
      $model->attributes=$_GET['News'];

    $this->render('index',array(
      'model'=>$model,
    ));
  }

	public function actionAdmin()
	{
    $this->actionIndex();
	}

  /**
   * Creates a new model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   */
  public function actionCreate()
  {
    $model=new News;

    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);

    $dir = Yii::getPathOfAlias('webroot').NewsCategory::model()->getUploadPath($model->category_id);
    $this->createDir($dir);

    if(isset($_POST['News']))
    {
      $model->attributes=$_POST['News'];
      $model->img = CUploadedFile::getInstance($model,'img');

      if($model->img)
        $model->image = $model->img->getName();

      if($model->save())
      {
        if (is_object($model->img)) {
          $model->img->saveAs($dir.'/'.$model->img->getName());
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

    $dir = Yii::getPathOfAlias('webroot').NewsCategory::model()->getUploadPath($model->category_id);
    $this->createDir($dir);

    if(isset($_POST['News']))
    {
      $model->attributes=$_POST['News'];
      $model->img = CUploadedFile::getInstance($model,'img');

      if($model->img)
        $model->image = $model->img->getName();

      if($model->save())
      {
        if (is_object($model->img)) {
          $model->img->saveAs($dir.'/'.$model->img->getName());
        }
        //$this->redirect(array('update','id'=>$model->id));
        $this->refresh();
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
   * Performs the AJAX validation.
   * @param News $model the model to be validated
   */
  protected function performAjaxValidation($model)
  {
    if(isset($_POST['ajax']) && $_POST['ajax']==='news-form')
    {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer $id the ID of the model to be loaded
   * @return News the loaded model
   * @throws CHttpException
   */
  public function loadModel($id)
  {
    //$model=News::model()->findByPk($id);
    $currAppLang = Yii::app()->languageManager->getIdByCode();
    $model = News::model()
      ->language($currAppLang)
      ->findByPk($id);
    if($model===null)
      throw new CHttpException(404,'The requested page does not exist.');
    return $model;
  }

  public function loadCategoryModel($url)
  {
    return NewsCategory::model()
      ->withUrl($url)
      ->find();
  }

}
