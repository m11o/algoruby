#
# 学んだことをコメントを書くようにする
#
# - Fixnumの最大値と最小値は
#   - max: 4611686018427387903
#   - min: -4611686018427387904
#   - ref: https://simanman.hatenablog.com/entry/2014/01/07/154357
#
n = gets.chomp.to_i
array = (0...n).map { gets.chomp.to_i }

INFINITY_NUMBER = 10000
min_value = INFINITY_NUMBER

array.each do |value|
  next if min_value < value

  min_value = value
end

puts min_value
