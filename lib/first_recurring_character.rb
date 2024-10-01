# Given an array of numbers, return the first number that repeats itself
# ex [1,2,3,4,2,3,4,5,6,7], returns 2
# ex [2,3,4,5], returns nil
# ex [2,3,4,5,6,7,5], returns 5

def first_recurring_char(input)
  input.each_with_index do |char, i|
    (i + 1...input.length).each do |j|
      return char if char == input[j]
    end
  end
  "no recurring pair found"
end

def first_recurring_char2(input)
  seen_char = {}
  input.each do |char|
    return char if seen_char[char]
    seen_char[char] = true
  end

  "no recurring pair found"
end
puts first_recurring_char([1,2,2,1,2,3,4,5,6,7])
puts first_recurring_char([2,3,4,5,6,7,5])
puts first_recurring_char([2,3,4,5])

puts first_recurring_char2([1,2,2,1,2,3,4,5,6,7])
puts first_recurring_char2([2,3,4,5,6,7,5])
puts first_recurring_char2([2,3,4,5])
