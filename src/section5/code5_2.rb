n = gets.chomp.to_i
height = (0...n).map { gets.chomp.to_i }

INFINITY_NUMBER = 4611686018427387903

def chmin(current_value, new_value)
  [current_value, new_value].min
end

def rec(index, height, dp = [])
  return dp[index] unless dp[index].nil?

  return 0 if index == 0

  res = INFINITY_NUMBER
  res = chmin res, rec(index - 1, height, dp) + (height[index] - height[index - 1]).abs
  res = chmin res, rec(index - 2, height, dp) + (height[index] - height[index - 2]).abs if index > 1

  dp[index] = res
end

puts rec(n - 1, height)
