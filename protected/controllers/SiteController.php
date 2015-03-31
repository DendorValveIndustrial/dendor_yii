<?php

class SiteController extends Controller
{
  const ALWAYS = 'always';
  const HOURLY = 'hourly';
  const DAILY = 'daily';
  const WEEKLY = 'weekly';
  const MONTHLY = 'monthly';
  const YEARLY = 'yearly';
  const NEVER = 'never';

	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
				'height'=>40,
				'width'=>120,
				'padding'=>0,
				'transparent'=>true,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
    $pages = new Pages;
    $model = $pages->pageCategory('home')->find();
    $this->render('index', array('model'=>$model));
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		//$this->redirect(Yii::app()->homeUrl);
		$this->redirect(Yii::app()->user->returnUrl);
	}

	public function actionSearch()
	{
		$model=new SearchForm;
		if(isset($_POST['SearchForm'])){
			// получаем данные из формы
			$model->attributes=$_POST['SearchForm'];
			if(isset($model->q) && $model->q != '')
				$this->redirect('?q=' . CHtml::encode($model->q));
		}
		$this->render('search',array('model'=>$model));
	}

	public function actionMap()
	{
	  $catalogGroup = CatalogGroup::model()->published()->findAll();
	  $catalogMap = array();
	  foreach ($catalogGroup as $oGroup) {
	    $aGroupItems = $oGroup->groupItems;
	    $catalogItemMap = array();
	    foreach ($aGroupItems as $oItem) {
	      $catalogItemMap[] = array('label'=>$oItem->name, 'url'=>$oItem->viewUrl);
	    }
	    $catalogMap[] = array('label'=>$oGroup->name, 'url'=>$oGroup->viewUrl, 'items'=>$catalogItemMap);
	  }

	  $newsCategory = NewsCategory::model()->findAll();
	  $newsMap = array();
	  foreach ($newsCategory as $oNewsCategory){
	    $aNewsItems = $oNewsCategory->pages;
	    $newsItemMap = array();
	    foreach ($aNewsItems as $oNewsItem) {
	      $newsItemMap[] = array('label'=>$oNewsItem->title, 'url'=>$oNewsItem->viewUrl);
	    }
	    $newsMap[] = array('label'=>$oNewsCategory->name, 'url'=>$oNewsCategory->viewUrl, 'items'=>$newsItemMap);
	  }

		$this->render('map', array(
			'catalogMap' => $catalogMap,
			'newsMap' => $newsMap,
		));
	}

	public function actionSitemap()
	{
		/*$aItems = CatalogGroup::model()->published()->findAll();
		foreach ($aItems as $oItem) {
			$oItem->updated = date('Y-m-d H:i:s');

			if(!$oItem->created)
				$oItem->created = date('Y-m-d H:i:s');
			$oItem->save();
		}*/

    $classes = array(
      'Pages' => array(self::WEEKLY, 0.2),
      'CatalogGroup' => array(self::WEEKLY, 0.5),
      'CatalogItems' => array(self::WEEKLY, 0.8),
      'NewsCategory' => array(self::WEEKLY, 0.3),
      'News' => array(self::DAILY, 0.5),
    );


		$items = array();
		foreach ($classes as $class=>$options){
      $items = array_merge($items, array(array(
        'models' => CActiveRecord::model($class)->published()->findAll(),
        'changefreq' => $options[0],
        'priority' => $options[1],
      )));
    }

		$this->renderPartial('sitemap', array(
      'host'=>Yii::app()->request->hostInfo,
      'items'=>$items,
    ));
	}

	/**
	 * Override default method to return category full_url without encoded slash.
	 * TODO: Find right solution for '/' in url params.
	 */
  public function getUrl($ampersand = '&')
  {
    $result = Yii::app()->urlManager->createUrl($this->id.'/'.$this->action->id, $_GET, $ampersand, false);
    return $result;
  }

}
