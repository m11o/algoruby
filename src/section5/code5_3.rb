def chmin(a, b)
  [a, b].min
end

inf = 4611686018427387903

s = gets.chomp
t = gets.chomp

dp = (0..s.size).map { (0..t.size).map { inf } }
dp[0][0] = 0

(0..s.size).each do |i|
  (0..t.size).each do |j|
    if (i > 0 && j > 0)
      if s[i - 1] == t[j - 1]
        dp[i][j] = chmin(dp[i][j], dp[i - 1][j - 1])
      else
        dp[i][j] = chmin(dp[i][j], dp[i - 1][j - 1] + 1)
      end
    end

    dp[i][j] = chmin(dp[i][j], dp[i - 1][j] + 1) if (i > 1)
    dp[i][j] = chmin(dp[i][j], dp[i][j - 1] + 1) if (j > 1)

    print "i: #{i}, j: #{j}, dp[i][j]: #{dp[i][j].inspect}, dp[i-1][j-1]: #{dp[i - 1][j - 1].inspect}", "\n"
  end
end

puts dp[s.size][t.size]


