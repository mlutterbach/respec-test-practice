def selection_sort(array)
  length = array.length
  (0...(length - 1)).each do |i|
    min = i

    (i+1...length).each do |j|
      if array[j] < array[min]
        min = j
      end
    end

    array[i], array[min] = array[min], array[i] if min != i
  end

  array
end

numbers = [99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0];
sorted_numbers = selection_sort(numbers)
puts sorted_numbers.inspect
