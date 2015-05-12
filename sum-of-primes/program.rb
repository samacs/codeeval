limit = 1_000

primes = []
sum = 0
i = 2
while primes.size < limit
  primes << i if (2...i).none? { |d| (i % d).zero? }
  i += 1
end
primes.each { |n| sum += n }
puts sum
