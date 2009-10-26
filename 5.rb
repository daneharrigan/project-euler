counter = 3658000 # I ran the script to this point then restarted it
number = 0

while true do
  counter = counter.next
  number = counter*20		# if it's not a multiple of 20 I dont care about it
  divides_evenly = true	

  (1..20).each do |x|
    product = number/x.to_f
    if product != product.to_i
      divides_evenly = false
      break			# break out of the loop on the first failure. This really did speed things up.
    end
  end

  # Keep me informed of the progress
  puts "Reached #{number} with no solution" if number%10000 == 0

  break if divides_evenly
end

puts "Answer: #{number}"
