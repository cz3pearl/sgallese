def sieve(top)
  sieve = []
  for i in 2 .. top
    sieve[i] = i
  end
  for i in 2 .. Math.sqrt(top)
    next unless sieve[i]
    (i*i).step(top, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact
end



primes = sieve(10000000)

puts "Done making primes"

largest = 0

primes.each do |prime|

if (600851475143%prime == 0)

largest = prime

end

end

puts largest
