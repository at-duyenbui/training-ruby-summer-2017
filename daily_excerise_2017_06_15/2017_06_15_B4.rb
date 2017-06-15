def century_from_year(year)
	century = 0
	(year % 100 != 0) ? century += year/100 + 1 : century += year/100
end
puts century_from_year(124)