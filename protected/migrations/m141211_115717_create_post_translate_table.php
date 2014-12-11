<?php

class m141211_115717_create_post_translate_table extends CDbMigration
{
	public function up()
	{
		$this->createTable('post_translate', array(
			'id' => 'pk',
			'post_id' => 'integer NOT NULL',
			'language_id' => 'integer NOT NULL',
			'name' => 'string',
			'description' => 'text',
			'text' => 'text',
			'seo_title' => 'text',
			'seo_description' => 'text',
			'seo_keywords' => 'text',
		));
		$this->createIndex('fk_post_id', 'post_translate', 'post_id');
		$this->createIndex('fk_language_id', 'post_translate', 'language_id');
		$this->addForeignKey('fk_post_id', 'post_translate', 'post_id', 'post', 'id', 'CASCADE', 'CASCADE');
	}

	public function down()
	{
		$this->dropTable('post_translate');
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
