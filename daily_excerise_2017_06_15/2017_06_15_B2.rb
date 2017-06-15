def series_of_number(number)
	sum = 0
	if(number == 0) then puts "#{0}" 
	elsif number < 0 then puts "#{number} < 0"
	else
		for i in 0..number 
			sum += i
			print "#{sum} "
		end
	end
end
series_of_number(-15)