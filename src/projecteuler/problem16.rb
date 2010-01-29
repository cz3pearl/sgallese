current =  2 ** 1000

@stack = Array.new

  while (current > 0)

@stack.push(current % 10)

current/=10

  end

@total = 0

 while (!@stack.empty?)

@total += @stack.pop

end

puts @total
