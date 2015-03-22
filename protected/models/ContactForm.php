<?php

/**
 * ContactForm class.
 * ContactForm is the data structure for keeping
 * contact form data. It is used by the 'contact' action of 'SiteController'.
 */
class ContactForm extends CFormModel
{
	public $name;
	public $email;
	public $tel;
	public $subject;
	public $body;
	public $verifyCode;

	/**
	 * Declares the validation rules.
	 */
	public function rules()
	{
		return array(
			// name, email, subject and body are required
			array('name, email, tel, subject, body, verifyCode', 'required'),
			// email has to be a valid email address
			array('email', 'email'),
			// verifyCode needs to be entered correctly
			array('verifyCode', 'captcha', 'allowEmpty'=>!CCaptcha::checkRequirements()),
		);
	}

	/**
	 * Declares customized attribute labels.
	 * If not declared here, an attribute would have a label that is
	 * the same as its name with the first letter in upper case.
	 */
	public function attributeLabels()
	{
		return array(
			'name'=>Yii::t('app','Name_surname'),
			'email'=>Yii::t('app','Email'),
			'tel'=>Yii::t('app','Phone number'),
			'subject'=>Yii::t('app','Subject'),
			'body'=>Yii::t('app','Message'),
			'verifyCode'=>Yii::t('app','Verification Code'),
		);
	}

	/**
	 * @return array
	 */
	public static function subjects()
	{
		return array(
			'sales'=>Yii::t('app','Sales'),
			'support'=>Yii::t('app','Support'),
			'other'=>Yii::t('app','Other'),
		);
	}

	/**
	 * @return mixed
	 */
	public function getSubjectLabel()
	{
		$subject = $this->subjects();
		return $subjects[$this->subject];
	}

}
