# given an array with intergers and a sum
# find if there is a pair solution that gives that sum number
# return true/false
# [1,2,3,9] sum = 8 return false
# [1,2,4,4] sum = 8 return true
require 'set'

def has_pair_with_sum(array, sum)
  seen_numbers = {}

  array.each do |num|
    complement = sum - num
    return true if seen_numbers[complement]

    seen_numbers[num] = true
  end

  false
end

# Better
def has_pair_with_sum2(arr, sum)
  my_set = Set.new
  arr.each do |num|
    return true if my_set.include?(num)
    my_set.add(sum - num)
  end
  false
end

puts has_pair_with_sum2([6, 4, 3, 2, 1, 7], 9)

puts has_pair_with_sum([1, 2, 3, 9], 8) # => false
puts has_pair_with_sum([1, 2, 4, 4], 8) # => true
