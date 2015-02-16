<?php

class NewsController extends BaseModuleController
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/news/column2';

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
		$this->pageHeader = Yii::t('app','news');

		$dataProvider=new CActiveDataProvider('News', array(
			'pagination'=>array(
				'pageSize'=>5,
			),
		));
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Lists pages by category
	 * @param string $path the Url of the category to be displayed
	 */
	public function actionList($path)
	{
		$category = $this->loadCategoryModel($path);

		if(!$category)
			throw new CHttpException(404, Yii::t('admin', 'Категория не найдена.'));

		$criteria = News::model()
			->published()
			->filterByCategory($category)
			->getDbCriteria();

		$count = News::model()->count($criteria);

		$pagination = new CPagination($count);
		$pagination->pageSize = ($category->page_size > 0) ? $category->page_size: $category->defaultPageSize;
		$pagination->applyLimit($criteria);

		$dataProvider=new CActiveDataProvider('News', array(
			'criteria'=>$criteria,
		));

		$this->pageHeader = $category->name;
		$this->render('list',array(
			'dataProvider'=>$dataProvider,
			'category'=>$category,
			'pagination' => $pagination,
		));
	}


	/**
	 * Displays a particular model.
	 * @param string $url the Url of the model to be displayed
	 */
	public function actionView($url)
	{
		$model = News::model()->withUrl($url)->find();
		$category = NewsCategory::model()->findByPk($model->category_id);

		$this->layout = '//layouts/news/column1';
		$this->render('view',array(
			'model'=>$model,
			'category'=>$category,
		));
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
