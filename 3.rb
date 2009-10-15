require 'rubygems'
require 'mathn'

number = 600851475143
answer = Integer.new

puts "Please be patient. This might take a while..."

Prime.new.each do |n|
  product = (number/n).to_f
  answer = product if product == product.to_i
  break if n >= number
end

puts "The answer is: #{answer}"
