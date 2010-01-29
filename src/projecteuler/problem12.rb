def divisors(number)
  test = number
  divisors = 0
  (1..number).each do |number|
    divisors += 1 if number%test == 0
    test -= 1
  end
  return divisors
end


def triangle?(number)
test = Math.sqrt(8*number+1)
  if test == test.to_i
    return true
  else
    return false   
  end
end

def ntriangle(number)
  nth = 0
  test = (-1 + Math.sqrt(8*number+1))/2
  if test == test.to_i
    nth = test.to_i
  end
  return nth
end

triangle = 1000095724

while(!triangle?(triangle))

triangle += 1

end

puts triangle
puts ntriangle(triangle)
#puts divisors(triangle)
