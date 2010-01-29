@term = 2
@digits = 0

@term1 = 1
@term2 = 1
@term3 = 0

def fib()

@digits = 0

@term += 1

@term3 = @term1 + @term2


temp = @term3

while (temp > 0)

temp /= 10

@digits += 1

end

if (@digits > 999)

  puts "Term #{@term}"

end

@term1 = @term2
@term2 = @term3

end

while (@digits < 1000)

fib()

end

