palindrome = 0

999.downto(100) do |x|
  999.downto(100) do |y|
    product = x*y

    palindrome = product if product.to_s == product.to_s.reverse && product>palindrome
  end
end

puts palindrome
