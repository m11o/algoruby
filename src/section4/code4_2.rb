def calc_tri(n, memo = [])
  return 0 if n == 0 || n == 1
  return 1 if n == 2
  return memo[n] unless memo[n].nil?

  memo[n] = calc_tri(n - 1, memo) + calc_tri(n - 2, memo) + calc_tri(n - 3, memo)
end

n = gets.chomp.to_i

puts calc_tri n
