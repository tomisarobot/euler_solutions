#!/usr/bin/env ruby

def find(max)

	c = 0
	ib = 0
	ie = (max/3).floor

	for i in ib..ie
		jb = i+1
		je = ((max-i-1)/2).floor
		for j in jb..je
			c += 1
			k = max - i - j
			if k <= j
				break
			end
			if i*i+j*j==k*k
				return i,j,k,c
			end
		end
	end

	raise 'didn\'t find solution after '+ c.to_s() +' iterations'
end

i,j,k,c = find(1000)

puts "9,"+ (i*j*k).to_s()

