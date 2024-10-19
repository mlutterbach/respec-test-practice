# A Narcissistic Number (or Armstrong Number) is a positive number which is the sum of its own digits,
# each raised to the power of the number of digits in a given base (10)

def narcissistic?(value)
  value.digits.map {|dig| dig ** value.digits.length }.reduce(:+) == value
end
