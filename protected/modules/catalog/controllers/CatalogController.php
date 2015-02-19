<?php

class CatalogController extends BaseModuleController
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
		$this->render('index');
	}
	/**
	 * Lists pages by Catalog group
	 * @param string $group the Url of the group to be displayed
	 */
	public function actionList($group)
	{
		$oGroup = $this->loadGroupModel($group);

		if(!$oGroup)
			throw new CHttpException(404, Yii::t('admin', 'Group not found'));

		$criteria = CatalogItems::model()
			->published()
			->filterByGroup($oGroup)
			->getDbCriteria();

		$count = CatalogItems::model()->count($criteria);

		$pagination = new CPagination($count);
		$pagination->pageSize = ($oGroup->page_size > 0) ? $oGroup->page_size: $oGroup->defaultPageSize;
		$pagination->applyLimit($criteria);

		$dataProvider=new CActiveDataProvider('CatalogItems', array(
			'criteria'=>$criteria,
		));

		$this->pageHeader = $oGroup->name;
		$this->render('list',array(
			'dataProvider'=>$dataProvider,
			'group'=>$oGroup,
			'pagination' => $pagination,
		));

		//$this->render('index');
	}

	public function actionView($url)
	{
		$this->render('index');
	}

	public function loadGroupModel($url_group)
  {
    return CatalogGroup::model()
      ->withUrl($url_group)
      ->find();
  }

}
