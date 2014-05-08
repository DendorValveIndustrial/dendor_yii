<?php
  class TestClass extends CComponent
  {
    private $read = 'read only property';
    private $write = 'write only property';

    public function getRead()
    {
      return $this->read;
    }

    public function setWrite($value)
    {
      $this->write = $value;
    }
  }
