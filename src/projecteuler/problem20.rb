
@total = 1

(1..100).each do |element|

@total *= element

end

puts @total

@sum = 0

@total.to_s.each_char do |digit|

@sum += digit.to_i

end

puts @sum
