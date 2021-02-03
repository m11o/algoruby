n = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

MAX_INFINITY_NUMBER = 4611686018427387903
MIN_INFINITY_NUMBER = -4611686018427387903

#
# 自分の回答
# NOTE: 模範解答通り
#
max = MIN_INFINITY_NUMBER
min = MAX_INFINITY_NUMBER
array.each do |value|
  if min > value
    min = value
  end

  if max < value
    max = value
  end
end

puts max - min
