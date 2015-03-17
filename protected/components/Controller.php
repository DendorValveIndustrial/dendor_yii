<?php
/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController
{
	/**
	 * @var string the default layout for the controller view. Defaults to '//layouts/column1',
	 * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
	 */
	public $layout='//layouts/column1';
	/**
	 * @var array context menu items. This property will be assigned to {@link CMenu::items}.
	 */
	public $menu=array();
	/**
	 * @var array the breadcrumbs of the current page. The value of this property will
	 * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
	 * for more details on how to specify this property.
	 */
	public $breadcrumbs=array();

	/**
	 * Page header
	 * @var string
	 */
	public $pageHeader;

	/**
	 * Subtext header in TbHtml::pageHeader
	 * @var string
	 */
	public $subtextHeader = '';

	/**
	 * Show slider in Page
	 * @var bool
	 */
	public $showSlider = false;

	/**
	 * Slider image
	 * @var string
	 */
	public $imgSlider;

	/**
	 * Page Brand menu title
	 * @var string
	 */
	public $pageHeaderBrand = 'Dendor Valve';

	/**
	 * Page title
	 * @var string
	 */
	public $metaDescription = '';

	/**
	 * Page title
	 * @var string
	 */
	public $metaKeywords = '';

	/**
	 * Page sidebar
	 * @var array
	 */
	public $sidebar=array();

	/**
	 * Set layout and view
	 * @param mixed $model
	 * @param string $view Default view name
	 * @return string
	 */
	protected function setDesign($model, $view)
	{
		// Set layout
		if ($model->layout)
			$this->layout = $model->layout;

		// Use custom page view
		if ($model->view)
			$view = $model->view;

		return $view;
	}
}
