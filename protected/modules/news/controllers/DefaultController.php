<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
		$this->render('index');
	}

  /**
   * Override default method to return category full_url without encoded slash.
   * TODO: Find right solution for '/' in url params.
   */
  public function createUrl($route,$params=array(),$ampersand='&')
  {
    return urldecode(parent::createUrl($route,$params,$ampersand));
  }
}
