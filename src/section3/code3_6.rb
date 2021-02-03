n = gets.chomp.to_i
w = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

exists = false
(2**n).times do |bit|
  sum = 0
  n.times do |index|
    next if (bit & (1 << index)) == 0

    sum += array[index]
  end

  exists = true if sum == w
end

puts exists ? 'Yes' : 'No'
