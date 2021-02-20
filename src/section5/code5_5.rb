def chmax(a, b)
  [a, b].max
end

n = gets.chomp.to_i
happy = (0...n).map do |i|
  sea = gets.chomp.to_i
  bug = gets.chomp.to_i
  homework = gets.chomp.to_i
  [sea, bug, homework]
end

dp = (0...n).map { [-1, -1, -1] }
(0...n).each do |i|
  today_events = happy[i]
  (0..2).each do |j|
    (0..2).each do |k|
      next if j == k

      dp[i + 1][j] = chmax dp[i + 1][j], (dp[i][j] + today_events[k])
    end
  end
end

puts dp[n - 1].max
