@sum_of_squares = Array.new
@square_of_sums = Array.new
sums = 0
squares = 0

def square(number)

number * number

end

index = 1

while (index <= 100)

@square_of_sums.push(index)
@sum_of_squares.push(square(index))

index += 1
end

@sum_of_squares.each do |value|
sums += value
end

@square_of_sums.each do |value|
squares += value
end

squares = square(squares)

puts squares - sums

