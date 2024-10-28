def find_even_index(arr)
  total_sum = arr.sum
  left_sum = 0
  arr.each_with_index do |num, index|
    right_sum = total_sum - left_sum - num

    if left_sum == right_sum
      return index
    end
    left_sum += num
  end
  -1
end
