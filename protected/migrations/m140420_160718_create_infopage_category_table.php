<?php

class m140420_160718_create_infopage_category_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('infopage_category', array(
			'id' => 'pk',
			'parent_id' => 'integer NOT NULL DEFAULT 0',
			'path' => 'string  NOT NULL',
			'img_small' => 'string NOT NULL',
			'img_large' => 'string NOT NULL',
			'active' => 'boolean NOT NULL DEFAULT 1',
			'sorting' => 'integer NOT NULL DEFAULT 0',
		));
	}

	public function down()
	{
		$this->dropTable('infopage_category');
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
