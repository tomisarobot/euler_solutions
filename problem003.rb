#!/usr/bin/env ruby

def is_prime(n)
	for i in 2..Math.sqrt(n).floor
		if n % i == 0
			return false
		end
	end
	return true
end

def highest_prime_factor(n)
	m = Math.sqrt(n).floor
	while m > 1
		if n % m == 0 && is_prime(m)
			return m
		end
		m -= 1
	end
	raise 'Couldn\'t find a highest prime factor for '+ n
end

n = 600851475143
p = highest_prime_factor(n)

puts "3,"+ p.to_s()

