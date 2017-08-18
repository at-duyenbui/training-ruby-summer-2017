def perfect_number?(number)
	sum = 0
	i = 1
	while(i < number)
		sum += i if number % i == 0 
		i += 1
	end
	(sum == number)? result = true : result = false
	result
end
puts perfect_number?(7)