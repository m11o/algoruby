#
# 章末問題 3.2
#

n = gets.chomp.to_i
v = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

count = 0
array.each do |item|
  next if item != v

  count += 1
end

puts count
