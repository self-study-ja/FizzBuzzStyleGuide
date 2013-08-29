<?php

/*
 * class based fizzbuzz for PHP 5
 */

  class FizzBuzz
  {
      function __construct($x) {
        $this->number = $x;
      }

      public function fizzbuzz() {
        if ($this->number % 15 == 0) {
            $this->_fizzbuzz();
        } else if ($this->number % 5 == 0) {
            $this->_buzz();
        } else if ($this->number % 3 == 0) {
            $this->_fizz();
        } else {
            echo $this->number;
        }
        echo "\n";
      }
      private function _fizzbuzz() {
          $this->_fizz();
          $this->_buzz();
      }

      private function _fizz() {
          echo "Fizz";
      }

      private function _buzz() {
          echo "Buzz";
      }
  }

for ($i = 0;$i < 101; $i ++) {
    $fizzbuzz = new Fizzbuzz($i);
    $fizzbuzz->fizzbuzz();
}
