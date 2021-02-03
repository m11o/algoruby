n = gets.chomp.to_i
k = gets.chomp.to_i

#
# 模範解答
# minも含めてループすることに注意
#
count = 0
min = n > k ? k : n
(0..min).each do |x|
  (0..min).each do |y|
    z = n - x - y

    count += 1 if z >= 0 && z <= k
  end
end

puts count
