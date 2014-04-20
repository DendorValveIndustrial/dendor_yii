<?php

class m140420_171718_create_language_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('language', array(
			'id' => 'pk',
			'name' => 'string NOT NULL',
			'code' => 'string NOT NULL',
			'locate' => 'string NOT NULL',
			'default' => 'boolean NOT NULL',
			'img_flag' => 'string NOT NULL',
		));
	}

	public function down()
	{
		$this->dropTable('language');
	}

	/*
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
	}

	public function safeDown()
	{
	}
	*/
}
