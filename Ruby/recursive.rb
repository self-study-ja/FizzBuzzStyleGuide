#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: set et sts=2 sw=2 ts=2 :
#

def fizzbuzz(n)
  f, b = %w(Fizz Buzz)
  return if n == 0
  i = 0
  [15, 5, 3].each do |x|
    if n % x == 0 then
      i = x
      break
    end
  end

  fizzbuzz(n - 1)

  case i
  when 15
    puts f + b
  when 5
    puts b
  when 3
    puts f
  else
    puts n
  end
end

if __FILE__ == $0 then
  fizzbuzz(100)
end


