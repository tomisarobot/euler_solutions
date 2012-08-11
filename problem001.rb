#!/usr/bin/env ruby

def get_multiples(num, max)
	d = ((max-1) / num).floor
	return (1..d).collect{ |i| i * num }
end

numbers = [3,5]
max = 1000
multiples = []

numbers.each do |num|
	multiples += get_multiples(num, max)
end

multiples.uniq!

puts "1,"+ multiples.inject(0, :+).to_s()

