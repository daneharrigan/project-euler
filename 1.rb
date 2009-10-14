require 'rubygems'
require 'activesupport'

numbers = []

(1..999).each do |i|
  numbers << i if i%3 == 0 or i%5 == 0
end

puts numbers.sum
