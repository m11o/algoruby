n = gets.chomp.to_i
array = (0...n).map { gets.chomp.to_i }

INFINITY_NUMBER = 10000
min_value = INFINITY_NUMBER

array.each do |value|
  next if min_value < value

  min_value = value
end

puts min_value
