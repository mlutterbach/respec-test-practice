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
