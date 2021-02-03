#
# section 3の章末問題 3.7
#
# ビット演算子でプラス(+)が入る可能性のある場所をすべて表している。
# bit & (1 << index) でプラスがあるかどうかを判定している
#
s = gets.chomp
n = s.size

sum = 0
all_occasion_count = 2 ** (n - 1)
(0...all_occasion_count).each do |bit|
  tmp = 0
  (0...n).each do |index|
    tmp *= 10 # 桁を変える
    tmp += s[index].to_i

    if bit & (1 << index) == 0
      sum += tmp
      tmp = 0
    end
  end

  # tmp *= 10
  # tmp += s[-1].to_i
  # sum += tmp
end

puts sum
