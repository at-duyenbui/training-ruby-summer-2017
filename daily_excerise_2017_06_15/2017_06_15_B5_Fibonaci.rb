def fibonacci(n)
	(n == 1 || n == 2)? fn = 1 : fn = fibonacci(n-1) + fibonacci(n-2)
	fn
end

puts fibonacci(7)