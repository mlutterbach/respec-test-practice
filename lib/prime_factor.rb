require 'prime'

def prime_factors(n)
  # array = []
  # Prime.prime_division(n).to_h.each do |key, value|
  #   value == 1 ? array.push("(#{key})") : array.push("(#{key}**#{value})")
  # end
  # array.join("")

  n.prime_division.map { |key, value| value == 1 ? "(#{key})" : "(#{key}**#{value})" }.join('')
end
