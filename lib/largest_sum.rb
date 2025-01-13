# Given an array of numbers, calculate the largest sum of all possible blocks of consecutive elements within the array.
# The numbers will be a mix of positive and negative values.
# If all numbers of the sequence are nonnegative, the answer will be the sum of the entire array.
# If all numbers in the array are negative, your algorithm should return zero.
# Similarly, an empty array should result in a zero return from your algorithm

def largest_sum(arr)
  return 0 if arr.empty? || arr.all? { |n| n < 0 }

  max_sum = 0
  current_sum = 0

  arr.each do |int|
    current_sum = [0, current_sum + int].max
    max_sum = [max_sum, current_sum].max
  end

  max_sum
end
