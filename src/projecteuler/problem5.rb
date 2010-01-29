@numbers = Array.new

index = 1

while (index <= 20)

@numbers.push(index)

index += 1
end

def divisible (number)

@numbers.each do |test|

if (number%test != 0)
return false
end

end

return true

end

current = 20

while (!divisible(current))

current += 20
end

puts current
