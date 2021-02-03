n = gets.chomp.to_i
k = gets.chomp.to_i

a_array = (0...n).map { gets.chomp.to_i }
b_array = (0...n).map { gets.chomp.to_i }

INFINITY_NUMBER = 4611686018427387903
min_value = INFINITY_NUMBER

a_array.each do |a_item|
  b_array.each do |b_item|
    sum = a_item + b_item
    next if sum < k
    next if sum > min_value

    min_value = sum
  end
end

puts min_value
