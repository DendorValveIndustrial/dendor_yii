<?php

class m140419_114618_create_infopage_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('infopage', array(
			'id' => 'pk',
			'infopage_category_id' => 'integer NOT NULL DEFAULT 0',
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
		$this->dropTable('infopage');
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
