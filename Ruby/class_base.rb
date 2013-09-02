#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: set et sts=2 sw=2 ts=2 :
#

class FizzBuzz
  def initialize(n)
    @n = n
  end

  def fizzbuzz
    return _fizzbuzz if @n % 15 == 0
    return _buzz if @n % 5 == 0
    return _fizz if @n % 3 == 0
    return @n.to_s
  end

  private
  
  def _fizzbuzz
    _fizz + _buzz
  end

  def _fizz
    "Fizz"
  end
  
  def _buzz
    "Buzz"
  end

end

def main
  for i in 1..100 do
    fb = FizzBuzz.new i
    puts fb.fizzbuzz
  end
end

if __FILE__ == $0 then
  main
end


