<?php

Yii::import('application.modules.news.models.NewsTranslate');
Yii::import('application.modules.news.models.NewsCategory');

/**
 * This is the model class for table "News".
 *
 * The followings are the available columns in table 'News':
 * @property integer $id
 * @property integer $category_id
 * @property string $url
 * @property string $created
 * @property string $updated
 * @property string $publish_date
 * @property string $status
 * @property string $layout
 * @property string $view
 *
 * The followings are the available columns in table 'NewsTranslate':
 * @property string $title
 * @property string $short_description
 * @property string $full_description
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 *
 * @property NewsTranslate $translate
 * @method published
 *
 * The followings are the available model relations:
 * @property NewsTranslate[] $newsTranslates
 */
class News extends CActiveRecord
{

	public $_statusLabel;

	/**
	 * Status to allow display page on the front.
	 */
	public $publishStatus = 'published';

	/**
	 * Multilingual attrs
	 */
	public $title;
	public $short_description;
	public $full_description;
	public $meta_title;
	public $meta_description;
	public $meta_keywords;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'NewsTranslate';

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return News the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'News';
	}

	public function defaultScope()
	{
		return array(
			'order'=>'publish_date DESC',
		);
	}

	public function scopes()
	{
		return array(
			'published'=>array(
				'condition'=>'publish_date <= :date AND status = :status',
				'params'=>array(
					':date'=>date('Y-m-d H:i:s'),
					':status'=>$this->publishStatus
				),
			),
		);
	}

	/**
	 * Find page by url.
	 * Scope.
	 * @param string News url
	 * @return News
	 */
	public function withUrl($url)
	{
		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'url=:url',
			'params'=>array(':url'=>$url)
		));

		return $this;
	}

	/**
	 * Filter pages by category.
	 * Scope.
	 * @param NewsCategory|int $category
	 * @return News
	 */
	public function filterByCategory($category)
	{
		if($category instanceof NewsCategory)
			$category=$category->id;

		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'category_id=:category',
			'params'=>array(':category'=>$category)
		));

		return $this;
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		return array(
			array('category_id', 'numerical', 'integerOnly'=>true),
			array('short_description, full_description', 'type', 'type'=>'string'),
			array('status', 'in', 'range'=>array_keys(self::statuses())),
			array('title, status', 'required'),
			array('url', 'LocalUrlValidator'),
			array('url', 'unique'),
			array('publish_date', 'date', 'format'=>'yyyy-MM-dd HH:mm:ss'),
			array('title, url, meta_title, meta_description, meta_keywords, publish_date, layout, view', 'length', 'max'=>255),
			// The following rule is used by search().
			array('id, title, url, short_description, full_description, meta_title, meta_description, meta_keywords, created, updated, publish_date', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'newsTranslates' => array(self::HAS_MANY, 'NewsTranslate', 'object_id'),
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
			'category'=>array(self::BELONGS_TO, 'NewsCategory', 'category_id')
		);
	}

	/**
	 * @return array
	 */
	public function behaviors()
	{
		return array(
			'STranslateBehavior'=>array(
				'class'=>'ext.behaviors.TranslateBehavior',
				'translateAttributes'=>array(
					'title',
					'short_description',
					'full_description',
					'meta_title',
					'meta_description',
					'meta_keywords',
				),
			),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'category_id' => Yii::t('admin', 'category'),
			'url' => Yii::t('admin', 'url'),
			'created' => Yii::t('admin', 'created'),
			'updated' => Yii::t('admin', 'updated'),
			'publish_date' => Yii::t('admin', 'publish_date'),
			'status' => Yii::t('admin', 'status'),
			'layout' => Yii::t('admin', 'layout'),
			'view' => Yii::t('admin', 'view'),
			//NewsTranslate
			'title' => Yii::t('admin', 'title'),
			'short_description' => Yii::t('admin', 'short_description'),
			'full_description' => Yii::t('admin', 'full_description'),
			'meta_title' => Yii::t('admin', 'meta_title'),
			'meta_keywords' => Yii::t('admin', 'meta_keywords'),
			'meta_description' => Yii::t('admin', 'meta_description'),
		);
	}

	/**
	 * @return array
	 */
	public static function statuses()
	{
		return array(
			'published'=>'Опубликован',
			'waiting'=>'Ждет одобрения',
			'draft'=>'Черновик',
			'archive'=>'Архив',
		);
	}

	/**
	 * @return mixed
	 */
	public function getStatusLabel()
	{
		$statuses = $this->statuses();
		return $statuses[$this->status];
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$criteria=new CDbCriteria;

		$criteria->with = array('translate');

		$criteria->compare('t.id',$this->id);
		$criteria->compare('t.category_id',$this->category_id);
		$criteria->compare('translate.title',$this->title,true);
		$criteria->compare('t.url',$this->url,true);
		$criteria->compare('translate.short_description',$this->short_description,true);
		$criteria->compare('translate.full_description',$this->full_description,true);
		$criteria->compare('translate.meta_title',$this->meta_title,true);
		$criteria->compare('translate.meta_description',$this->meta_description,true);
		$criteria->compare('translate.meta_keywords',$this->meta_keywords,true);
		$criteria->compare('t.created',$this->created,true);
		$criteria->compare('t.updated',$this->updated,true);
		$criteria->compare('t.publish_date',$this->publish_date,true);
		$criteria->compare('t.status',$this->status);

		// Create sorting by translation title
		$sort=new CSort;
		$sort->attributes=array(
			'*',
			'title' => array(
				'asc'   => 'translate.title',
				'desc'  => 'translate.title DESC',
			)
		);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>$sort,
			'pagination'=>array(
				'pageSize'=>20,
			)
		));
	}

	/**
	 * @return bool
	 */
	public function beforeSave()
	{
		if(!$this->created && $this->isNewRecord)
			$this->created = date('Y-m-d H:i:s');
		if(!$this->updated)
			$this->updated = date('Y-m-d H:i:s');
		if(!$this->publish_date && $this->isNewRecord)
			$this->publish_date = date('Y-m-d H:i:s');

		/*if (!Yii::app()->user->isGuest)
			$this->user_id = Yii::app()->user->id;

		if (empty($this->url))
		{
			// Create slug
			Yii::import('ext.SlugHelper.SlugHelper');
			$this->url = SlugHelper::run($this->title);
		}

		// Check if url available
		if($this->isNewRecord)
		{
			$test = Page::model()
				->withUrl($this->url)
				->count();
		}
		else
		{
			$test = Page::model()
				->withUrl($this->url)
				->count('id!=:id', array(':id'=>$this->id));
		}

		if ($test > 0)
			$this->url .= '-'.date('YmdHis');*/

		return parent::beforeSave();
	}

	/**
	 * Get url to view object on front
	 * @return string
	 */
	public function getViewUrl()
	{
		$data = array('url'=>$this->url);

		if($this->category)
			$data['url'] = $this->category->full_url . '/' . $this->url;

		return urldecode(Yii::app()->createUrl('news/news/view', $data));
	}
}
