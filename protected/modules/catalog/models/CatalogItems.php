<?php

// Yii::import('application.modules.news.models.CatalogItemsTranslate');
// Yii::import('application.modules.news.models.CatalogGroup');

/**
 * This is the model class for table "CatalogItems".
 *
 * The followings are the available columns in table 'CatalogItems':
 * @property integer $id
 * @property integer $group_id
 * @property integer $modification_id
 * @property string $created
 * @property string $publish
 * @property string $end_date
 * @property string $url
 * @property string $image
 * @property string $price
 * @property integer $active
 * @property integer $sorting
 * @property integer $deleted
 *
 * The followings are the available columns in table 'CatalogItemsTranslate':
 * @property string $name
 * @property string $short_description
 * @property string $full_description
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 *
 * The followings are the available model relations:
 * @property CatalogItemsTranslate[] $catalogItemsTranslates
 */
class CatalogItems extends CActiveRecord
{
	/**
	 * Status to allow display page on the front.
	 */
	public $publishStatus = 'published';

	/**
	 * Multilingual attrs
	 */
	public $name;
	public $short_description;
	public $full_description;
	public $meta_title;
	public $meta_description;
	public $meta_keywords;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'CatalogItemsTranslate';

	/**
	 * Upload image file.
	 */
	public $img;

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'CatalogItems';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('group_id, modification_id, active, sorting, deleted', 'numerical', 'integerOnly'=>true),
			array('short_description, full_description', 'type', 'type'=>'string'),
			array('url, image', 'length', 'max'=>255),
			array('price', 'length', 'max'=>12),
			array('created, publish, end_date', 'safe'),
			array('name, url', 'required'),
			array('url', 'LocalUrlValidator'),
			array('url', 'unique'),
			array('img','file', 'safe' => true, 'allowEmpty'=>true, 'types'=>'jpg, gif, png', 'maxSize' => 1048576),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, group_id, modification_id, created, publish, end_date, url, image, price, active, sorting, deleted, short_description, full_description, meta_title, meta_description, meta_keywords, name', 'safe', 'on'=>'search'),
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
			//'catalogItemsTranslates' => array(self::HAS_MANY, 'CatalogItemsTranslate', 'object_id'),
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
			'catalogGroup'=>array(self::BELONGS_TO, 'CatalogGroup', 'group_id'),
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
			'group_id' => Yii::t('admin', 'items_group'),
			'modification_id' => Yii::t('admin', 'modification'),
			'created' => Yii::t('admin', 'created'),
			'publish' => Yii::t('admin', 'publish_date'),
			'end_date' => Yii::t('admin', 'end_date'),
			'url' => Yii::t('admin', 'url'),
			'image' => Yii::t('admin', 'image'),
			'img' => Yii::t('admin', 'image'),
			'price' => Yii::t('admin', 'price'),
			'active' => Yii::t('admin', 'active'),
			'sorting' => Yii::t('admin', 'sorting'),
			'deleted' => Yii::t('admin', 'deleted'),
			//CatalogItemsTranslate
			'name' => Yii::t('admin', 'title'),
			'short_description' => Yii::t('admin', 'short_description'),
			'full_description' => Yii::t('admin', 'full_description'),
			'meta_title' => Yii::t('admin', 'meta_title'),
			'meta_keywords' => Yii::t('admin', 'meta_keywords'),
			'meta_description' => Yii::t('admin', 'meta_description'),
		);
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
		$criteria->compare('t.group_id',$this->group_id);
		$criteria->compare('t.modification_id',$this->modification_id);
		$criteria->compare('translate.name',$this->name,true);
		$criteria->compare('t.url',$this->url,true);
		$criteria->compare('translate.short_description',$this->short_description,true);
		$criteria->compare('translate.full_description',$this->full_description,true);
		$criteria->compare('translate.meta_title',$this->meta_title,true);
		$criteria->compare('translate.meta_description',$this->meta_description,true);
		$criteria->compare('translate.meta_keywords',$this->meta_keywords,true);
		$criteria->compare('t.image',$this->image,true);
		$criteria->compare('t.price',$this->price,true);
		$criteria->compare('t.created',$this->created,true);
		$criteria->compare('t.publish',$this->publish,true);
		$criteria->compare('t.end_date',$this->end_date,true);
		$criteria->compare('t.active',$this->active);
		$criteria->compare('t.sorting',$this->sorting);
		$criteria->compare('t.deleted',$this->deleted);

		// Create sorting by translation name
		$sort=new CSort;
		$sort->attributes=array(
			'*',
			'name' => array(
				'asc'   => 'translate.name',
				'desc'  => 'translate.name DESC',
			)
		);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>$sort,
			'pagination'=>array(
				'pageSize'=>10,
			)
		));

	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CatalogItems the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return bool
	 */
	public function beforeSave()
	{
		if(!$this->created && $this->isNewRecord)
			$this->created = date('Y-m-d H:i:s');

		if(!$this->publish && $this->isNewRecord)
			$this->publish = date('Y-m-d H:i:s');

		if($this->meta_title === '')
			$this->meta_title = $this->name;

		if($this->meta_description === '')
			$this->meta_description = substr($this->short_description, 0, 120);

		return parent::beforeSave();
	}

	public function beforeValidate()
	{
		$parser = new CMarkdownParser;
		$this->full_description = $parser->transform($this->full_description);

		if (empty($this->url))
		{
			Yii::import('ext.SlugHelper.SlugHelper');
			$this->url = SlugHelper::run($this->name);
		}

		return parent::beforeValidate();
	}

	public function defaultScope()
	{
		return array(
			'condition'=>'deleted=:deleted',
			'params' => array(
				':deleted' => 0,
			),
		);
	}

	public function scopes()
	{
		return array(
			'published'=>array(
				'condition'=>'active = :active',
				'params'=>array(
					':active'=>$this->active
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
	 * Filter items by group.
	 * Scope.
	 * @param CatalogGroup|int $group
	 * @return CatalogItems
	 */
	public function filterByGroup($group)
	{
		if($group instanceof CatalogGroup)
			$group_id=$group->id;

		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'group_id=:group_id',
			'params'=>array(':group_id'=>$group_id)
		));

		return $this;
	}
}
