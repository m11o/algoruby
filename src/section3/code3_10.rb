n = gets.chomp.to_i

array = (0...n).map { gets.chomp.to_i }

count = 0
all_even = true
while all_even do
  array.map! do |item|
    all_even = false if item % 2 != 0

    item / 2
  end

  count += 1 if all_even
end

puts count
