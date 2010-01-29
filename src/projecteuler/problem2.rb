
@term = 2

def fib(term1, term2)

@term += 1

term3 = term1 + term2

digits = 0

temp = term3

while (temp > 0)

temp /= 10

digits += 1

end

if (digits > 2)

  puts "Term #{@term}"
else

      fib(term2, term3)
end


end

fib(1,1)

