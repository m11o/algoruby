n = gets.chomp.to_i
height = (0...n).map { gets.chomp.to_i }

dp = []
dp[0] = 0

(1...n).each do |index|
  if index == 1
    dp[index] = (height[index] - height[index - 1]).abs
  else
    one_step = dp[index - 1] + (height[index] - height[index - 1]).abs
    two_step = dp[index - 2] + (height[index] - height[index - 2]).abs

    dp[index] = [one_step, two_step].min
  end
end

puts dp[n - 1]
