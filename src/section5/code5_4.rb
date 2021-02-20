def chmin(a, b)
  [a, b].min
end

n = gets.chomp.to_i
c = (0..n).map do |i|
  (0..n).map do |j|
    gets.chomp.to_i
  end
end

inf = 4611686018427387903
dp = (0..n).map { inf }
dp[0] = 0

(0..n).each do |i|
  j = 0
  while j < i
    dp[i] = chmin dp[i], c[j][i]
    j += 1
  end
end

puts dp[n]

