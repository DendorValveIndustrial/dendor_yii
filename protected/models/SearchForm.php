<?php
class SearchForm extends CFormModel
{
    public $q;

    public function rules()
    {
      return array(
        array('q', 'required'),
      );
    }
}
