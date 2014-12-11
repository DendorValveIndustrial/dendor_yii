<?php

/**
 * This is the model class for table "post".
 *
 * The followings are the available columns in table 'post':
 * @property integer $id
 * @property string $path
 * @property string $date_created
 * @property string $date_updated
 * @property string $date_publish
 * @property string $date_end
 * @property string $img_small
 * @property string $img_large
 * @property integer $active
 * @property integer $sorting
 */
class Post extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'post';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('path, date_created, date_updated, date_publish, date_end, img_small, img_large', 'required'),
			array('active, sorting', 'numerical', 'integerOnly'=>true),
			array('path, img_small, img_large', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, path, date_created, date_updated, date_publish, date_end, img_small, img_large, active, sorting', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'path' => 'Path',
			'date_created' => 'Date Created',
			'date_updated' => 'Date Updated',
			'date_publish' => 'Date Publish',
			'date_end' => 'Date End',
			'img_small' => 'Img Small',
			'img_large' => 'Img Large',
			'active' => 'Active',
			'sorting' => 'Sorting',

			//PostTranslate
			'language_id' => 'Language',
			'name' => 'Name',
			'description' => 'Description',
			'text' => 'Text',
			'seo_title' => 'Seo Title',
			'seo_description' => 'Seo Description',
			'seo_keywords' => 'Seo Keywords',
			//End PostTranslate

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

		$criteria->compare('id',$this->id);
		$criteria->compare('path',$this->path,true);
		$criteria->compare('date_created',$this->date_created,true);
		$criteria->compare('date_updated',$this->date_updated,true);
		$criteria->compare('date_publish',$this->date_publish,true);
		$criteria->compare('date_end',$this->date_end,true);
		$criteria->compare('img_small',$this->img_small,true);
		$criteria->compare('img_large',$this->img_large,true);
		$criteria->compare('active',$this->active);
		$criteria->compare('sorting',$this->sorting);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	protected function afterSave(){
		parent::afterSave();
		if($this->inNewRecord){
			$post_translate = new PostTranslate;

			$post_translate->post_id = $this->id;
			$post_translate->language_id = $this->language_id;
			$post_translate->name = $this->name;
			$post_translate->description = $this->description;
			$post_translate->text = $this->text;
			$post_translate->seo_title = $this->seo_title;
			$post_translate->seo_description = $this->seo_description;
			$post_translate->seo_keywords = $this->seo_keywords;
		}
		else{
			PostTranslate::model()->updateAll(
				array(
					'post_id' => $this->id,
					'language_id' => $this->language_id,
					'name' => $this->name,
					'description' => $this->description,
					'text' => $this->text,
					'seo_title' => $this->seo_title,
					'seo_description' => $this->seo_description,
					'seo_keywords' => $this->seo_keywords,
				),
				'post_id=:post_id',
				array(
					':post_id' => $this->id
				)
			);
		}
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Post the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
