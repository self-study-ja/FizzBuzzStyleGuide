#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: set et sts=2 sw=2 ts=2 :
#

module Fizz
  def to_s
    "Fizz"
  end
end

module Buzz
  def to_s
    "Buzz"
  end
end

module FizzBuzz
  def to_s
    Fizz.to_s + Buzz.to_s
  end
end



def main
  for i in 1..100 do
    m = nil
    if i % 15 == 0 then
      m = FizzBuzz
    elsif i % 5 == 0 then
      m = Buzz
    elsif i % 3 == 0 then
      m = Fizz
    else
      # m = Number
    end

    n = i.to_s
    n.singleton_class.send(:include, m) if m
    puts n.to_s
  end
end

if __FILE__ == $0 then
  main
end


