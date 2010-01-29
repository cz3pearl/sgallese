(1..999).each do |a|

(1..999).each do |b|

a_square = a * a
b_square = b * b
c_square = a_square + b_square

if (a_square < b_square && b_square < c_square)

if (Math.sqrt(c_square) + a + b == 1000)

  puts "Found #{a} and #{b} and #{Math.sqrt(c_square)} for #{Math.sqrt(c_square) * a * b}"

end


end

end

end
