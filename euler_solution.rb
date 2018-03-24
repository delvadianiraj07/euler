#!/usr/bin/env ruby
require 'mathn'
print "Please enter a number: "
end_boundry = gets
primes = Prime.take_while {|p| p < end_boundry.to_i }
result_series = []
sum = 0
primes[0..10].each_with_index { |p, i|
  j = i
  begin
    j += 1
    cons = primes[i..j]
    sum = cons.reduce(:+)
    if sum.prime? && cons.length > result_series.length && sum < end_boundry.to_i
      result_series = cons
    end
  end while sum < end_boundry.to_i
}
puts result_series.reduce(:+)