n = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

#
# 自分の回答↓
#
INFINITY_NUMBER = 4611686018427387903
min = INFINITY_NUMBER
min_index = nil
array.each_with_index do |item, index|
  next if min < item

  min = item
  min_index = index
end

second_min = INFINITY_NUMBER
array.each_with_index do |item, index|
  next if index == min_index
  next if second_min < item

  second_min = item
end

puts second_min

#
# 模範解答↓
#
min = INFINITY_NUMBER
second_min = INFINITY_NUMBER

array.each do |item|
  if item < min
    second_min = min
    min = item
  elsif item < second_min
    second_min = item
  end
end

puts second_min
