@longest = 0

(1..1_000_000).each do |number|

tempNumber = number

count = 0

while number > 1

  if (number.even?)

    number = number /2

else

number = 3 * number + 1
    
  end

count += 1

end

@longest = count and puts tempNumber if count > @longest

end
