<?php

class m141211_115255_create_post_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('post', array(
			'id' => 'pk',
			'path' => 'string NOT NULL',
			'date_created' => 'datetime NOT NULL',
			'date_updated' => 'datetime NOT NULL',
			'date_publish' => 'datetime NOT NULL',
			'date_end' => 'datetime NOT NULL',
			'img_small' => 'string NOT NULL',
			'img_large' => 'string NOT NULL',
			'active' => 'boolean NOT NULL DEFAULT 1',
			'sorting' => 'integer NOT NULL DEFAULT 0',
		));
	}

	public function down()
	{
		$this->dropTable('post');
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
