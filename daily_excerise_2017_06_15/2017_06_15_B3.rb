def get_squares(array)
	array.uniq
	arr_ = Array.new
	array.each do |x|
		i = Math.sqrt(x).to_i
		arr_.push("#{i*i}") if i*i == x
	end
	arr_.sort
end
puts get_squares([1, 25, 16, 10])