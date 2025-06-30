def stock_picker(number_array)
  number_array = number_array.split(" ")
  profit = 0
  profit_arr = [0,0]
  i = 0
  number_array.each do |a|
    j = 0
    number_array.each do |b|
      if b.to_i - a.to_i > profit && i < j
        profit_arr[0] = i
        profit_arr[1] = j
        profit = b.to_i - a.to_i
      end
      j = j + 1
    end
    i = i + 1
  end
  profit_arr
end

puts ("Please enter your numbers")
stock = gets.chomp
puts stock_picker(stock)