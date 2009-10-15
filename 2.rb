require 'rubygems'
require 'activesupport'

numbers = []
even_numbers = []

numbers << 1
numbers << 2

while(true) do
  number = numbers.last+numbers[numbers.length-2]
  if number < 4_000_000
    numbers << number
  else
    break
  end
end

numbers.each { |n| even_numbers << n if n.even? }

puts even_numbers.sum
