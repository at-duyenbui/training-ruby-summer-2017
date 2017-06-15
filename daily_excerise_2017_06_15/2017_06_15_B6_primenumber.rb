def prime_number?(number)
	result = true
	for i in 2..number/2
		if number % i == 0
			result = false
			break
		end
	end
	result
end
puts prime_number?(7)