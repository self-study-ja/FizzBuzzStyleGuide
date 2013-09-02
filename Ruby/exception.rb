#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: set et sts=2 sw=2 ts=2 :


class FizzException < Exception
  def initialize
    super "Fizz"
  end
end

class BuzzException < Exception
  def initialize
    super "Buzz"
  end
end

class FizzBuzzException < Exception
  def initialize
    super "FizzBuzz"
  end
end

def fizzbuzz(i)
  raise FizzBuzzException.new if i % 15 == 0
  raise BuzzException.new if i % 5 == 0
  raise FizzException.new if i % 3 == 0
  raise Exception.new i
end

def main
  for i in 0..100 do
    begin
      fizzbuzz i
    rescue Exception => e
      puts e.message
    end
  end
end

if __FILE__ == $0 then
  main
end


