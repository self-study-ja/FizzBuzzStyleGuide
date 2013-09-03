#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: set et sts=2 sw=2 ts=2 :
#

def main
  fizzbuzz = []
  for i in 1..100
    h = {}
    h[:n] = i
    h[:f] = "Fizz" if i % 3 == 0
    h[:b] = "Buzz" if i % 5 == 0
    fizzbuzz << h
  end
  fizzbuzz.each do |fb|
    if fb[:f] or fb[:b] then
      puts "#{fb[:f]}#{fb[:b]}"
    else
      puts fb[:n]
    end
  end
end

if __FILE__ == $0 then
  main
end


