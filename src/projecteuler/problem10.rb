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



primes = sieve(2000000)

total = primes.inject() {|result, element| result + element}

puts total
