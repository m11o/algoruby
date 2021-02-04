def func(n, current, use, counter = 0)
  return counter if current > n
  counter + 1 if use == 0b111

  counter = func(n, current * 10 + 7, use | 0b001, counter)
  counter = func(n, current * 10 + 5, use | 0b010, counter)
  func(n, current * 10 + 3, use | 0b100, counter)
end

n = gets.chomp.to_i

puts func(n, 0, 0)
