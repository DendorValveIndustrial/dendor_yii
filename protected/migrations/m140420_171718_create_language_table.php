<?php

class m140420_171718_create_language_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('languages', array(
			'id' => 'pk',
			'name' => 'string NOT NULL',
			'code' => 'string NOT NULL',
			'locale' => 'string NOT NULL',
			'default' => 'boolean NOT NULL DEFAULT 1',
			'img_flag' => 'string',
			'active' => 'boolean NOT NULL DEFAULT 1',
		));

		$this->insert('language', array(
			'name' => 'Poland',
			'code' => 'pl',
			'locale' => 'pl_PL',
		));
	}

	public function down()
	{
		$this->dropTable('languages');
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
