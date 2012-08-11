#!/usr/bin/env ruby

def find
	for i in 0..1000
	for j in (i+1)..(1000-i)
		k = 1000 - i - j
		if k <= j
			break
		end
		if i*i+j*j==k*k
			return i,j,k
		end
	end
	end
end

i,j,k = find

puts "9,"+ (i*j*k).to_s()

