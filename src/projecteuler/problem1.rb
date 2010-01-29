current3 = 3
current5 = 5
total = 0
myArray = Array.new


while (current3 < 1000)do
myArray.push(current3)
current3 += 3
  end

while (current5 < 1000)do
myArray.push(current5)
current5 += 5
  end

myArray.uniq!

myArray.each do |value|
total += value
end

puts total
