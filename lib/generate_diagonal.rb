# Create a function that returns an array containing the first l numbers from the nth diagonal of Pascal's triangle.
# n = 0 should generate the first diagonal of the triangle (the ones).
# The first number in each diagonal should be 1.
# If l = 0, return an empty array.
# Both n and l will be non-negative integers in all test cases.


def fact(n)
  return 1 if n == 0
  (1..n).reduce(:*)
end

def pascal(n, k)
  fact(n) / (fact(k) * fact(n - k))
end

def generate_diagonal(n, l)
  return [] if l == 0

  result = []
  (0...l).each do |i|
    result.push(pascal(n + i, i))
  end

  result
end
