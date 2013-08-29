<?php
    function _0($i) {
        echo $i;
    }

    function _1($i) {
        echo "Fizz";
    }

    function _2($i) {
        echo "Buzz";
    }

    function _3($i) {
        echo _1($i);
        echo _2($i);
    }

    for ($i = 0; $i < 101; $i++) {
        $fizzbuzz = 0;
        if ($i % 3 === 0) {
            $fizzbuzz++;
        }
        if ($i % 5 === 0) {
            $fizzbuzz++;
            $fizzbuzz++;
        }
        $fizzbuzz = (string) $fizzbuzz;
        $fizzbuzz =  '_' . $fizzbuzz;
        $fizzbuzz($i);
        echo "\n";
    }
