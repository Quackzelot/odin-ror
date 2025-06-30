def bubble_sort (number_array)
  n = number_array.length - 1
  loop do
    switched = false
    for i in 0..n-1
      if number_array[i] > number_array[i+1]
        saved = number_array[i+1]
        number_array[i+1] = number_array[i]
        number_array[i] = saved
        switched = true
      end
    end
    n -= 1
    break if switched == false
  end
  number_array
end

puts ("Please enter your numbers")
unsorted_list = gets.chomp
puts bubble_sort(unsorted_list)