<?php

/**
 * This is the model class for table "Pages".
 *
 * The followings are the available columns in table 'Pages':
 * @property integer $id
 * @property string $system_name
 * @property string $layout
 * @property string $url
 * @property string $created
 * @property string $updated
 * @property string $status
 * @property string $image
 *
 * The followings are the available columns in table 'PageTranslate':
 * @property string $title
 * @property string $short_description
 * @property string $full_description
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 *
 * The followings are the available model relations:
 * @property PageTranslate[] $pageTranslates
 */
class Pages extends CActiveRecord
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
	public $name;
	public $short_description;
	public $full_description;
	public $meta_title;
	public $meta_description;
	public $meta_keywords;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'PageTranslate';

	/**
	 * Upload image file.
	 */
	public $img;

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'Pages';
	}

	/*public function defaultScope()
	{
		return array(
			'order'=>'id ASC',
		);
	}
*/
	public function scopes()
	{
		return array(
			'published'=>array(
				'condition'=>'status = :status',
				'params'=>array(
					':status'=>$this->publishStatus
				),
			),
		);
	}

	/**
	 * Find page by url.
	 * Scope.
	 * @param string Page url
	 * @return Page
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
	 * Find page by system_name.
	 * Scope.
	 * @param string Page system_name
	 * @return Page
	 */
	public function pageCategory($system_name)
	{
		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'system_name=:system_name',
			'params'=>array(':system_name'=>$system_name)
		));

		return $this;
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('system_name, layout, url, image, title, name, meta_title, meta_description, meta_keywords', 'length', 'max'=>255),
			array('short_description, full_description', 'type', 'type'=>'string'),
			array('status', 'in', 'range'=>array_keys(self::statuses())),
			array('system_name, title, status', 'required'),
			array('url', 'LocalUrlValidator'),
			array('system_name, url', 'unique'),
			array('created', 'safe'),
			array('img','file', 'safe' => true, 'allowEmpty'=>true, 'types'=>'jpg, gif, png', 'maxSize' => 1048576),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, system_name, url, created, updated, status, image', 'safe', 'on'=>'search'),
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
			//'pageTranslates' => array(self::HAS_MANY, 'PageTranslate', 'object_id'),
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
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
					'name',
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
			'system_name' => Yii::t('admin','system_name'),
			'layout' => Yii::t('admin','layout'),
			'url' => Yii::t('admin','url'),
			'created' => Yii::t('admin','created'),
			'updated' => Yii::t('admin','updated'),
			'status' => Yii::t('admin','status'),
			'image' => Yii::t('admin','image'),
			//PageTranslate
			'title' => Yii::t('admin', 'title'),
			'name' => Yii::t('admin', 'name'),
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
			'published'=>Yii::t('admin','published'),
			'waiting'=>Yii::t('admin','waiting'),
			'draft'=>Yii::t('admin','draft'),
			'archive'=>Yii::t('admin','archive'),
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
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$criteria=new CDbCriteria;

		$criteria->with = array('translate');

		$criteria->compare('t.id',$this->id);
		$criteria->compare('t.system_name',$this->system_name);
		$criteria->compare('translate.title',$this->title,true);
		$criteria->compare('translate.name',$this->name,true);
		$criteria->compare('t.url',$this->url,true);
		$criteria->compare('translate.short_description',$this->short_description,true);
		$criteria->compare('translate.full_description',$this->full_description,true);
		$criteria->compare('translate.meta_title',$this->meta_title,true);
		$criteria->compare('translate.meta_description',$this->meta_description,true);
		$criteria->compare('translate.meta_keywords',$this->meta_keywords,true);
		$criteria->compare('t.created',$this->created,true);
		$criteria->compare('t.updated',$this->updated,true);
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
		$this->updated = date('Y-m-d H:i:s');

		if(!$this->created)
			$this->created = date('Y-m-d H:i:s');

		if($this->meta_title === '')
			$this->meta_title = $this->title;

		if($this->meta_description === '')
			$this->meta_description = substr($this->short_description, 0, 120);

		if (empty($this->url) && $this->isNewRecord)
			$this->url = $this->system_name;

		return parent::beforeSave();
	}

	public function beforeValidate()
	{
		$parser = new CMarkdownParser;
		$this->full_description = $parser->transform($this->full_description);
		return parent::beforeValidate();
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Pages the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * Get url to view object on front
	 * @return string
	 */
	public function getViewUrl()
	{
		return ($this->url != 'home') ? urldecode(Yii::app()->createUrl($this->url)).'.html' : Yii::app()->createUrl('site/index');
	}
}
