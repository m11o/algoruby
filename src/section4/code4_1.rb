#
# 計算量が多すぎてコケてしまいます。
#
def func(amount, correct, array)
  if amount == 0
    return true if correct == 0

    return false
  end

  return true if func(amount - 1, correct, array)
  return true if func(amount, correct - array[amount - 1], array)

  false
end

n = gets.chomp.to_i
w = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

print array, "\n"

puts func(n, w, array) ? 'Yes' : 'No'
