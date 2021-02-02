n = gets.chomp.to_i
v = gets.chomp.to_i

array = []

(0..(n - 1)).each { array << gets.chomp.to_i }

found_id = nil
array.each_with_index do |item, index|
  next if item != v

  found_id = index
end

puts found_id
