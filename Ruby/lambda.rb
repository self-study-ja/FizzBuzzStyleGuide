#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: set et sts=2 sw=2 ts=2 :

def fizzbuzz(i)
  f = "Fizz"
  b = "Buzz"
  return -> do
    puts f + b
  end if i % 15 == 0
  return -> do
    puts b
  end if i % 5 == 0
  return -> do
    puts f
  end if i % 3 == 0
  return -> do
    puts i
  end
end

def main
  lambdas = []
  for i in 0..100 do
    lambdas << fizzbuzz(i)
  end
  lambdas.each do |l|
    l.call
  end
end

if __FILE__ == $0 then
  main
end


