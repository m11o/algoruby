#
# 計算量が多すぎてコケてしまいます。
#
def func(amount, correct, array, memo = [])
  if amount == 0
    return true if correct == 0

    return false
  end

  memo[amount] = {} if memo[amount].nil?

  return memo[amount][correct] unless memo[amount][correct].nil?

  return true if memo[amount][correct] = func(amount - 1, correct, array)
  return true if memo[amount][correct - array[amount - 1]] = func(amount, correct - array[amount - 1], array)

  false
end

n = gets.chomp.to_i
w = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

print array, "\n"

puts func(n, w, array) ? 'Yes' : 'No'

