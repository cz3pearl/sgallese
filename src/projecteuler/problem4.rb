def mirror(number)

current = number

stack = Array.new

  while (current > 0)

stack.push(current % 10)

current/=10

  end


 while (stack.size > 1)

front = stack.pop
stack.reverse!
back = stack.pop

      if front != back
        return false
      end

    end


return true

end

@outer = 1
@inner = 1
@largest = 0


999.times do

999.times do

@number = @outer * @inner

#puts "Multiplying #{@outer} by #{@inner} to get #{@number}"



if (mirror(@number))

if (@number > @largest)

@largest = @number

puts @largest

end

end

@inner += 1

end

@inner = 1

@outer += 1

end

puts @largest
